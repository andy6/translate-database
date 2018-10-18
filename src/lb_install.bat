@echo off

REM FOA
echo Installing FOA Database... & @call ../liquibase/liquibase.bat --changeLogFile=install/install.xml --defaultsFile=liquibase.properties validate clearCheckSums update && echo FOA Database was successfully installed. & echo.
if not %errorlevel%==0 pause
