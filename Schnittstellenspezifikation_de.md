# Schnittstellenspezifikation_de

## Implementierung von 2 analogen Eingängen (0 - 10V), die z.B. mit Synchronaktionen abgefragt werden können 		

Die Signal Processing Unit (SPU)  des ICOtronic Systems liefert die Stellwerte für Vorschub und Drehzahl  als Analogsignal (0 - 10V). Beim Einbau der Analog-Eingangsmodule und  der Inbetriebnahme soll ein Unterprogramm eingespielt werden, dass den  Wert des analogen Eingangssignals mit dem Overwrite von Vorschub der  Linearachsen und Spindeldrehzahl verrechnet (0V = 100% Overwrite, 10V =  0% Overwrite). Es soll auch eine Verrechnung des manuellen Overwrite  erfolgen (limitierend oder multiplikativ).

## Implementierung von mindestens einem digitalen Ausgängen (ebenfalls über Synchronaktionen) zur Ansteuerung des ICOtronic Systems 		

Beispiel:
Mit Aufruf der M-Funktion M190 im Teileprogramm wird ein digitaler Ausgang  geschalten und damit das somit der externe Prozesseingriff durch das  ICOtronic System freigeschalten. Mit M191 wird die externe Regelung  wieder deaktiviert.

