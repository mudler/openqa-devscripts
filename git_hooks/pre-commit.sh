#!/bin/bash
# pre-commit.sh
set -e
STASH_NAME="pre-commit-$(date +%s)"
GIT_ROOT="$(git rev-parse --show-toplevel)"
PROJECT_NAME="$(basename $(git remote show -n origin | grep Fetch | cut -d: -f2-))"
git stash save -q --keep-index $STASH_NAME || true

# Check indentation and that tests pass
pushd "${GIT_ROOT}"
  [[ "$PROJECT_NAME" == 'openQA.git' ]] && ./script/tidy && FULLSTACK=1 SELENIUM_CHROME=0 UITESTS=1 make travis-codecov
  [[ "$PROJECT_NAME" == 'os-autoinst.git' ]] && ./tools/tidy && make && make check coverage-coveralls VERBOSE=1
popd

STASHES=$(git stash list)
if [[ $STASHES == "$STASH_NAME" ]]; then
  git stash pop -q || true
fi
