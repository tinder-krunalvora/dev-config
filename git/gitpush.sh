#!/bin/bash

# Automation to git add, commit and push in one step
git add .

git status

echo "Enter the commit message:"
read commitMessage

git commit -m "$commitMessage"

branch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p')
echo "Push to current branch - $branch ? (y/n)"
read userResponse

if [[ $userResponse =~ ^[Yy]$ ]]
then
  git push origin $branch
else
  echo "Aborting..."
  exit 1
fi
