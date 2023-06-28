# (PART\*) [Deutsch] {-}
# ICOcrt Installationsanleitung {-}

Installationsanleitung für das ICOtronic Control System

# Version

Diese Anleitung wurde geschrieben für eine SPU mit Dashboardversion v4.0.1.4. Für eine Installationsanleitung von älteren Versionen siehe nachstehenden Link:

[Ältere Version](https://github.com/MyTooliT/ICOcrt_Installation/blob/older_than_4_0_1_4/ICOcrt%20Installation%20de.md)

# System Komponenten 					  			

Die nachfolgende Grafik verleiht einen Überblick über die Komponenten des ICOtronic System. Die Hauptbestandteile sind:

- Sensory Tool Holder (STH)
- Signal Processing Unit (SPU)
- Stationary Transceiver Unit (STU)
- Charging Cradle (CC)

![icocrtl](assets/icocrtl.png)

# Vorbereitung 			  			

Dieses Dokument beschreibt die Installation des ICOtronic Control System.

## ICOtronic System-Komponenten 		

#### Für eine Vollinstallation werden folgende Systemkomponenten benötigt: {-}

- Signal Processing Unit – SPU
- Sensory Tool Holder – STH
- Stationary Tranciever Unit - STU (5m Länge)
- Optional: Verlängerungskabel für STU (7m Länge)

## Benötigtes Verbrauchsmaterial 			  			

- Kabel in verschiedenen Farben: Die Haustechnik hat hier vermutlich Konventionen, denen wir uns gerne beugen. Der Querschnitt beträgt üblicherweise 0,75 mm², welche nur Niederspannung führen. Daher kann auch hier gerne auf interne Konventionen Rücksicht genommen werden. Die Kabel müssen aus dem Schaltschrank bis zu dem Aufstellort der SPU reichen (max 6 parallel).     
- Aderendhülsenset
- Kabelbinder
- Isolier- und Klebeband, falls wir was „passend“ machen müssen    

## Benötigtes Werkzeug 			  			

- Seitenschneider
- Abisolierzange
- Schraubenzieher
- Kombi-Zange
- Beschriftungsgerät oder Klebe-Label, um die Kabel zu kennzeichnen
- Multimeter
- Ethernetkabel, um die SPU mit dem Laptop zu verbinden
- Laptop mit Windows (Windows 7 Servicepack 1; Windows 8.1 Update 1 ; Windows 10) Betriebssystem und Adminberechtigung

## Notwendige HR/Kompetenzen 		

- System-Ingenieur
- Maschinen Wartungstechniker
- EDV-Admin
- Maschinenführer

## Notwendige Vorbereitungsarbeiten an der Maschine 		

#### Muss {-}				  			

- Steuerungseingriff in der Maschine integriert
- 230V beim Schaltschrank für SPU
- Laptop mit Admin-Rechten und Netzwerkzugang
- Schaltpläne der Maschine
- Kabeldurchgang in Bearbeitungsraum verfügbar

#### Optional {-}			  			

- Vorschläge für SPU Position
- EDV-Integration und Datenbankanbindung

# Aufstellung und Verkabelung 		

## Vorbesprechung 		

Vor der Installation soll im Gespräch mit dem Kunden abgeklärt werden, ob alle notwendigen Vorbedingungen erfüllt sind. Dazu empfiehlt es sich, die benötigten Komponenten aus dem Abschnitt “Vorbereitung” nochmals gemeinsam durchzugehen.

## Begutachten der Maschine 			  			

Zur Begutachtung muss die Maschine nicht aus dem Produktivbetrieb genommen werden. Es ist sogar förderlich, wenn die Maschine gerade typisch verwendet wird. Der Systemingenieur besichtigt mit dem Maschinenführer die Maschine, um folgende Punkte abzuklären.

## Beschaffenheit der Maschine und Integrationsmöglichkeiten für die SPU und STU 					  			
Um das ICOtronic System in die Steuerung einer Maschine zu integrieren, müssen für SPU und STU geeignete Aufstellplätze gefunden werden. Die SPU wird typischerweise in oder rund um den Schaltschrank der Maschine angebracht. Dabei ist zu beachten, dass die SPU mit 230VAC versorgt werden muss. Weiters müssen für den Steuerungseingriff Kabel aus dem Schaltschrank zu der SPU geführt werden. Abhängig vom Aufbau der Maschine und Art des Eingriffes werden dafür unterschiedlich viele elektrische Verbindungen benötigt. Eine typische Ausführung könnte sein:

Zwei Adern mit etwa 0,75mm2 für das digitale Eingriffssignal, ausgelöst durch M-Befehl (Einmal digitale Masse, einmal digitales Steuersignal 24V CPL). Eine oder mehrere solcher Konfigurationen können in einer Mantelleitung geführt werden. Drei Adern mit etwa 0,75mm2 für den analogen Maschinen-Eingriff (Einmal analoge Masse und zwei analoge Steuersignale 0-10V für Vorschub-/Spindel-Override). Die analogen Leitungen sind generell anfälliger auf Störungen, warum hier Schirmung wichtig sein kann.

Die STU muss im Bearbeitungsraum der Maschine angebracht werden, um eine stabile Funkverbindung mit dem STH zu gewährleisten. Einen günstigen Platz für die STU auszusuchen erfordert oft etwas probieren. Daher ist die STU nur magnetisch befestigt und kann schnell manipuliert werden. Generell wäre ein Montageort nahe der Spindel günstig, jedoch kommt es dort auch oft zu vermehrtem Span-und Kühlmittel-Aufkommen. Dieses kann kurzfristig zu instabilen Funkverbindungen, sowie längerfristig zu Beschädigungen der STU führen. Montage auf beweglichen Teilen kann zu Problemen mit dem Anschlusskabel führen. Montagen im oberen Bereich des Maschinenraums sind oft ein guter Kompromiss. Das Frontglas sollte bevorzugt durch das Maschinenfenster einsehbar sein, da die LEDs als Status-Indikator verwendet werden.

| LED - STATUS                    | BEDEUTUNG                                  |
|---------------------------------|--------------------------------------------|
|Grüne LEDs in den Ecken blinken  |STU ist aktiv und kein Halter ist verbunden |
|Grüne LEDs in den Ecken leuchten |STU ist mit Halter verbunden                |

Die Kabeldurchführung in den Bearbeitungsraum der Maschine muss vorhanden sein, da sonst die STU nicht platziert werden kann. Die Position im Bearbeitungsraum kann leicht verändert werden, da die STU nur magnetisch montiert wird.

# Montage der Systemkomponenten 		

## Die Aufstell-Situation der Maschine 				  			

Die Maschine muss für eine Installation soweit zugänglich sein, dass alle Kabel, SPU und STU montiert werden können. Es ist abzuklären, ob das mit irgendwelchen Sicherheitseinrichtungen in Konflikt steht. Oft werden auch Leitern oder ähnliches benötigt, können jedoch nicht ohne weiteres aufgestellt werden.

## Die Kabelführung 					  			

Wenn die Positionen von SPU und STU festgelegt wurden, müssen die Kabel für die jeweiligen Verbindungen vorbereitet werden. Die STU kommt mit einem 5m Anschlusskabel, welches nicht (leicht) vor Ort verlängert werden kann. Es ist günstig mit der Platzierung der STU zu beginnen und das Kabel zur SPU zu fädeln. Jedoch sollte eine Kabelschleife nahe der STU, aber außerhalb des Bearbeitungsraumes verbleiben. So kann man die Position der STU im Nachhinein leichter wieder verändern.

Die Kabel für die Anbindung der Steuerung an die SPU müssen vor Ort konfektioniert werden. Es empfiehlt sich, diese Kabel direkt von der Instandhaltung bereitstellen zu lassen, da damit die Konventionen des Betriebes ganz von selbst berücksichtigt werden.

![kabelführung_de](assets/kabelführung_de.png)

# Netzwerkkonfiguration 			  			

- Laptop mit Windows Betriebssystem und Admin-Berechtigung, sowie bereits installierter LabView Runtime
  Downloadlink → http://www.ni.com/download/labview-run-time-engine-2018/7383/en/
  ACHTUNG: Es muss unbedingt die Runtime 2019 SP1 installiert werden
- Ethernetkabel, um die SPU Box mit dem Laptop zu verbinden
- IP-Adresse beim User Endgerät gesetzt. (Für Details siehe die [Dashboard Anleitung](https://mytoolit.github.io/Dashboard/#software--und-netzwerkeinstellungen-des-computers))
- Dashboard öffnen, um Verbindung zu überprüfen

# Anbinden der Steuerung 		

## Funktion der Schnittstelle 			  			

Die Maschinensteuerung schaltet die Regelung der Maschine durch einen digitalen Ausgang ein. Um sicherzustellen, dass alle Instanzen funktionieren, sollte die Funktion des Ausganges vor dem finalen Anbinden verifiziert werden.
Der richtige Steckplatz des Steuersignals im Schaltschrank muss vor der Installation dokumentiert sein. Typischerweise wird ein Hutschienen-Modul, dessen Pin sowie dessen Repräsentanz in der Steuerung im Schaltplan genannt. Vorerst sind nur das Modul und der Steckplatz von Interesse. Außerdem muss aus dem Schaltplan die zugehörige Bezugsmasse für dieses Modul abgelesen werden.

## Integration von STU und der Energieversorgung der SPU	 			

Nachdem die STU im Maschinenraum fixiert und das Kabel zur SPU verlegt wurde, müssen diese Komponenten mittels des Sub-9-D-Steckers miteinander verbunden werden. Die Spannungsversorgung der STU wird mittels eines Powerinjectors realisiert.

![pi_de](assets/pi_de.jpg)

Die zwei Sub-9-D-Stecker des Powerinjectors werden zwischen den korrespondierenden Stecker des STU Kabels und der SPU (NI 9862) eingesteckt. Das Versorgungskabel des Powerinjectors ist im Inneren des Gehäuses mittels einer Klemme befestigt. Dieses Kabel und sein Netzteil können leicht gelöst werden und durch etwaige andere 24V Versorgung (zum Beispiel direkt aus dem Steuerkasten der Maschine oder dem 24V Netzteil der SPU) ausgetauscht werden. Dazu muss nur das silberne Gehäuse aufgeschraubt werden und das Kabel in der Klemme gelöst werden und durch eigene ausgetauscht werden. Die Polarität ist auf der Platine bei der Klemme gekennzeichnet.

![pi_pcb](assets/pi_pcb.jpg)

Des Weiteren gehört der 24V Stecker der SPU nun mit dem 24V Netzteil verbunden. Das Netzteil besitzt auf der einen Seite Anschlüsse für 24V zur Versorgung der SPU, auf der anderen Seite besitzt sie Anschlüsse für die 230VAC Versorgung des Netzteils (sollte sich am Installationsort bereits ein 24V Netzteil befinden, kann dieses natürlich verwendet werden anstelle des Netzteil Modules).

![netzteil](assets/netzteil_en.jpg)

Nachdem die STU mit der SPU verbunden und die Versorgung aktiviert ist, sollte nach etwa 15-30 Sekunden Wartezeit die LED1 grün leuchten (LED1 befindet sich auf dem Modul auf dem die STU angeschlossen wird). Sollte die LED nicht leuchten, starten Sie die SPU neu mittels erneutem Trennen und Verbinden der Versorgung und versuchen Sie es erneut.

![crio](assets/)

## Pinbelegung der SPU 					  			

NB... Nicht benutzt. In dieser Anwendung gleichbedeutend damit, dass nichts angeschlossen ist.

#### Analoger Ausgang (NI 9263): {-}

| PIN    | 0        | 1       | 2                 | 3            | 4                 | 5            | 6    | 7    | 8    | 9    |
| ------ | -------- | ------- | ----------------- | ------------ | ----------------- | ------------ | ---- | ---- | ---- | ---- |
| Signal | IFT-Wert | IFT-GND | Vorschub Override | Vorschub GND | Drehzahl Override | Drehzahl GND | NB   | NB   | NB   | NB   |

Der berechnete IFT-Wert, der Auskunft über die Stabilität des Systems liefert, wird als analoges Signal mit 0-10V auf Pin 0 zur Verfügung gestellt. Dies bietet nur die Möglichkeit, den IFT-Wert zu erfassen. Deshalb müssen Pin 0 und 1 nicht mit dem analogen Anschluss der Maschine verbunden werden. Diese beiden Pins werden nicht für den Echtzeit Prozesseingriff benötigt. Die Skalierung und der Offset des ausgegebenen IFT-Wertes kann im Dashboard angepasst werden (für mehr Informationen zum Dashboard und dessen Einstellungen siehe die Dashboard Benutzeranleitung). 

#### Digitaler Eingang & Ausgang (NI 9375): {-}

| PIN | SIGNAL           | PIN   | SIGNAL         |
|-----|------------------|-------|----------------|
| 1   | DI/ACTIVATE RULE | 19    | DI/CONNECT-ID1 |
| 2   | DI/RECORD        | 20    | DI/CONNECT-ID2 |
| 3   | NB               | 21    | NB             |
| 4   | NB               | 22    | NB             |
| 5   | NB               | 23    | NB             |
| 6   | NB               | 24    | NB             |
| 7   | NB               | 25    | NB             |
| 8   | NB               | 26    | NB             |
| 9   | GND              | 27    | NB             |
| 10  | DO/SYSTEM ACTIV  | 28    | NB             |
| 11  | DO/CONNECTED     | 29    | NB             |
| 12  | DO/RECORDING     | 30    | NB             |
| 13  | DO/RULE ENABLED  | 31    | NB             |
| 14  | DO/INTERFERENCE  | 32    | NB             |
| 15  | NB               | 33    | NB             |
| 16  | NB               | 34    | NB             |
| 17  | NB               | 35    | NB             |
| 18  | GND              | 36    | +24V           |

Die SPU kann mittels der digitalen Eingänge auf Pin 19&20 bis zu 3 zuvor im Dashboard definierte Halter automatisch verbinden. (ID3 = ID1 + ID2)

 ![Verkabelung_de](assets/NI-9375-Verkabelung.png)

## Digitale Steuersignale, SPU Eingang & Ausgang				  			
In Absprache mit dem Maschinenbediener soll der zu verifizierenden Ausgänge wechselweise ein- und ausgeschaltet werden. Dabei überprüft man die Spannung zwischen dem Steckplatz und der Bezugsmasse. Das kann entweder direkt am Schaltschrank oder an der von der SPU getrennten Klemmleiste erfolgen. Sollte die Steuerspannung von den erwarteten Spannungsniveaus (0V, 24V) signifikant abweichen, ist vermutlich etwas mit der Bezugsmasse nicht in Ordnung. Wenn die Reaktion korrekt erfolgt, sollten die Kabelbezeichnungen, Klemmen-Nummern usw. in der Installationsdokumentation vermerkt werden.

Es empfiehlt sich, die Funktion dieses Signals in Stufen zu prüfen:

1. Durch direktes Schreiben auf das Modul.
2. Durch Schreiben der Variable in der Steuerung.
3. Durch manuelles Setzen der entsprechenden M-Befehle.

Die Verkabelung der digitalen Ausgänge der SPU kann direkt in der Maschinensteuerung überprüft werden. Hierfür ist es nötig im Dashboard z.B. eine Aufnahme zu starten, sich mit einem Halter zu verbinden etc. Danach in der Maschinensteuerung überprüfen ob das passende Signal gesetzt wurde.

## Analoge Steuersignale, SPU Ausgang 			  			
Die analogen Steuersignale zum Einstellen des Maschineneingriffs werden von der SPU generiert. Die Spannungswerte reichen von 0-10V und entsprechen einer Reduktion des Overrides von 0-100%. Also je höher die Spannung, desto stärker die Reduktion von Vorschub bzw. Spindel. Der Wert in der Steuerung entspricht hierbei einer Multiplikation von Potenziometer und SPU Ausgabe.
Es empfiehlt sich wieder stufenweise vorzugehen:

Als Erstes die Kabel für Vorschub und Drehzahl Overrides vom Modul NI9263 der SPU trennen. Danach im Dashboard den Modus auf "direct output" stellen (für mehr Informationen zum Dashboard und dessen Konfigurationen siehe die Dashboard Benutzeranleitung). Nun die Overrides auf 40% Vorschub und 50% Drehzahl einstellen und im Anschluss die Spannungen an den zugehörigen Pins des Moduls NI 9263 der SPU messen. Das Ergebnis sollte 6V bei Vorschub und 5V bei Drehzahl sein. Nun können die Kabel zum Modul NI 9263 wieder verbunden werden. Nun die Spannungen bei gleichbleibenden Einstellungen an den Anschlussklemmen in der Maschine messen. Diese sollten wie zuvor 6V für Vorschub und 5V für Drehzahl betragen. Sollten die Spannungen stimmen, so müssen nun die Variablen in der Maschinensteuerung, welche diese repräsentieren, auf ihre Richtigkeit überprüft werden.

Nun sollte noch ein Luftschnitt ohne Materialabtrag gemacht werden. Während des Schnittes sollten die Overrides verändert und überprüft werden, ob Vorschub und Drehzahl dadurch geändert werden und ob die angezeigten Werte der Maschinensteuerung mit diesen übereinstimmt. Danach sollte die SPU wieder in den "watch" Modus versetzt werden (für mehr Informationen zum Dashboard siehe die Dashboard Benutzeranleitung).

Abschließend sollte nun die Verbindung mit dem sensorischen Werkzeughalter getestet werden. Dazu im Dashboard den gewünschten Halter auswählen und nach erfolgreichem Verbindungsaufbau den Halter schütteln und überprüfen, ob sich der IFT-Wert im Dashboard verändert.

Nun kann der Halter in die Spindel eingespannt werden. Danach mit der Spindel in verschiedene Positionen im Bearbeitungsraum fahren und überprüfen, ob der Halter an jeder Stelle eine Verbindung hat. Sollte dies nicht der Fall sein, so kann die STU an eine andere Position verschoben und erneut getestet werden.

Nun sollte das System installiert sein und einsatzbereit sein

# Bedeutungen der LEDs des ICOtronic System

## STH:

Die STH hat 2 grüne LEDs. Die eine auf dem "größeren" PCB ist die Ladungsanzeige. Diese LED leuchtet wenn der Halter in der Ladestation eingelegt ist. (Im Normallfall zeigt diese LED in der CC nach unten und ist daher schlecht zu sehen.)

Die andere LED sitzt auf dem "kleineren" PCB. Diese LED leuchtet oder blinkt wenn der Halter mit der STU verbunden ist.

## STU:

Die STU hat 4 grüne und 4 rote LEDS in den Ecken. Zusätzlich besitzt die STU 2 Power-LEDS und 3 CAN-LEDs. Wenn die STU an Spannung angelegt wird leuchten alle LEDs für ca. 1 Sekunde und leuchten danach in ihren geplanten Funktionen.

Die CAN-LEDs leuchten dementsprechend welche Nachrichten gesendet und empfangen werden. Die beiden Power-LEDs zeigen das die STU mit der Versorgung verbunden ist.

Wenn die STU mit Spannung versorgt ist aber nicht mit einem Halter verbunden ist blinken die 4 grünen LEDs in den Ecken der STU. Die roten LEDs leuchten nicht. Wenn ein Halter mit der STU verbunden wird hören die grünen LEDs auf zu blinken und starten dauerhaft zu leuchten. Die roten LEDs leuchten weiterhin nicht. Wenn der Halter Streaming-Daten an die STU sendet kann es dazu kommen das die roten LEDs immer wieder kurz in unregelmäßigen Intervallen blinken. Dies symbolisiert das Datenpakete bei der Funkübertragung verloren gegangen sind.

## CC:

Die CC besitzt 2 verschieden farbige LED Typen. Die eine ist die einzige LED in einer anderen Farbe als alle anderen. Wenn diese LED leuchtet ist die CC an die Versorgung angeschlossen und funktioniert.

Die restlichen LEDs haben alle eine andere Farbe als die erste. Diese LEDs symbolisieren den aktuell genutzten Ladestrom. Je mehr LEDs leuchten um so mehr Strom wird genutzt um den Halter zu laden. Wenn ein Halter in die CC eingelegt wird und alle LEDs, außer der ersten andersfarbigen LED, hören auf zu leuchten, ist der Halter auf seine maximale Spannung aufgeladen.

## SPU:

Die SPU hat mehrere LEDs. Die LEDs auf der oberen, linken Seite sind Status-LEDs welche die Versorgung und andere Parameter anzeigen. Wenn ein LAN-Kabel verbunden ist und das andere Ende des Kabels mit einem Netzwerk oder Computer verbunden ist, startet der LAN-Port zu blinken. Auf dem ersten Modul der SPU, dem CAN-Modul, befinden sich 2 LEDs. Diese signalisieren ob die CAN-Verbindung funktioniert oder nicht. Nach dem Starten der SPU braucht es etwa 30 Sekunden bis die LEDs anfangen grün zu leuchten. Wenn sie nicht leuchten oder rot leuchten muss die Verkabelung am CAN-Modul überprüft werde beziehungsweise die SPU neu gestartet werden. Das zweite Modul der SPU, das digitale Eingangs Modul, besitzt mehrere LEDs. Dieses LEDs symbolisieren ob an dem Jeweiligen PIN eine digitale 1 (LED leuchtet) oder eine 0 (LED leuchtet nicht) anliegt.