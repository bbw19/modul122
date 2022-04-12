# modul122
## IPA Backup Skript

### Anforderungen
- Backup von Folder
- Dateiname enthält Tag
- Dateiname enthält Benutzernamen
- Sortierung nach Tag
- Speicherung als tar file
- Cron-Job
- Feedback bei erfolgreicher Speicherung

### Beschreibung
Beim Schreiben der IPA arbeite ich jeden Tag bis 16:30 in meinem Betrieb an meinem Desktop. Um mich gegen Systemversagen zu sichern und um Zugang zu den Daten zu gewährleisten, entscheide ich mich die Daten auf einer zweiten Festplatte zu sichern. Dazu benutze ich ein Skript, das von allen Daten in meinem IPA-Ordner um 16:45 ein Backup erstellt.

Es soll für jeden Tag ein eigenes File mit dem ist Zustand an diesem Tag erstellt werden. Die Files sollen komprimiert als tar gespeichert werden und nach Tag sortiert im Backup-Ordner liegen.

Nach jedem Erfolgreichen Backup soll eine Bestätigung in der Shell erfolgen.

![backup_skript_2 drawio](https://user-images.githubusercontent.com/71121888/162910185-6cacb619-b444-4f8d-b3ee-0c0045bfcddd.png)

### Tests

| Test Name | Beschreibung |
| ----------- | ----------- |
| Erstellt Backups | Das Skript ausführen. </br>Prüfen, ob ein Ordner für diesen Tag erstellt worden ist. |
| Tag im Namen der Backups | Das Skript ausführen. </br>Prüfen, ob der Tag im Namen vorkommt. |
| Usernamen im Namen der Backups | Das Skript ausführen. </br>Prüfen, ob der Name des angemeldeten Users im Namen vorkommt. |
| Backups sind tar | Das Skript ausführen. </br>Prüfen, ob die Files als tar gespeichert wurden. |
| Cronjob wird ausgeführt | Cron Intervall abwarten. </br>Prüfen, ob die ein File erstellt wurde.  |
