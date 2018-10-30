SET PGPASSWORD=postgres
set IP_SITE=192.168.3.
rem for %%F in (2,3,4,5,6,7,8,9,130,149,113,116,112,129,195,222,188) do (
rem	"C:\Program Files\PostgreSQL\9.5\bin\psql.exe" -h %IP_SITE%%%F -U postgres -d isrdb -p 5432 -f %~dp0insertPlatforms.sql
rem )
REM for %%F in (2,3,4,5,6,7,8,9) do (
REM 	rem call liquibase.bat --url jdbc:postgresql://%IP_SITE%%%F/eb --changeLogFile=install\insert.xml validate clearCheckSums update
REM 	"C:\Program Files\PostgreSQL\9.5\bin\psql.exe" -h %IP_SITE%%%F -U postgres -d eb -p 5432 -c "INSERT INTO main.t_config (id, name, caption, int_value) values (1, 'RPz', REM 'Identifikace vlastního ID_RESOURCE', 8);"
REM )
REM exit

for %%F in (2,3,4,5,6,7,8,9,149,112,113,129,180,195,222,230) do (
    echo jdbc:postgresql://%IP_SITE%%%F/eb

    call "C:\Program Files\PostgreSQL\9.5\bin\psql.exe" -h %IP_SITE%%%F -d eb -U postgres -w -c "TRUNCATE TABLE public.databasechangelog"

    echo Installing database... & @call ..\liquibase\liquibase.bat --changeLogFile=install\install.xml --url jdbc:postgresql://%IP_SITE%%%F/eb validate clearCheckSums update && echo Database was successfully installed. & echo.
	
    echo Inserting data into database... & @call ..\liquibase\liquibase.bat --changeLogFile=install\insert.xml --url jdbc:postgresql://%IP_SITE%%%F/eb  validate clearCheckSums update && echo Data was successfully inserted. & echo.
)
pause