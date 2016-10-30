## AWS - EC2 Instanz erstellen

Diese Instanz dient auschließlich zur Einrichtung des Nominatim-Servers als Default-Image, welches später immer wieder im Schnellverfahren aufgesetzt werden kann.

1. Neue Amazon EC2 Instanz erstellen
2. Unter Community AMIs ein Debian Jessie Image auswählen => ami-30e01d5f ([weitere Images](https://wiki.debian.org/Cloud/AmazonEC2Image/Jessie))
2. Als Instanztyp wähle t2.nano
3. Alle weiteren Grundeinstellungen bestätigen, bis auf Configure Security Group
  * hier die Regel HTTP hinzufügen
4. wieder alles bestätigen und zum Abschluss noch die Schlüsseldatei für den SSH-Zugriff erzeugen


