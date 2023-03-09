# 🔥 SQL Skripty

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

### 🔢 Vytvorenie Databázy s Nastavením Collate a Character Set
```sql
CREATE DATABASE moja_databaza CHARACTER SET utf8 COLLATE utf8_bin;

```

### 🔢 Zmena Databázy a jej Nastavení Collate a Character Set (MySQL dá default latin1_swedish_ci)
```sql
ALTER DATABASE database_name
CHARACTER SET character_set_name
COLLATE collation_name;
```

```sql
ALTER DATABASE moja_databaza CHARACTER SET utf8 COLLATE utf8_bin;

```

## 🗑️ Vymazanie Databázy (DROP) 
```sql
DROP DATABASE moja_databaza CHARACTER SET utf8 COLLATE utf8_bin;

```

## 🔌 Pripojenie sa na Databázu MySQL (WAMP)
Username: root
Password: bez hesla

## Použitie Databázy (USE)
```sql
USE moja_databaza;
-- Dalsie SQL skripty...
```
