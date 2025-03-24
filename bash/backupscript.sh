#!/bin/bash

SOURCE_DIR="$1"
BACKUP_DIR="$2"
# checks if both arguments have been provided :
if [ $# -ne 2 ]; then
        echo "Error: directories have not been added "
        exit 1
fi
# checks if source directory exists, if not the scripts exists.
if [ ! -d $SOURCE_DIR ]; then 
	echo " $1 directory don't exist " 
	exit 1 
fi 
# condition that checks if the backup directory exists, if not creates new directory
if [ ! -d $BACKUP_DIR ]; then
        mkdir -p $BACKUP_DIR
echo "New backup directory $2 created "

fi
# copies .txt files from the source directory and stores them on to the backup directory.
cp $SOURCE_DIR/*.txt $BACKUP_DIR/

echo "files has been stored on $2 "
# lists backup directory files
ls $BACKUP_DIR/ 
