# modul122
## IPA Backup Skript

### Anforderungen
- Backup von Folder
- Dateiname enthält Datum
- Dateiname enthält Zeit
- Speicherung als TGZ file
- Cron-Job
- Feedback bei erfolgreicher Speicherung

### Beschreibung
Beim Schreiben der IPA arbeite ich jeden Tag bis 16:30 in meinem Betrieb an meinem Desktop. Um mich gegen Systemversagen zu sichern und um Zugang zu den Daten zu gewährleisten, entscheide ich mich die Daten auf einer zweiten Festplatte zu sichern. Dazu benutze ich ein Skript, das von allen Daten in meinem IPA-Ordner um 16:45 ein Backup erstellt.

Es soll für jeden Tag ein eigenes File mit dem ist Zustand an diesem Tag erstellt werden. Die Files sollen komprimiert als TGZ gespeichert werden .

Beim manuellen Aufrufen des Skripts wird nach jedem Erfolgreichen Backup eine Bestätigung in der Shell erfolgen.

![backup_skript_2 drawio](https://user-images.githubusercontent.com/71121888/162910185-6cacb619-b444-4f8d-b3ee-0c0045bfcddd.png)

### Tests

| Test Name | Beschreibung |
| ----------- | ----------- |
| Erstellt Backups | Das Skript ausführen. </br>Prüfen, ob ein Archiv für diesen Tag erstellt worden ist. |
| Datum im Namen der Backups | Das Skript ausführen. </br>Prüfen, ob das Datum im Namen vorkommt. |
| Zeit im Namen der Backups | Das Skript ausführen. </br>Prüfen, ob die Zeit im Namen vorkommt. |
| Backups sind TGZ | Das Skript ausführen. </br>Prüfen, ob die Files als TGZ gespeichert wurden. |
| Cronjob wird ausgeführt | Cron Intervall abwarten. </br>Prüfen, ob die ein File erstellt wurde.  |
| Richtige Daten gespeichert | tar -tzvf /home/julien/Backups/ {name file}. </br>Prüfen ob IPA Ordner enthalten. |

### Vorgehen

Erstellen des Skripts mit der Logik zum erstellen der Backups (backup.sh).
Mach das Skript ausführbar
: chmod u+x backup.sh
Erstellen des Cronjobs. 
: sudo crontab -e
: 30 16 * * * bash /home/julien/backup.sh
: (Minuten Stunden TagDesMonats Monat TagDerWoche Skript)
: sudo service cron start
: (sudo service cron status) um den Status zu sehen
