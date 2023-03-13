# 🔥 SQL Skripty
## 🔌 Pripojenie sa na Databázu MySQL 
### WAMP, LAMP, MAMP, XAMPP
Username: root  
Password: bez hesla  

### WebSupport
Server Host: mariadb105.r2.websupport.sk  
Port: 3315  
DB názov: b9e5pkpc  
Username: b9e5pkpc  
Password: d9rjb4r3  
Socket: /tmp/mariadb105.sock 

**Collation (Radenie Znakov)** je **súbor pravidiel**, ktoré definujú, ako **porovnávať** a **triediť reťazce znakov**. Každé Collation v MySQL patrí do jednej znakovej sady. Každá sada znakov má aspoň jedno Collation a väčšina má 2 alebo viac Collation. Collation zoraďuje znaky na základe váh. Collation špecifikuje bitové vzory, ktoré predstavujú každý znak v množine údajov.

**Character Set (Znaková sada)** v MySQL je **sada znakov**, **kódovania** a **symbolov**, ktoré **sú v reťazci povolené**. MySQL obsahuje podporu znakovej sady, ktorá umožňuje ukladať údaje pomocou rôznych znakových sád a vykonávať porovnania podľa rôznych Collation. **Predvolená znaková sada** a **Collation servera MySQL** sú **utf8mb4** a **utf8mb4_0900_ai_c** (MySQL 8.0) a **latin1_swedish_ci** (MySQL 5.7). **Znakové sady** sa dajú **špecifikovať** na úrovni **servera**, **databázy**, **tabuľky**, **stĺpca** a **reťazca**.

## 🛢️ Vytvorenie Databázy (CREATE)
```sql
CREATE DATABASE database_name
CHARACTER SET character_set_name
COLLATE collation_name;
```

### 🔤 Vytvorenie Databázy bez Nastavenia Collate a Character Set (MySQL dá default latin1_swedish_ci)
```sql
CREATE DATABASE moja_testovacia_databaza;
```

### 🔤 Vytvorenie Databázy ak Neexistuje (Ak by Existovala Nevypíše Chybu/Error a Skript pokračuje Ďalej)
```sql
CREATE DATABASE IF NOT EXISTS moja_testovacia_databaza;
```

### 🔢 Vytvorenie Databázy s Nastavením Collate a Character Set
```sql
CREATE DATABASE moja_databaza CHARACTER SET utf8 COLLATE utf8_bin;

```

### 🔢 Vytvorenie Databázy s Nastavením Collate a Character Set (Podpora Slovenského Jazyka)
```sql
CREATE DATABASE moja_databaza CHARACTER SET utf8 COLLATE utf8_general_ci;
```

### 🔣 Vytvorenie Databázy s Nastavením Collate a Character Set (Podpora Slovenského Jazyka + Emojis + Čínske a Iné Znaky)
```sql
CREATE DATABASE moja_databaza CHARACTER SET utf8 COLLATE utf8mb4_slovak_ci;
```

### 🔣 Zmena Databázy a jej Nastavení Collate a Character Set (MySQL dá default latin1_swedish_ci)
```sql
ALTER DATABASE database_name
CHARACTER SET character_set_name
COLLATE collation_name;
```

```sql
ALTER DATABASE moja_databaza CHARACTER SET utf8 COLLATE utf8_bin;
```

![charset-collate](https://user-images.githubusercontent.com/24510943/223992669-2deb51f0-3b2e-4593-b2fc-7102d5e1a376.png)

### 🤓 Zoznam Všetkých Znakových Sád/Character Sets a Collation (SHOW)
```sql
SHOW CHARACTER SET;
```

### 👓 Zoznam Všetkých Databáz (SHOW)
```sql
SHOW DATABASES;
```

## 🗑️ Vymazanie Databázy (DROP) 
```sql
DROP DATABASE moja_databaza;
```

## 🚀 Použitie Databázy (USE)
```sql
USE moja_databaza;
-- Dalsie SQL skripty...
```

## 🧑 Vytvorenie Používateľov Users (CREATE USER)
```sql
CREATE USER 'miroslav'@'%' IDENTIFIED by 'passwd';
CREATE USER 'adam'@'localhost' IDENTIFIED BY 'password';
CREATE USER 'ivan' IDENTIFIED BY 'hesielko';
```
![user-account](https://user-images.githubusercontent.com/24510943/223992517-908b3644-87b1-4f2c-8ed0-78e56ca5d724.png)


## 👯 Vytvorenie Používateľa a súčasne Databázy s Rovnakým Menom/Názvom
```sql
CREATE USER 'martin'@'%' IDENTIFIED WITH mysql_native_password AS '***';
GRANT ALL PRIVILEGES ON *.* TO 'martin'@'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 
MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
CREATE DATABASE IF NOT EXISTS `martin`;
GRANT ALL PRIVILEGES ON `martin`.* TO 'martin'@'%';
```

### 👮 Vytvorenie Používateľa DBA s Oprávneniami (GRANT ALL PRIVILEGES ON)
```sql
CREATE USER 'DBA'@'%' IDENTIFIED WITH mysql_native_password AS '***';
GRANT ALL PRIVILEGES ON *.* TO 'DBA'@'%' REQUIRE NONE WITH GRANT OPTION MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;
```

### 🧑‍🤝‍🧑 Zoznam Používateľov
```sql
USE mysql;
select * from `users`;
select * from mysql.user;
```

### 🔑🤝‍🧑 Mená Používateľov a ich Zahashované Heslá
MySQL ukladá zoznam používateľských účtov v tabuľke user databáze mysql. Každému účtu MySQL je možné priradiť heslo, hoci používateľská tabuľka neuchováva verziu hesla vo forme čistého textu (plain test), ale z nej vypočítanú hodnotu hash.

[Dokumentácia Password Hashing in MySQL](https://dev.mysql.com/doc/refman/5.7/en/password-hashing.html)

```sql
USE mysql;
select user, authentication_string from mysql.user;
```

```sql
SELECT PASSWORD('tajne_heslo');
-- Pôvodná/Originálna hašovacia metóda vytvorila 16-bajtový reťazec
-- Vysledok> *68CBF6A17F0DCD533433E00047ED3A612FA526F0
```

```sql
SELECT PASSWORD('tajne_hesla');
--- Vysledok> *D203E60BE3A3494CA68435CBC10B943B53976BD6

```

## 📋 Tabuľky (Tables)
### 👩‍🏫 Zoznam Všetkých Tabuliek (SHOW)
```sql
SHOW TABLE;
-- SHOW TABLE FROM DATABAZA;
```

### 🔥 Vytvorenie Tabuľky (CREATE)
```sql
CREATE TABLE Kurz_DB_SQL.Tab_Produkty (
	ID_Produkt INT auto_increment NOT NULL,
	Nazov varchar(60) NULL,
	Cena FLOAT NULL,
	primary key(`ID_Produkt`)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_slovak_ci;
```
