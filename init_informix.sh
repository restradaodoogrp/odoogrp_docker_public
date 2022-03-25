#!/bin/bash
FILE=/opt/IBM/Informix_Software_Bundle/etc/sqlhosts.ol_informix1410
FILE2=/opt/IBM/Informix_Software_Bundle/etc/onconfig.ol_informix1410
DBSERVERNAME="DBSERVERNAME ol_informix1410"
DBSERVERNAMEALIAS="DBSERVERALIASES dr_informix1410, lo_informix1410"
REPLACEDBSERVERNAME="DBSERVERNAME 999999"
REPLACEDBSERVERNAMEALIAS="DBSERVERALIASES False"


if [[ "${dbnameinformix}" ]]; then

if [[ "${ipinformix}" ]]; then

if [[ "${puertoinformix}" ]]; then

if test -f "$FILE"; then
    echo $dbnameinformix"    onsoctcp    "$ipinformix"    "$puertoinformix > $FILE
else
    echo no encontro el 
fi

if test -f "$FILE2"; 
 then
    sed -i "s/$DBSERVERNAME/$REPLACEDBSERVERNAME/" $FILE2
    sed -i "s/$DBSERVERNAMEALIAS/$REPLACEDBSERVERNAMEALIAS/" $FILE2
    sed -i "s/999999/${dbnameinformix}/" $FILE2
else
    echo no encontro el archivo
fi

else 
    echo falta nombre db informix
fi
else 
    echo falta ip informix
fi
else 
    echo falta puerto informix
fi
