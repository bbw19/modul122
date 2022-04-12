#!/bin/bash
# Skript: backup.sh
# Aufruf: backup.sh
# Autor: Julien Rädler

# Von was sollen Backups erstellt werden. 
backup_files="/home/julien/IPA"

# Wo sollen die Backups gespeichert werden.
dest="/home/julien/Backups"

# Create archive filename.
day=$(date +%A)
hostname=$(hostname -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest