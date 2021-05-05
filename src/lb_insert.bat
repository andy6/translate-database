@echo off

REM
echo Installing database... & @call ../liquibase/liquibase.bat --changeLogFile=install/insert.xml --defaultsFile=liquibase.properties validate clearCheckSums update && echo Database was successfully installed. & echo.
if not %errorlevel%==0 pause
