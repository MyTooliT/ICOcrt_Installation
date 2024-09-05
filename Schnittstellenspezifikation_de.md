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
Für die Datenaufnahme und die Regelung aktivieren werden jeweils 1 digitaler Ausgang benötigt. Für die Verbindung zu zuvor definierten Haltern können momentan 255 verschiedene Halter/Regeln mittels 8 digitalen Ausgängen angesprochen werden und 1 digitalen Ausgang um die Verbindung zu aktivieren. Daher ergibt sich eine momentane Anzahl von maximal 11 benötigten digitalen Ausgängen der Maschinensteuerung.

## Implementierung von bis zu 8 digitalen Eingängen
#### (ebenfalls über Synchronaktionen) zur Informationsabfrage der ICOtronic Systems Statusinformationen in der Maschine {-}

Die Implementierung dieser Signale ist optional. Bis zu 8 digitale Eingänge der Maschine können genutzt werden um die folgenden Statusinformationen des ICOtronic Systems zu bekommen:

- Ist das System aktiv
- Ist das System verbunden mit einem Halter
- Nimmt das System gerade Daten auf
- Ist die Regelung durch das System gerade aktiv
- Greift das System gerade aktiv in die Overrides der Maschine ein
- Läuft das System im Dashboard Modus
- Ist die automatische Verbindungsfunktion aktiviert
- Ist die automatische Regelaktivierung aktiviert

## Funktionen und deren benötigte Maschinen Ports

| Funktionen | Analog Eingang | Digitaler Ausgang | Digitaler Eingang | Anmerkung |
|------------|----------------|-------------------|-------------------|-----------|
|Regelung-Vorschub|+1|0|0||
|Regelung-Drehzahl|+1|0|0||
|Analoger Feedback des IFT-Wertes von SPU an Maschine|+1|0|0||
|Aufnahme durch Maschine starten|0|+1|0||
|Rule engine durch Maschine aktivieren|0|+1|0||
|Halter durch Maschine verbinden|0|+log<sub>2</sub>(Halteranzahl)+1|0|Es sind maximal 255 Halter mittels Signalen von der Maschine verbindbar => Max. +8 Digitale Ausgänge|
|Verbindung zu definiertem Halter/Regel aufbauen|0|+1|0||
|SPU Rückmeldung an Maschine: System aktiv|0|0|+1||
|SPU Rückmeldung an Maschine: Halter verbunden|0|0|+1||
|SPU Rückmeldung an Maschine: Aufnahme läuft|0|0|+1||
|SPU Rückmeldung an Maschine: Rule engine aktiv|0|0|+1||
|SPU Rückmeldung an Maschine: Overrides werden überschrieben|0|0|+1||
|SPU Rückmeldung an Maschine: Dashboard Regelung ist aktiv|0|0|+1||
|SPU Rückmeldung an Maschine: Automatische Verbindung ist aktiviert|0|0|+1||
|SPU Rückmeldung an Maschine: Rule engine ist automatisch aktiviert|0|0|+1||
|ALLE FUNKTIONEN|3|11|8|Alle Funktionen ausgewählt und maximal unterstützte 255 Halter|

### Beispiele

#### Verwendung des Dashboards ohne Verbindung zur Maschine {-}

Wenn Sie das ICOtronic-System nur über das Dashboard steuern möchten, ohne Vorschub und Drehzahl anzupassen, benötigen Sie keine Verbindungen zur Maschine. In diesem Szenario müssen Sie Verbindungen und Aufnahmen manuell über das Dashboard auf einem mit der SPU verbundenen Computer vornehmen.

#### Verwendung der Maschine zur Aufnahme eines Halters {-}

In diesem Szenario benötigen Sie 2 digitale Ausgänge an der Maschine. Ein digitaler Ausgang wird zum Verbinden/Trennen des Halters verwendet und ein anderer zum Starten/Stoppen der Aufnahme.

#### Verwendung der Maschine mit 3 verschiedenen Haltern zum Aufnehmen und Rückmeldungen an die Maschine ob das System aktiv ist, mit einem Halter verbunden ist und gerade eine Aufnahmen gemacht wird {-}

In diesem Szenario benötigen Sie 4 digitale Ausgänge und 3 digitale Eingänge an der Maschine. 2 digitale Ausgänge werden verwendet, um bis zu 3 Halter zu verbinden/trennen. 1 digitaler Ausgang wird verwendet, um die Verbindung zu starten. 1 digitaler Ausgang wird verwendet, um die Aufnahme zu starten/stoppen. 1 der digitalen Eingänge wird für die Information verwendet, ob die SPU aktiv ist, 1 digitaler Eingang für die Information, ob ein Halter derzeit mit dem System verbunden ist, und 1 digitaler Eingang für die Information, ob das System gerade eine Datenaufnahme macht.

#### Verwendung der Rule-Engine zur Beeinflussung der Overrides mit 1 Halter ohne Rückmeldungen von der SPU und ohne Aufnahme {-}

In diesem Szenario benötigen Sie 2 analoge Eingänge und 2 digitale Ausgänge an der Maschine. 2 analoge Eingänge, einer für den Vorschub-Override und einer für den Drehzahl-Override. 1 digitaler Ausgang wird benötigt, um über die Maschine eine Verbindung zu einem Halter herzustellen, und 1 digitaler Ausgang, um die Rule-Engine über die Maschine zu aktivieren.

#### Verwendung der Rule-Engine zur Beeinflussung der Overrides, mit 2 Haltern, mit Rückmeldung von der SPU und Aufnahmen {-}

In diesem Szenario benötigen Sie 2 analoge Eingänge, 5 digitale Ausgänge und 5 digitale Eingänge an der Maschine. 2 analoge Eingänge, einer für den Vorschub-Override und einer für den Drehzahl-Override. 2 digitale Ausgänge werden benötigt, um 2 Halter zu verbinden. 1 digitaler Ausgang wird verwendet um die Verbindung zu starten. 1 digitaler Ausgang wird benötigt, um die Aufnahme zu starten, und 1 digitaler Ausgang, um die Rule-Engine über die Maschine zu aktivieren. 1 digitaler Eingang wird für die Information benötigt, ob die SPU aktiv ist, 1 digitaler Eingang für die Information, ob ein Halter mit dem System verbunden ist, 1 digitaler Eingang für die Information, ob das System gerade eine Datenaufnahme macht, 1 digitaler Eingang für die Information, ob die Rule-Engine aktiviert ist, und 1 digitaler Eingang, um die Information zu erhalten, ob das System gerade die Overrides beeinträchtigt.

#### Verwendung von OPCUA zur Systemsteuerung ohne Änderung der Overrides {-}

In diesem Szenario benötigen Sie keine Verbindungen zur Maschine. Sie benötigen lediglich einen OPCUA-**CLIENT**, der über ein LAN-Kabel mit dem System verbunden ist.

#### Verwendung von OPCUA zur Systemsteuerung mit Verwendung der Rule-Engine {-}

In diesem Szenario benötigen Sie 2 analoge Eingänge an der Maschine. Einer für den Vorschub-Override und einer für den Drehzahl-Override. Zusätzlich benötigen Sie einen OPCUA-**CLIENT**, der über ein LAN-Kabel mit dem System verbunden ist.