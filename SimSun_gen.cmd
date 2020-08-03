@echo off
echo Enter path to folder (i.e. "models\props\*.png") without "" (must be .png at the end)
echo.
setlocal EnableDelayedExpansion

cd %~dp0\..

set /p enteredpath=
set "removepng=%enteredpath:*.png=%"

for /R %%I in (%enteredpath%) do call :process "%%~I"
goto :eof

:process
set texfullname=%~dpnx1
set texfullname=!texfullname:*%cd%\=!
set texfullname=%texfullname:\=/%

for %%J in ("%removepng%%~n1.*") do set texmaterial=%%J

call :output "%texfullname%" "%texmaterial%"
goto :eof

:output
echo material texture %1
echo {
echo 	shader "shaders/simsun_prop.fp"
echo }
echo.
