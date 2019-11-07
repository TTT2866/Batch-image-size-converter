@echo off
title Converter
color f
mode 40,10
echo %1
echo File size is %~z1 kb

set d1=%date: =_% & set d2=%d1:/=_%
set filenamenoex=%~n1
set filename=%1
set number=%random%
if not exist %appdata%\ConvertCache\%d2% MD %appdata%\ConvertCache\%d2%
echo Converting file...
magick convert %filename% -resize 4000 %filenamenoex%%number%.jpg
echo Done.
FOR /F "usebackq" %%A IN ('%filenamenoex%%number%.jpg') DO set size=%%~zA 
if exist %filenamenoex%%number%.jpg (copy %filenamenoex%%number%.jpg %appdata%\ConvertCache\%d2% >nul) else (echo error.. dont know what to do lol)
echo New file size is %size% kb
pause
exit
