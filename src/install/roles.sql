CREATE ROLE foa LOGIN
  ENCRYPTED PASSWORD 'md54fb5559633905c8f6ce8956890fb665d'
  SUPERUSER INHERIT CREATEDB CREATEROLE REPLICATION;


  select passwd from pg_catalog.pg_shadow WHERE usename='foa';