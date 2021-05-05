@echo off

REM
echo Rollbacking database... & @call ../liquibase/liquibase.bat --changeLogFile=install/install.xml --defaultsFile=liquibase.properties rollback=%1 && echo Database was successfully rollbacked. & echo.
if not %errorlevel%==0 pause