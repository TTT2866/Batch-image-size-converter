@echo off
title Converter
color f
mode 40,10
echo %1
set filenamenoex=%~n1
set filename=%1
echo.
echo Converting file...
magick convert %filename% -resize 4000 %filenamenoex%%random%.jpg
exit