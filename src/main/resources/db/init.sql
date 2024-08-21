-- execute using postgres
DROP DATABASE IF EXISTS registration_app_db;
DROP SCHEMA IF EXISTS registration_user;
DROP USER IF EXISTS registration_user;
DROP USER IF EXISTS registration_app;
CREATE USER registration_user WITH PASSWORD 'registration_user' CREATEDB;
CREATE USER registration_app WITH PASSWORD 'registration_app';
CREATE DATABASE registration_app_db with OWNER registration_user;


-- execute using created user above
CREATE EXTENSION if not exists "uuid-ossp";
CREATE SCHEMA  registration_user AUTHORIZATION registration_user;
ALTER USER registration_user SET search_path to 'registration_user';
GRANT ALL ON SCHEMA "registration_user" to registration_user;
GRANT ALL ON SCHEMA "registration_user" to registration_app;