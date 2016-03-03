@echo off
echo "#### Tempor„re Dateien l”schen..."
echo "delete: tmp\fewo_list.xml, tmp\bookings_list.xml, tmp\bookings_print.fo tmp\bookings_print.xml, tmp\bookings_print.xsl"
del tmp\fewo_list.xml 
del tmp\bookings_list.xml 
del tmp\bookings_print.fo 
del tmp\bookings_print.xml 
del tmp\bookings_print.xsl 

echo "#### Daten vom HTTP-Server holen..."
cd tmp  
..\wget\wget.exe http://xmlfs15.mysolutions.dynalias.com:8085/xml/fewo_list.xml 
..\wget\wget.exe http://xmlfs15.mysolutions.dynalias.com:8085/xml/bookings_list.xml 
..\wget\wget.exe http://xmlfs15.mysolutions.dynalias.com:8085/xml/bookings_print.xml 
..\wget\wget.exe http://xmlfs15.mysolutions.dynalias.com:8085/xml/bookings_print.xsl 
cd .. 

echo "#### Transformiere die XML-Datei zu einer FO-Datei ..."
rem translater\msxsl.exe -pi tmp\bookings_print.xml -o tmp\bookings_print.fo
translater\msxsl.exe tmp\bookings_print.xml tmp\bookings_print.xsl -o tmp\bookings_print.fo

echo "#### PDF-Datei erzeugen..."
call fop\fop.cmd tmp\bookings_print.fo booking_receipt.pdf

pause