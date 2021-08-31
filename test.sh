#!/bin/bash
result=0
libpath="$(pwd)"
nodebin="$libpath/node_modules/.bin"
eslintBin="$nodebin/eslint"
nycBin="$nodebin/nyc"
coverallsBin="$nodebin/coveralls"
skipCoverage=$DOTEST_NOCOV
minimalCoverage=$DOTEST_MINCOV

if [[ -z "$skipCoverage" ]]; then
  skipCoverage=false
fi

if [[ -z "$minimalCoverage" ]]; then
  minimalCoverage=85
fi

export GIT_REPO_SLUG="$TRAVIS_REPO_SLUG"

# Find reposlug
if [ "$GIT_REPO_SLUG" == "" ]; then
  export GIT_REPO_SLUG=$(git ls-remote --get-url | sed 's/.*[\/|@]github.com[:\/]\(.*\).git/\1/')
fi

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
  --branches=$minimalCoverage \
  --lines=$minimalCoverage \
  --functions=$minimalCoverage \
  --statements=$minimalCoverage \
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

# Coverage tool 'nyc' not available
else

  result=1
  echo -e "\033[31mERROR:\033[0m nyc is not installed"
  echo "Run 'npm i' to install all dependencies."
  echo

fi

# All done, return exit status
exit $result
