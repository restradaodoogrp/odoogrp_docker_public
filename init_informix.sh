#!/bin/bash
FILE=//opt/IBM/Informix_Software_Bundle/ol_informix1410.ksh
if test -f "$FILE"; then
    echo $dbnameinformix"    onsoctcp    "$ipinformix"    "$puertoinformix > /opt/IBM/Informix_Software_Bundle/ol_informix1410.ksh
else
    echo linea6
fi
FILE2=/opt/IBM/Informix_Software_Bundle/etc/onconfig.ol_informix1410
DBSERVERNAME="DBSERVERNAME ol_informix1410"
DBSERVERNAMEALIAS="DBSERVERALIASES dr_informix1410, lo_informix1410"
REPLACEDBSERVERNAME="DBSERVERNAME 999999"
REPLACEDBSERVERNAMEALIAS="DBSERVERALIASES False"

if test -f "$FILE2"; 
 then
    sed -i "s/$DBSERVERNAME/$REPLACEDBSERVERNAME/" $FILE2
    sed -i "s/$DBSERVERNAMEALIAS/$REPLACEDBSERVERNAMEALIAS/" $FILE2
    sed -i "s/999999/${dbnameinformix}/" $FILE2
else
    echo linea18
fi

if [[ "${dbnameinformix}" ]]; then
    echo ${dbnameinformix}
else 
    echo linea25
fi
