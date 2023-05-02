CREATE DATABASE Weather;
\c weather
CREATE SCHEMA data;
SET search_path='data';
CREATE TABLE Region(ID serial PRIMARY KEY, nam varchar(50));
CREATE TABLE Country(ID serial PRIMARY KEY, nam varchar(75), reg smallint, FOREIGN KEY (reg) REFERENCES Region(ID));
CREATE TABLE City(ID serial PRIMARY KEY, nam varchar(75), countr smallint, latit double precision, longit double precision, temp varchar(10), FOREIGN KEY (countr) REFERENCES Country(ID));
CREATE TABLE Measurement(cit smallint, temp double precision, tim timestamp, FOREIGN KEY (cit) REFERENCES City(ID));
CREATE TABLE Coastline(num smallint, dotnum smallint, latit double precision, longit double precision);
