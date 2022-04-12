#!/bin/bash
# Skript: backup.sh
# Aufruf: backup.sh
# Autor: Julien Rädler

# Von was sollen Backups erstellt werden. 
backup_files="/home/julien/IPA"

# Wo sollen die Backups gespeichert werden.
dest="/home/julien/Backups"

# File nach Tag und Host benennen
date=$(date +%F)
time=$(date +%T)
archive_file="$date-$time.tgz"

# Status ausgeben
echo "Es wird ein Backup von $backup_files zu $dest/$archive_file erstellt"
date
echo

# Backup erstellen
tar czf $dest/$archive_file $backup_files

# Status ausgeben
echo
echo "Backup abgeschlossen"
date

# Alle Backups anzeigen
ls -lh $dest