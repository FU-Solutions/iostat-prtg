# check-iostat
Diese Sammlung an Scripten erstellt via iostat (Das Kommando kommt mit dem Paket sysstat mit) ein temporäres File `/tmp/iostat.out` welche dann über ein Monitoringtool auswertbar ist.

## Was tut der Bums?

Wie bereits angerissen wird über einen Cronjob alle 60 Sekunden ein Script ausgeführt, welches den Befehl ìostat` ausführt und die Ausgabe anpasst und in einer temporären abspeichert.

Über die Userparameter werden diese Werte abgegriffen und zusätzlich noch ein Script ausgeführt, welches die temporäre Datei durchgeht und einen Durchschnittswert errechnet. Dieser kann dann in einem Monitoringsystem ausgewertet bzw. angezeigt werden.

# Installation
Die Dateien `iostat-parse.sh` und `iostat-collect.sh` werden in das Verzeichnis `/usr/local/bin/` kopiert.
Die Datei `iostat` legt ihr unter `/etc/cron.d/` ab, dadurch wird minütlich der Job ausgeführt, der die temporäre Datei anlegt.

Die Implementation in das Monitoringsystem wird hier nicht thematisiert. 
