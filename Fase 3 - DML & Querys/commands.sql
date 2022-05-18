SELECT 
   table_name, 
   column_name, 
   data_type 
FROM 
   information_schema.columns
WHERE 
   table_name = 'city';

   select table_catalog, table_schema, table_name from information_schema.tables where table_schema = 'horizontegt';

   DROP DATABASE IF EXISTS "horizontegt";
CREATE DATABASE "horizontegt";

SELECT * FROM "HorizonteGT".


\i DDL_PSQL.sql
\i DDL_Prueba.sql

psql -U postgres -d postgres -h localhost

\d horizontegt.personal_aeropuerto;

ALTER TABLE horizontegt.personal_aeropuerto ADD COLUMN "fecha_inicio" DATE NULL;
ALTER TABLE horizontegt.personal_aeropuerto DROP COLUMN "personal_aeropuertocol";

ALTER TABLE horizontegt.dias_plan_vuelo DROP COLUMN "dias_plan";
ALTER TABLE horizontegt.dias_plan_vuelo ADD COLUMN "dias_plan" TEXT [] NULL;

ALTER TABLE horizontegt.vuelo ADD COLUMN "distancia" DECIMAL(10,2) NULL;

ALTER TABLE horizontegt.vuelo ALTER COLUMN "hora_despegue" TYPE TIME;

ALTER TABLE horizontegt.vuelo DROP COLUMN "hora_despegue";
ALTER TABLE horizontegt.vuelo ADD COLUMN "hora_despegue" TIME NULL;

ALTER TABLE horizontegt.vuelo DROP COLUMN "hora_aterrizaje";
ALTER TABLE horizontegt.vuelo ADD COLUMN "hora_aterrizaje" TIME NULL;