#!/bin/sh

# Setup the branches association with the upstream original source of the fork.
git remote add upstream $1
git fetch upstream
git fetch --all
git checkout master

# Update the clojure-land repository from the upstream source
git checkout master


echo ""
echo "running merge upstream/master..."
git merge upstream/master

echo ""
echo "running push...."
git push
