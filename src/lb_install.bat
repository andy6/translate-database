@echo off
for /f "tokens=3-5 delims=:\ " %%i in ('FINDSTR /B /C:"url" .\liquibase.properties') do (
  set url=%%i:%%j:%%k
)
SET PGPASSWORD=a
echo %url%
call "C:\Program Files\PostgreSQL\9.5\bin\psql.exe" -d %url% -U andy -w -c "TRUNCATE TABLE public.databasechangelog; DROP schema IF EXISTS main CASCADE;

REM TRANSLATE
echo Installing TRANSLATE Database... & @call ../liquibase/liquibase.bat --changeLogFile=install/install.xml --defaultsFile=liquibase.properties validate clearCheckSums update && echo TRANSLATE Database was successfully installed. & echo.
if not %errorlevel%==0 pause
