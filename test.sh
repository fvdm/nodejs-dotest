#!/bin/bash
result=0
libpath="$(pwd)"
nodebin="$libpath/node_modules/.bin"
eslintBin="$nodebin/eslint"
nycBin="$nodebin/nyc"
coverallsBin="$nodebin/coveralls"
codacyBin="$nodebin/codacy-coverage"
skipCoverage=$DOTEST_NOCOV

if [[ -z "$skipCoverage" ]]; then
  skipCoverage=false
fi

export GIT_REPO_SLUG="$TRAVIS_REPO_SLUG"

# Find reposlug
if [ "$GIT_REPO_SLUG" == "" ]; then
  export GIT_REPO_SLUG=$(git ls-remote --get-url | sed 's/.*[\/|@]github.com[:\/]\(.*\).git/\1/')
fi

repourl="https://github.com/$GIT_REPO_SLUG"

# List commits since last release
thisTag=$(git describe --tags --abbrev=0)
lastTag=$(git describe --tags --abbrev=0 HEAD^)

if [ "$thisTag" == "$lastTag" ]; then
  thisTag="HEAD"
fi

echo "Commits since $lastTag to $thisTag"
echo
echo "$repourl/compare/$lastTag...$thisTag"
echo
git log $lastTag..HEAD \
  --oneline \
  --pretty=format:'%C(green)%h%Creset -%C(red)%d%Creset %C(yellow)%s%Creset %C(blue)(%cr)' \
  --abbrev-commit
echo
echo

# ESLint
if [[ -x "$eslintBin" ]]; then
  echo "Running ESLint..."
  "$eslintBin" *.js || result=1

  if [[ -d ./lib ]]; then
    "$eslintBin" --no-error-on-unmatched-pattern ./lib/ || result=1
  fi

  if [[ -d ./test ]]; then
    "$eslintBin" --no-error-on-unmatched-pattern ./test/ || result=1
  fi

  echo
else
  result=1
  echo -e "\033[31mERROR:\033[0m ESLint is not installed"
  echo "Run 'npm i' to install all dependencies."
  echo
fi

# Run test script without coverage
if [[ "$skipCoverage" == "true" ]]; then

  cd "$libpath"
  node test.js || result=1

# Run test script with coverage
elif [[ -x "$nycBin" ]]; then

  cd "$libpath"

  "$nycBin" \
  --clean \
  --check-coverage \
  --branches=85 \
  --lines=85 \
  --functions=85 \
  --statements=85 \
  --all \
  --exclude='**/test.js' \
  --exclude='**/example.js' \
  --exclude='**/coverage/**' \
  --exclude='**/packages/**' \
  --exclude='**/.git/**' \
  --reporter=lcov \
  --reporter=text \
  node test.js || result=1

  # Submit coverage to Coveralls.io
  if [[ "$TRAVIS" == "true" ]]; then
    if [[ -x "$coverallsBin" ]]; then
      cd "$libpath"

      echo
      echo "Sending coverage report to Coveralls..."
      "$coverallsBin" < "$(pwd)/coverage/lcov.info" || result=1
      echo
    else
      result=1
      echo -e "\033[31mERROR:\033[0m Coveralls is not installed"
      echo "Run 'npm i' to install all dependencies."
      echo
    fi
  fi

# Coverage tool 'nyc' not availablw
else

  result=1
  echo -e "\033[31mERROR:\033[0m nyc is not installed"
  echo "Run 'npm i' to install all dependencies."
  echo

fi

# All done, return exit status
exit $result
