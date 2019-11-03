@echo off
title Converter
color f
mode 40,10
echo %1
echo File size is %~z1 kb


set filenamenoex=%~n1
set filename=%1
set number=%random%
echo Converting file...
magick convert %filename% -resize 4000 %filenamenoex%%number%.jpg
echo Done.
FOR /F "usebackq" %%A IN ('%filenamenoex%%number%.jpg') DO set size=%%~zA 
echo New file size is %size% kb
pause
exit
