@echo off

echo Installing database... & @call ../liquibase/liquibase.bat --changeLogFile=install/install.xml --defaultsFile=liquibase.h2.properties validate clearCheckSums update && echo Database was successfully installed. & echo.
if not %errorlevel%==0 pause
