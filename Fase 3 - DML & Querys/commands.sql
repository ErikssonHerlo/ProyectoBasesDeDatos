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