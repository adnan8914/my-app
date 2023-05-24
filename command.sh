#!/bin/bash

# Step 1
npx create-react-app my-app
cd my-app
npm start

# Step 2
gh auth login
gh repo create
cd my-app
git init
git add .
git commit -m "initial commit"
gh repo view
git push

# Step 3
git branch -a
git checkout -b update_logo

# Step 4
wget https://www.propelleraero.com/wp-content/uploads/2021/05/Vector.svg
mv Vector.svg logo.svg
git add logo.svg
git commit -m "Replace logo with new version"
git push origin update_logo

# Step 5
git add index.html
git commit -m "Replace existing link with new URL"
git push origin update_logo

# Step 6
git commit
git push

# Step 7
gh pr create --base master --head update_logo --title "Update Logo" --body "Enter your pull request description here"

