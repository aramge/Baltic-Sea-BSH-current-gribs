BSH provides twice per day (around 10:00 and 22:00 local time) predictions of surface currents in GRIB2 format for
the North Sea, the Baltic and the River Elbe.  The elder GRIB1 format is supported as well.

The data are provided in seperate directories Nordsee, Ostsee and Elbe for the respective areas 
underneath directories grib1 and grib2 holding the data separate by format. Note: grib1 files are always 
compressed by bzip2, whereas grib2 files are presented both in uncompressed as well as compressed form.
The directory fixname for support of the program Expedition remains unchanged.

The uncompressed files are named Current_XX_YYYMMDDHH_VV.grb[2], where XX is an area identifier (see below, for 
example no for North Sea), YYYY is the year, MM is the month, DD is the day and HH is the hour of the analysis of 
the underlying DWD meteorological forecast (www.dwd.de), and VV describes the forecast day (relative to the day of 
the analysis).

In this naming-scheme XX represents the area of interest,

NorthSea:
   'no'  North Sea including The Channel to the West of Start Point       ca. 2MB in grib2-format
   'db'  German Bight                     ca.   6°-9.5°E 53°-58°N         ca. 3MB in grib2-format
   'idb' Inner German Bight               ca.  7.75°-9°E 53°-54.25°N      ca. 1MB in grib2-format
   'nfi' Area of North Frisian Islands    ca.  7.75°-9°E 54.25°-55.25°N   ca. 1MB in grib2-format
   'ofi' Area of East Frisian Islands     ca.  6°-7.75°E 53°-54.25°N      ca. 1MB in grib2-format


Baltic Sea:    
   'ba'  Baltic Sea including Kattegat and parts of Skagerrak                  ca.   2MB in grib2-format 
   'wb'  Western Baltic including Belts and Sound extending east to Bornholm   ca.   5MB in grib2-format 
   'kbu' Kiel Bight                     ca. 9.8°-11.3°E   53.9°-54.75°N        ca. 0.4MB in grib2-format 
   'mbu' Lübeck Bight                   ca. 10.75°-12.5°E 53.9°-54.75°N        ca. 0.3MB in grib2-format 
   'rgn' Area around the isle of Rügen  ca. 12.5°-14.5°E  53°-55°N             ca. 0.8MB in grib2-format 
   'snd' the Sound                      ca. 12.2°-13.1°E  56.1°-56.3°N         ca. 0.1MB in grib2-format 
   'blt' the Belts                      ca. 9.5°-11.3°E   54.7°-56°N           ca.   1MB in grib2-format 

All areas are given in approx. 0.5 nm resolution  except areas 'no' and 'ba' with approx 3nm horizontal resolution
and  river Elbe showing approx. 90m resolution.

River Elbe: 
   'AusAlt' Outer Elbe to Altenbruch  compressed (bz2) ca. 4MB as grib1, ca. 6MB in grib2-format  
   'CuxBru' Cuxhaven to Brunsbüttel   compressed (bz2) ca. 2MB as grib1, ca. 3MB in grib2-format 
   'BruPag' Brunsbüttel to Pagensand  compressed (bz2) ca. 1MB as grib1, ca. 2MB in grib2-format 
   'PagHam' Pagensand to Hambug       compressed (bz2) ca. 1MB as grib1, ca. 1MB in grib2-format
 
grib2 formatted files are available as bzip2 compressed as well, the size is of same order as uncompressed.

The data are stored at 15 min intervall, from 0015 to 2400 UTC. The data values represent the
uppermost layer of the model, i.e. the values are averages from the surface to
5 m depth or bottom depth, whichever is shallower.


Legal notice:

The BSH does not guarantee the functioning, completeness, accuracy or
up-to-dateness of the predicted current data.  Moreover, it will not be held
liable for any technical failures or malfunctioning resulting from errors in
data files or in the configuration of formats.



please report problems to: opmod(at-symbol)bsh.de
March 10th, 2021



Das BSH stellt ab sofort zwei Mal täglich (gegen 10:00 und 22:00 Uhr lokaler Zeit) Strömungsvorausberechnungen 
für Nord- und Ostsee sowie die Elbe im "GRIB2"-Format zur Verfügung. 
Das "alte" GRIB1 Format wird weiterhin unterstützt.

