#!/usr/bin/env sh

echo 'executing：gitbook build .'
gitbook build .

echo "executing：cd ./_book\n"
cd ./_book

echo "executing：git init\n"
git init

echo "executing：git add -A"
git add -A

echo "executing：commit -m 'deploy'"
git commit -m 'deploy'

echo "executing：git push -f $REPO_SSH master:gh-pages"
git push -f $REPO_SSH master:gh-pages

echo "back to upper directory"
cd -
