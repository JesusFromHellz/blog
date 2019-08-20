#!/usr/bin/env bash

# Run this script to deploy the app to Github Pages.

# Exit if any subcommand fails.
set -e

echo "Started deploying"
git add -fA
git commit --allow-empty -m "$(git log -1 --pretty=%B)"
git push -f -q origin master
# Checkout gh-pages branch.
if [[ $(git branch | grep gh-pages) ]]
then
  git branch -D gh-pages
fi
git checkout -b gh-pages

# Build site.
#yarn install --modules-folder ./_assets/yarn
bundle exec jekyll build

# Delete and move files.
find . -maxdepth 1 ! -name '_site' ! -name '.git' ! -name '.gitignore' -exec rm -rf {} \;
mv _site/* .
rm -R _site/

# Push to gh-pages.
git add -fA
git commit --allow-empty -m "$(git log -1 --pretty=%B)"
git push -f -q origin gh-pages

# Move back to previous branch.
git checkout -
#yarn install --modules-folder ./_assets/yarn

echo "Deployed Successfully!"

exit 0
