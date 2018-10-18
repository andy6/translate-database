@echo off

REM FOA
echo Rollbacking FOA Database... & @call ../liquibase/liquibase.bat --changeLogFile=install/install.xml --defaultsFile=liquibase.properties rollback=%1 && echo FOA Database was successfully rollbacked. & echo.
if not %errorlevel%==0 pause