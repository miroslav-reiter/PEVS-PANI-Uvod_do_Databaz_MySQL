-- 🧑 Vytvorenie Používateľov Users (CREATE USER)
CREATE USER 'miroslav'@'%' IDENTIFIED by 'passwd';
CREATE USER 'adam'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'ivan' IDENTIFIED BY 'hesielko';

-- 👯 Vytvorenie Používateľa a súčasne Databázy s Rovnakým Menom/Názvom
CREATE USER 'martin'@'%' IDENTIFIED WITH mysql_native_password AS '***';
GRANT ALL PRIVILEGES ON *.* TO 'martin'@'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
CREATE DATABASE IF NOT EXISTS `martin`;
GRANT ALL PRIVILEGES ON `martin`.* TO 'martin'@'%';

--  👮 Vytvorenie Používateľa DBA s Oprávneniami (GRANT ALL PRIVILEGES ON)
CREATE USER 'DBA'@'%' IDENTIFIED WITH mysql_native_password AS '***';
GRANT ALL PRIVILEGES ON *.* TO 'DBA'@'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

-- 🧑‍🤝‍🧑 Zoznam Používateľov
USE mysql;
select * from `users`;
select * from mysql.user;

-- 🔑🤝‍🧑 Mená Používateľov a ich Zahashované Heslá
USE mysql;
select user, authentication_string from mysql.user;

SELECT PASSWORD('tajne_heslo');
-- Pôvodná/Originálna hašovacia metóda vytvorila 16-bajtový reťazec
-- Vysledok> *68CBF6A17F0DCD533433E00047ED3A612FA526F0

SELECT PASSWORD('tajne_hesla');
--- Vysledok> *D203E60BE3A3494CA68435CBC10B943B53976BD6