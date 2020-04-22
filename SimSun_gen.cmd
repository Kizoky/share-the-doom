@echo off
setlocal EnableDelayedExpansion

cd %~dp0\..

for /R %%I in (models\props\*.png) do call :process "%%~I"
goto :eof

:process

set texfullname=%~dpnx1
set texfullname=!texfullname:*%cd%\=!
set texfullname=%texfullname:\=/%

for %%J in ("models\props\%~n1.*") do set texmaterial=%%J

call :output "%texfullname%" "%texmaterial%"
goto :eof

:output
echo material texture %1
echo {
echo 	shader "shaders/simsun_prop.fp"
echo }
echo.
