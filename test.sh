#!/bin/bash
result=0
libpath="$(pwd)"
nodebin="$libpath/node_modules/.bin"
eslintBin="$nodebin/eslint"
istanbulBin="$nodebin/istanbul"
codacyBin="$nodebin/codacy-coverage"
nspBin="$nodebin/nsp"

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
  "$eslintBin" *.js lib/ test/ || result=1
  echo
else
  result=1
  echo -e "\033[31mERROR:\033[0m ESLint is not installed"
  echo "Run 'npm i' to install all dependencies."
  echo
fi

# Run test script with coverage
if [[ -x "$istanbulBin" ]]; then
  "$istanbulBin" cover test.js || result=1
else
  result=1
  echo -e "\033[31mERROR:\033[0m Istanbul is not installed"
  echo "Run 'npm i' to install all dependencies."
  echo
fi

# Submit coverage to Coveralls.io
if [[ "$TRAVIS" == "true" ]]; then
  if [[ -x "$codacyBin" ]]; then
    echo
    echo "Sending coverage report to Codacy..."
    $codacyBin < $(pwd)/coverage/lcov.info || result=1
    echo
  else
    result=1
    echo -e "\033[31mERROR:\033[0m codacy-coverage is not installed"
    echo "Run 'npm i' to install all dependencies."
    echo
  fi
fi

# Check for vulnerabilities
if [[ -x "$nspBin" ]]; then
  echo
  echo "Running NSP..."
  echo
  "$nspBin" check || result=1
  echo
else
  result=1
  echo -e "\033[31mERROR:\033[0m NSP is not installed"
  echo "Run 'npm i' to install all dependencies."
  echo
fi

# All done, return exit status
exit $result
