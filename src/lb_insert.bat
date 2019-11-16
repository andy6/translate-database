@echo off

REM TRANSLATE
echo Installing TRANSLATE Database... & @call ../liquibase/liquibase.bat --changeLogFile=install/insert.xml --defaultsFile=liquibase.properties validate clearCheckSums update && echo TRANSLATE Database was successfully installed. & echo.
if not %errorlevel%==0 pause
