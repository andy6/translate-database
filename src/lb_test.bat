@echo off

REM SIMULEB
echo Installing SIMULEB Database... & @call ../liquibase/liquibase.bat --changeLogFile=install/tests.xml --defaultsFile=liquibase.properties validate clearCheckSums update && echo SIMULEB Database was successfully installed. & echo.
if not %errorlevel%==0 pause
