# Schnittstellenspezifikation

## Implementierung von 2 analogen Eingängen
#### (0 - 10V), die z.B. mit Synchronaktionen abgefragt werden können {-} 		

Die Signal Processing Unit (SPU) des ICOtronic Systems liefert die Stellwerte für Vorschub und Drehzahl als Analogsignal (0 - 10V). Beim Einbau der Analog-Eingangsmodule und der Inbetriebnahme soll ein Unterprogramm eingespielt werden, dass den Wert des analogen Eingangssignals mit dem Overwrite von Vorschub der Linearachsen und Spindeldrehzahl verrechnet (0V = 100% Overwrite, 10V = 0% Overwrite). Es soll auch eine Verrechnung des manuellen Overwrite erfolgen (limitierend oder multiplikativ).

## Implementierung von mindestens einem digitalen Ausgängen
#### (ebenfalls über Synchronaktionen) zur Ansteuerung des ICOtronic Systems {-} 		

##### Minimalanforderung {-}

Ein digitaler Ausgang der Maschine welcher genutzt werden kann um die Verbindung und mehr des ICOtronic Systems zu aktivieren.

Beispiel:
Mit Aufruf der M-Funktion M190 im Teileprogramm wird ein digitaler Ausgang geschalten und damit das somit der externe Prozesseingriff durch das ICOtronic System freigeschalten. Mit M191 wird die externe Regelung wieder deaktiviert.

##### Möglichkeiten mit mehr digitalen Ausgängen {-}

Wenn die verschiedenen Funktionen:
- Verbindung zu Halter herstellen
- Datenaufnahme aktivieren
- Regelung aktivieren
einzeln benutzt werden sollen dann müssen mehr digitale Ausgänge an der Steuerung implementiert werden.
Für die Datenaufnahme und die Regelung aktivieren werden jeweils 1 digitaler Ausgang benötigt. Für die Verbindung zu zuvor definierten Haltern können momentan 3 verschiedene Halter mittels 2 digitalen Ausgängen angesprochen werden. Daher ergibt sich eine momentane Anzahl von maximal 4 benötigten digitalen Ausgängen der Maschinensteuerung.

## Implementierung von bis zu 5 digitalen Eingängen
#### (ebenfalls über Synchronaktionen) zur Informationsabfrage der ICOtronic Systems Statusinformationen in der Maschine {-}

Die Implementierung dieser Signale ist optional. Bis zu 5 digitale Eingänge der Maschine können genutzt werden um die folgenden Statusinformationen des ICOtronic Systems zu bekommen:
- Ist das System aktiv
- Ist das System verbunden mit einem Halter
- Nimmt das System gerade Daten auf
- Ist die Regelung durch das System gerade aktiv
- Greift das System gerade aktiv in die Overrides der Maschine ein


