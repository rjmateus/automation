#!/bin/bash
# backup of suse notes project


function backup_folder() {

  echo "processing folder '$1'"
  cd $1
  git diff --exit-code
  if [ $? -ne 0 ]; then
    echo "changes to commit"
    git add -A
    TODAY=`date +"%m-%d-%y-%T"`
    git commit -s -S -m "$TODAY"
  fi

  git push

}

declare -a project_folders=('/home/rmateus/projects/SUSE_notes'
'/home/rmateus/projects/scripts/ric_automation')

for i in "${project_folders[@]}"
do
  backup_folder $i
done
