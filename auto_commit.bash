#!/bin/bash

echo 'Committing changes....'
sleep 2

echo 'Adding the files....'
sleep 1
git add .
sleep 2

echo 'Committing changes....'
sleep 1

echo 'Please enter commit message:'
read message
sleep 1

git commit -m "$message"
sleep 2

echo 'Pushing files to GitHub...'
sleep 2
git push
sleep 2

echo '✅ Your repo is ready!'
echo '🔗 Visit: https://github.com/theFoxCost/Fox_is_PRODUCTIVE'