Die Dateien sind der Übersichtlichkeit halber jetzt auf die Verzeichnisse Nordsee,
Ostsee und Elbe verteilt, jeweils unterhalb der Verzeichnisse grib1 und grib2; zusätzlich wird 
das Verzeichnis fixname für Nutzer des Programms Expedition beibehalten.
Die Dateien des grib1 formats sind mit bzip2 komprimiert, grib2 werden in beiden Varianten vorgehalten.  

Die entkomprimierten Dateien haben die Bezeichnung Current_XX_YYYYMMDDHH_VV.grb[2], wobei XX eine 
Gebietskennung (siehe unten, zum Beispiel no für Nordsee) ist, YYYY das Jahr, MM den Monat, DD den 
Tag und HH die Stunde der Analyse der zu Grunde liegenden meteorologischen Vorhersage des DWD (www.dwd.de) 
bezeichnen, sowie VV den Vorhersagetag (relativ zum Tag der Analyse) beschreibt.

Im Dateinamen steht XX für die Region,
Nordsee:
   'no'  Nordsee einschließlich Englischer Kanal bis westl. Start Point      ca. 2MB als grib2
   'db'  Deutsche Bucht                      ca.   6°-9.5°E 53°-58°N         ca. 3MB als grib2
   'idb' innere Deutsche Bucht               ca.  7.75°-9°E 53°-54.25°N      ca. 1MB als grib2
   'nfi' das Gebiet der Nordfriesischen Inseln   ca.  7.75°-9°E 54.25°-55.25°N   ca. 1MB als grib2
   'ofi' das Gebiet der ostfriesischen Inseln    ca.  6°-7.75°E 53°-54.25°N      ca. 1MB als grib2

Ostsee:    
   'ba' gesamte Ostsee.                                                     ca.   2MB als grib2
   'wb' westliche Ostsee einschließlich Belte und Sund, östl. bis Bornholm  ca.   5MB als grib2
   'kbu' Kieler Bucht                ca. 9.8°-11.3°E   53.9°-54.75°N        ca. 0.4MB als grib2
   'mbu' Mecklenburger Bucht         ca. 10.75°-12.5°E 53.9°-54.75°N        ca. 0.3MB als grib2
   'rgn' Gebiet um Rügen             ca. 12.5°-14.5°E  53°-55°N             ca. 0.8MB als grib2
   'snd' Sund                        ca. 12.2°-13.1°E  56.1°-56.3°N         ca. 0.1MB als grib2
   'blt' Belte                       ca. 9.5°-11.3°E   54.7°-56°N           ca.   1MB als grib2

die Gebiete 'no' und 'ba' liegen mit ca. 3nm Auflösung vor, 
die Auflösung der anderen beträgt ca. 0.5nm, Elbe ca. 90 m.

Elbe:
   'AusAlt' für Aussenelbe bis Altenbruch  komprimiert (bz2) ca. 4MB als grib1, ca. 6MB als grib2 
   'CuxBru' für Cuxhaven bis Brunsbüttel   komprimiert (bz2) ca. 2MB als grib1, ca. 3MB als grib2
   'BruPag' für Brunsbüttel bis Pagensand  komprimiert (bz2) ca. 1MB als grib1, ca. 2MB als grib2
   'PagHam' für Pagensand bis Hambug       komprimiert (bz2) ca. 1MB als grib1, ca. 1MB als grib2
 
Grib2 Dateien in bzip2 komprimierter Form sind von etwa gleicher Größe wie unkomprimierte. 

In allen Dateien sind die Daten viertelstündlich abgelegt, von 0015 bis 2400 UTC.
Die Strömungswerte repräsentieren die oberste Modellschicht, d.h.  sie sind 
Mittelwerte für das vertikale Intervall von der Oberfläche bis 5 m Tiefe 
(oder bei flacherem Wasser als 5 m bis zum Boden).


Zu den Strömungsvorausberechnungen geben wir folgenden rechtlichen Hinweis:

Das BSH übernimmt keine Gewährleistung für die Funktionsfähigkeit,
Vollständigkeit, Genauigkeit und Aktualität der Vorhersagedaten.  Zudem wird
keine Haftung übernommen für durch fehlerhaft angelegte Dateien oder fehlerhaft
strukturierte Formate bedingte Unterbrechungen oder anderweitige technische
Störungen.


Bei Problemen wenden Sie sich bitte an: opmod(at-Zeichen)bsh.de
10. Maerz 2021
