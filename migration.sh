#!/bin/bash
mkdir ${migrate}
cd ${migrate}
git init

#echo "Adding git remote as origin"

git remote add origin https://github.com/vinaymk009/migration.git:name/${migrate,,}.git

#echo "Adding Git remote as sync" 

git remote add sync https://github.com/vinaymk009/migration.:Repositoryname/${migrate,,}.git


#echo "First pulling from git using sync remote"

git pull sync master

#cd ${migrate}

#cat <<EOT>>getAllBranches.sh
#for branch in `git branch -a | grep remotes | grep -v HEAD | grep -v master `; do 
#  git branch --track ${branch#remotes/origin/} $branch 
#done
#EOT
