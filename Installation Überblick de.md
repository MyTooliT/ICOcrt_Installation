# Installation Überblick de

Dokument, mit Informationen über die Installation, das vor der Installation an den Kunden weitergegeben wird.

## Vor der Installation			  			

1. Aufstellort für die SPU (Signal Processing Unit) nahe an der Maschine (im Idealfall im Schaltschrank) abklären.
2. Festlegen wie die SPU mit Strom (230V~, normale Steckdose) versorgt werden kann (ev. Verlängerungskabel benötigt)
3. Möglichkeit abklären, wie das Empfängerkabel aus dem Maschinenraum zur SPU geführt  werden kann. Das Kabel hat etwa 6mm Durchmesser, der Stecker (XLR) hat  19mm Durchmesser und ist 5m lang.
4. Vorbereiten der Maschinenanbindung (Steuerungsschnittstelle) seitens des  Maschinenherstellers (siehe Schnittstellenspezifikation).
5. Vorbereitung von Versuchsmaterial und Versuchswerkzeugen

## Für die Installation				  			

1. Sichten der Schaltpläne für die Lokalisation der richtigen Klemmen im Schaltschrank.
2. Bitte eine Person der Haustechnik beistellen,um die Verkabelung begleitet durchzuführen.
3. Bitte einen Maschinenbediener beistellen um die Funktion des analogen-Overrides zu überprüfen.
4. Verkabelung für die analogen “Override Signale” und der Digitalausgang für M-Befehl “ICOtronic aktiv” (siehe Schnittstellenspezifikation).
   Typisch Litzen-Kabel: in verschiedenen Farben (Ihre Haustechnik hat hier  vermutlich Konventionen, nach denen wir uns gerne richten).Querschnitt üblicherweise 0,75 mm^2, welche nur Niederspannung führen. Auch hier  halten wir uns gerne an Ihre Konventionen. Diese Kabel müssen aus dem  Schaltschrank bis zum Aufstellort der SPU reichen (max 6 parallel)
5. Kabelenden müssen für Maschine und ICOtronic System entsprechend konfektioniert  werden. (Schraubklemmen ICOtronic seitig, also beispielsweise  Aderendhülse). 
6. Beschriftungsgerät oder Klebe-Label um die Kabel zu kennzeichnen.
7. Material um Kabel zu fixieren (Kabelbinder, ...)
8. Laptop mit Windows Betriebssystem und Adminberechtigung, sowie bereits installierter LabView Runtime; downloadlink → http://www.ni.com/download/labview-run-time-engine-2018/7383/en/) 
9. Ethernetkabel um die SPU Box mit dem Laptop zu verbinden

## Während der Installation	  			

1. Die Komponenten (SPU, STU) behelfsmäßig an der Maschine platziert und die Kabelführung abstimmen.
2. Die Haustechnik verlegt und konfektioniert die Leitungen zwischen Maschine und ICOtronic System.
3. Das  ICOtronic System wir in einen Testmodus versetzt um die definierten  Kontroll-Spannungen (Override) an die Maschine zu senden und die  digitalen Eingänge zu lesen.
4. Gemeinsam  mit der Haustechnik wird die Richtigkeit der Verkabelung überprüft. Dies geschieht durch Nachmessen der Spannungen an den entsprechenden  Klemmstellen.
5. Verläuft  dieser Test positiv überprüft der Maschinenbediener die korrekte  Verrechnung der analogen-Steuerspannungen auf die entsprechenden  Variablen in der Maschinensteuerung.
6. Der Maschinenbediener schaltet den M-Befehl für die Aktivierung um zu überprüfen ob dieses Signal richtig gelesen wird.
7. Mithilfe  von Luftschnitten wird verifiziert, dass M-Befehl und Override in  normalen NC-Programmen zusammenspielen. Dazu erstellt der  Maschinenbediener ein NC-Programm mit zwei identen Bahnen, in welchem  eine ohne aktivierung gefahren wird und eine weitere mit aktiviertem  M-Befehl.
8. Das System wird in den regulären-Messmodus versetzt und ein sensorischer Halter  eingewechselt. Es werden Werkzeug-Wechsel-Zyklen durchgeführt und  verschiedene Positionen angefahren um die Funkverbindung zwischen STU  und Halter zu testen.
9. Es werden Testschnitte mit dem sensorischen Werkzeughalter durchgeführt.

## Nach der Installation			  			

Nach einer erfolgreichen Installation des Systems empfiehlt es sich  noch ein paar Tests zu fahren und dadurch das System für den  Anwendungsfall perfekt einzustellen.
Benötigte Personen/Materialien:

- Jemand der den Laptop bedient
- Ein Maschinenbediener
- Ein Werkzeug
- Ein Testwerkstoff

Dieses Optimieren de Systems kann je nach Art des Ratterns,  Schnittdauer, Erfahrung im Einstellen des Systems und Erfahrung des  Maschinenbedieners von etwa einer Stunde bis hin zu mehreren Stunden  dauern.

Folgende Schritte sind zu erledigen:

- Mit dem Halter zunächst Luftschnitte fahren und testen ob alle Signale richtig ankommen.
- Einen normalen Schnitt, mit deaktivierter Regelung, fahren, bei dem  es typisch zu Rattern kommen kann. Dabei die Werte im Dashboard  betrachten um Werte notieren.
- Anhand der notierten Werte die Parameter im Dashboard einstellen und einen Schnitt fahren mit aktiver Regelung.
- Sollte der Schnitt noch nicht gut genug geregelt sein, die Werte  anhand der Ergebnisse aus den Vergangen Schnitten anpassen und erneut  einen Schnitt fahren.
- Wenn der Schnitt passend geregelt ist, sollten die Werte notiert werden um sie später im Betrieb nutzen zu können.