
CREATE TABLE Kurz_DB_SQL.Tab_Produkty (
	ID_Produkt INT auto_increment NOT NULL,
	Nazov varchar(60) NULL,
	Cena FLOAT NULL,
	primary key(`ID_Produkt`)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_slovak_ci;

