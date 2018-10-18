@echo off

REM SIMULEB
echo Rollbacking SIMULEB Database... & @call ../liquibase/liquibase.bat --changeLogFile=install/install.xml --defaultsFile=liquibase-h2.properties rollback=%1 && echo SIMULEB Database was successfully rollbacked. & echo.
if not %errorlevel%==0 pause