\connect "postgres"

SET client_min_messages = error;

\echo 'Initializing database...'

\echo 'Terminating database connections...'
SELECT 
  pg_terminate_backend(pg_stat_activity.pid)
FROM 
  pg_stat_activity
WHERE datname = '{database}'
  AND pid <> pg_backend_pid();

\echo 'Dropping existing database...'
DROP DATABASE IF EXISTS "{database}";

\echo 'Creating database...'
CREATE DATABASE "{database}"  OWNER = "Elysian";