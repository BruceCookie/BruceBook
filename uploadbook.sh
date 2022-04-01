#!/usr/bin/env sh

REPO_SSH='git@github.com:BruceCookie/BruceBook.git'  #[repository SSH]: copy from github repository page --> "code" button. 

echo "executing：git add -A"
git add -A

echo "executing：commit -m 'deploy'"
git commit -m 'update'

echo "executing：git push -f $REPO_SSH master"
git push -f $REPO_SSH master

echo 'executing：gitbook build .'
gitbook build .

echo "executing：cd ./_book\n"
cd ./_book

echo "executing：git add -A"
git add -A

echo "executing：commit -m 'deploy'"
git commit -m 'deploy'

echo "executing：git push -f $REPO_SSH master:gh-pages"
git push -f $REPO_SSH master:gh-pages

echo "back to upper directory"
cd -
