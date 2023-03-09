-- 🛢️ Vytvorenie Databázy (CREATE)
CREATE DATABASE database_name
CHARACTER SET character_set_name
COLLATE collation_name;

-- 🔤 Vytvorenie Databázy bez Nastavenia Collate a Character Set (MySQL dá default latin1_swedish_ci)
CREATE DATABASE moja_testovacia_databaza;

-- 🔤 Vytvorenie Databázy ak Neexistuje (Ak by Existovala Nevypíše Chybu/Error a Skript pokračuje Ďalej)
CREATE DATABASE IF NOT EXISTS moja_testovacia_databaza;

-- 🔢 Vytvorenie Databázy s Nastavením Collate a Character Set
CREATE DATABASE moja_databaza CHARACTER SET utf8 COLLATE utf8_bin;


-- 🔢 Vytvorenie Databázy s Nastavením Collate a Character Set (Podpora Slovenského Jazyka)
CREATE DATABASE moja_databaza CHARACTER SET utf8 COLLATE utf8_general_ci;

-- 🔣 Vytvorenie Databázy s Nastavením Collate a Character Set (Podpora Slovenského Jazyka + Emojis + Čínske a Iné Znaky)
CREATE DATABASE moja_databaza CHARACTER SET utf8 COLLATE utf8mb4_slovak_ci;


-- 🔣 Zmena Databázy a jej Nastavení Collate a Character Set (MySQL dá default latin1_swedish_ci)
/*
ALTER DATABASE database_name
CHARACTER SET character_set_name
COLLATE collation_name;
*/

ALTER DATABASE moja_databaza CHARACTER SET utf8 COLLATE utf8_bin;

-- 🤓 Zoznam Všetkých Znakových Sád/Character Sets a Collation (SHOW)
SHOW CHARACTER SET;

-- 👓 Zoznam Všetkých Databáz (SHOW)
SHOW DATABASES;

-- 🗑️ Vymazanie Databázy (DROP) 
DROP DATABASE moja_databaza;

-- 🚀 Použitie Databázy (USE)
USE moja_databaza;
-- Dalsie SQL skripty...
