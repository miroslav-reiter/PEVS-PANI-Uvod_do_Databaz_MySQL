CREATE TABLE Kurzy (KurzID INT PRIMARY KEY, Kurz_Meno VARCHAR(255) NOT NULL, Cena INT NOT NULL);

INSERT INTO Kurzy(KurzID, Kurz_Meno, Cena) VALUES
(1, 'Online Kurz SQL', 190),
(2, 'Online Kurz SAP', 480),
(3, 'Online Kurz Microsoft Excel', 145),
(4, 'Online Kurz Microsoft Word', 120),
(5, 'Online Kurz Microsoft PowerPoint', 115);

SELECT * FROM Kurzy;

----------------------------------------------------
-- 3 a 5 online kurz je iná cena + pridané 2 nové kurzy

CREATE TABLE Kurzy_Info (KurzID INT PRIMARY KEY, Kurz_Meno VARCHAR(255) NOT NULL, Cena INT NOT NULL);

INSERT INTO Kurzy_Info (KurzID, Kurz_Meno, Cena) VALUES
(1, 'Online Kurz SQL', 190),
(2, 'Online Kurz SAP', 480),
(3, 'Online Kurz Microsoft Excel', 198),
(4, 'Online Kurz Microsoft Word', 120),
(5, 'Online Kurz Microsoft PowerPoint', 115),
(6, 'Online Kurz MySQL', 250),
(7, 'Online Kurz ABAP', 560);

SELECT * FROM Kurzy_Info;
