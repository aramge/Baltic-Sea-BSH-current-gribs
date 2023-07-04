#!/bin/bash

TARGETDIR="~/.xygrib/grib/"

if [ $# -eq 0 ]
then
cat << EOF
usage: $0 region [region] [...]

where 'region' is as follows:

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

EOF
exit 1
fi

for REGION in ${@}; do
	case $REGION in
		no)			MAINREGION="Nordsee" ;;
		db)			MAINREGION="Nordsee" ;;
		idb)		MAINREGION="Nordsee" ;;
		nfi)		MAINREGION="Nordsee" ;;
		ofi)		MAINREGION="Nordsee" ;;
		ba)			MAINREGION="Ostsee" ;;
		wb)			MAINREGION="Ostsee" ;;
		kbu)		MAINREGION="Ostsee" ;;
		mbu)		MAINREGION="Ostsee" ;;
		rgn)		MAINREGION="Ostsee" ;;
		snd)		MAINREGION="Ostsee" ;;
		blt)		MAINREGION="Ostsee" ;;
		AusAlt)		MAINREGION="Elbe" ;;
		CuxBru)		MAINREGION="Elbe" ;;
		BruPag)		MAINREGION="Elbe" ;;
		PagHam)		MAINREGION="Elbe" ;;
		*)			echo "Don't know what to do with \"${REGION}\"" && exit 2 ;;
	esac
	LOCALNAME=${TMPDIR}/$(curl ftp://ftp.bsh.de:/Stroemungsvorhersagen/grib2/${MAINREGION}/ | \
		awk '{ print $9 }' | \
		grep "_${REGION}_.*00.grb2$" | \
		sed 's/_00//g')
	touch ${LOCALNAME}
	BASEURL="ftp://ftp.bsh.de:/Stroemungsvorhersagen/grib2/${MAINREGION}/"
	for i in $(curl ftp://ftp.bsh.de:/Stroemungsvorhersagen/grib2/${MAINREGION}/ | \
			awk '{ print $9 }' | \
			grep "_${REGION}_.*grb2$"); do
		curl ${BASEURL}${i} >> ${LOCALNAME}
	done
	mv ${LOCALNAME} ~/.xygrib/grib/
done
