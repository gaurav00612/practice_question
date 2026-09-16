#!/bin/bash


source=$1
backup_file=$2
dir="/home/gaurav"

if [[ $# -eq 0 || $# -eq 1 ]];then
echo "Please provide 2  arguments"
exit 1
fi


destination_check() {
   sourcefile=0
   destination_file=0
   

   if [ -d $source ];then
    echo "source Exists"
    ((sourcefile++))
   fi

  if [ -d $backup_file ];then
    echo "Backupfile exists"
    ((destination_file++))
  echo "30 $destination_file"
  else
    echo "Not exitsts"
   fi    
}

destination_check "$source" "$backup_file"

 echo "Check: $destination_file"
if [ $sourcefile -eq  0 ];then
  echo "Source directory path is not find"
  exit 1
elif [ $destination_file -eq 0 ];then
  echo "destination: $destination_file"
   mkdir $backup_file
   if [ $? -eq 0 ];then
    touch $backup_file/backup.log
   fi
else
   echo "Continue------"
fi

backupfile() {
  cp -r $source $backup_file
  
  if [ $? -eq 0 ];then
	  echo "$(date '+%Y-%m-%d %H:%M:%S') backup completed successfully " >> $backup_file/backup.log
  else
    echo "$(date '+%Y-%m-%d %H:%M:%S') backup haulted" 
  fi
}

backupfile
