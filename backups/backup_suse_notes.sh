#!/bin/bash
# backup of suse notes project


function backup_folder() {

  TODAY=`date +"%m-%d-%y-%T"`
  echo "[$TODAY]processing folder '$1'"
  cd $1
  git add -A
  git diff HEAD --exit-code
  if [ $? -ne 0 ]; then
    echo "changes to commit"
    git add -A
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
