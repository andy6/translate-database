@echo off
set pgpassword=postgres
REM call "C:\Program Files\PostgreSQL\9.5\bin\psql.exe" -d %url% -U postgres -w -c "TRUNCATE TABLE public.databasechangelog"


echo %url%
echo Installing database... & @call ../liquibase/liquibase.bat --url=jdbc:%url% --password=postgres --username=postgres --changeLogFile=install/install.xml validate clearCheckSums update && echo Database was successfully installed. & echo.
if not %errorlevel%==0 (
	set /p input=Stisknete Enter pro ukonceni
	exit 1
)


echo Inserting data into database... & @call ../liquibase/liquibase.bat --url=jdbc:%url% --password=postgres --username=postgres  --changeLogFile=install/insert.xml validate clearCheckSums update && echo Data was successfully inserted. & echo.
if not %errorlevel%==0 (
	set /p input=Stisknete Enter pro ukonceni
	exit 1
)

