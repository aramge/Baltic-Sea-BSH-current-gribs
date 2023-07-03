#!/bin/bash

# Baltic Sea:    
#    'ba'  Baltic Sea including Kattegat and parts of Skagerrak                  ca.   2MB in grib2-format 
#    'wb'  Western Baltic including Belts and Sound extending east to Bornholm   ca.   5MB in grib2-format 
#    'kbu' Kiel Bight                     ca. 9.8∞-11.3∞E   53.9∞-54.75∞N        ca. 0.4MB in grib2-format 
#    'mbu' L¸beck Bight                   ca. 10.75∞-12.5∞E 53.9∞-54.75∞N        ca. 0.3MB in grib2-format 
#    'rgn' Area around the isle of R¸gen  ca. 12.5∞-14.5∞E  53∞-55∞N             ca. 0.8MB in grib2-format 
#    'snd' the Sound                      ca. 12.2∞-13.1∞E  56.1∞-56.3∞N         ca. 0.1MB in grib2-format 
#    'blt' the Belts                      ca. 9.5∞-11.3∞E   54.7∞-56∞N           ca.   1MB in grib2-format 

REGION="wb"
BASEURL='ftp://ftp.bsh.de:/Stroemungsvorhersagen/grib2/Ostsee/'
mkdir gribs
LOCALNAME=gribs/$(curl ftp://ftp.bsh.de:/Stroemungsvorhersagen/grib2/Ostsee/ | awk '{ print $9 }' | grep "_${REGION}_.*00.grb2$" | sed 's/_00//g')
touch ${LOCALNAME}

for i in $(curl ftp://ftp.bsh.de:/Stroemungsvorhersagen/grib2/Ostsee/ | awk '{ print $9 }' | grep "_${REGION}_.*grb2$"); do
	curl ${BASEURL}${i} >> ${LOCALNAME}
done

mv ${LOCALNAME} ~/.xygrib/grib/

