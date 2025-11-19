#!/bin/bash

<<readme 
this is script for backup

./backup.sh <pathto your source>  <path to your backup folder>

readme

function display_usage {

	echo "usage:./backup.sh <pathto your source>  <path to your backup folder>"
}

if [$# -eq 0]; then
	display_usage
fi	

source_dir=$1
timestamp=$(date '+%Y-%m-%d-%H-%M-%S')
backup_dir=$2


function create_backup {

	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > /dev/null

	
	if [$? -eq 0]; then
	echo "Backup generated sucessfully for ${timestamp}"
	fi
}

create_backup
