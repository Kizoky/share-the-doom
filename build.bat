@echo off
for /f "tokens=2 delims==" %%a in ('wmic OS Get localdatetime /value') do set "dt=%%a"
set "YY=%dt:~2,2%" & set "YYYY=%dt:~0,4%" & set "MM=%dt:~4,2%" & set "DD=%dt:~6,2%"
set "HH=%dt:~8,2%" & set "Min=%dt:~10,2%" & set "Sec=%dt:~12,2%"

set "datestamp=.%MM%.%DD%.%YYYY%" & set "timestamp=%HH%:%Min%:%Sec%"
set "datewithoutdot=%MM%.%DD%.%YYYY%"

tools\7za a -tzip -mm=Deflate -mx=5 -x!"*.git*" -x!"maps\*.backup*" -x!"*graphics\*.db*" -x!"*textures\*.db*" -x!"*patches\*.db*" -x!"*sprites\*.db*" -x!"*\.bak*" -x!"tools" -x!"source\UDMF*" -x!"build.bat" -x!"patches\unfinished" -x!"textures\unfinished" -x!"sprites\gore\unfinished" -x!"sprites\decoration\unfinished" -x!"sounds\replace" -x!"graphics\unfinished" -x!"build" -x!"*.pk3" -x!"*.md*" GZPostal%datestamp%.pk3 *

echo .
echo .
echo . 
echo .
echo Built/Updated a PK3 with date %datewithoutdot% on %timestamp%
pause