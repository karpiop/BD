DROP TABLE lezy_w_panstwie, zywi_sie, wystepuje, drzewa, akweny, zwierzeta, co_je, panstwa, kraina, klimat, kontynenty, gatunek, kategoria_zagrozenia, rodzina, gromada, krolestwo;

CREATE TABLE krolestwo (
	id INT IDENTITY (1,1) PRIMARY KEY,
	nazwa VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE gromada (
	id INT IDENTITY (1,1) PRIMARY KEY,
	nazwa VARCHAR(50) UNIQUE NOT NULL,
	krolestwoId INT REFERENCES krolestwo NOT NULL
);

CREATE TABLE rodzina (
	id INT IDENTITY (1,1) PRIMARY KEY,
	nazwa VARCHAR(50) UNIQUE NOT NULL,
	gromadaId INT REFERENCES gromada NOT NULL
);

CREATE TABLE kategoria_zagrozenia (
	id INT IDENTITY (1,1) PRIMARY KEY,
	kod CHAR(2) UNIQUE NOT NULL,
	opis VARCHAR(200),
	CHECK(kod LIKE '[A-Z][A-Z]')
);

CREATE TABLE gatunek (
	id INT IDENTITY (1,1) PRIMARY KEY,
	nazwa VARCHAR(100) UNIQUE NOT NULL,
	nazwa_lacinska VARCHAR(100) UNIQUE NOT NULL,
	dlugosc_zycia INT,
	ochrona VARCHAR(100),
	rodzinaId INT REFERENCES rodzina NOT NULL,
	katZagId INT REFERENCES kategoria_zagrozenia NOT NULL
);

CREATE TABLE kontynenty (
	id INT IDENTITY (1,1) PRIMARY KEY,
	nazwa VARCHAR(50) UNIQUE NOT NULL
);

CREATE TABLE klimat (	
	id INT IDENTITY (1,1) PRIMARY KEY,
	nazwa VARCHAR (20) UNIQUE NOT NULL,
	ilosc_por_roku INT,
	min_temp FLOAT,
	max_temp FLOAT,
	suma_opadow INT,
	CHECK(min_temp<=max_temp),
);

CREATE TABLE kraina (
	id INT IDENTITY (1,1) PRIMARY KEY,
	nazwa VARCHAR (20) UNIQUE NOT NULL,
	powierzchnia BIGINT,
	kontynentyId INT REFERENCES kontynenty NOT NULL,
	klimatId INT REFERENCES klimat NOT NULL,
);

CREATE TABLE panstwa (
	id INT IDENTITY (1,1) PRIMARY KEY,
	nazwa VARCHAR (20) UNIQUE NOT NULL
);

CREATE TABLE co_je(
	id INT IDENTITY (1,1) PRIMARY KEY,
	nazwa VARCHAR(20) UNIQUE NOT NULL	
);

CREATE TABLE zwierzeta(
	id INT PRIMARY KEY REFERENCES gatunek,
	wielkosc FLOAT,
	populacja BIGINT,
	co_jeId INT REFERENCES co_je
);

CREATE TABLE akweny(
	id INT IDENTITY (1,1) PRIMARY KEY,
	nazwa VARCHAR (20) UNIQUE NOT NULL,
	zasolenie FLOAT
);

CREATE TABLE drzewa(
	id INT PRIMARY KEY REFERENCES gatunek,
	wysokosc INT,
	grubosc_pnia INT,
	czy_iglaste BIT,
);

CREATE TABLE wystepuje(
	id INT IDENTITY (1,1) PRIMARY KEY,
	gatunekId INT REFERENCES gatunek NOT NULL,
	krainaId INT REFERENCES kraina,
	akwenyId INT REFERENCES akweny,
	CHECK(krainaId is NULL and akwenyId is not NULL or krainaId is not NULL and akwenyId is NULL)
);

CREATE TABLE zywi_sie(
	id INT IDENTITY (1,1) PRIMARY KEY,
	zwierzetaId INT REFERENCES zwierzeta NOT NULL,
	gatunekId INT REFERENCES gatunek NOT NULL,
);

CREATE TABLE lezy_w_panstwie(
	id INT IDENTITY (1,1) PRIMARY KEY,
	panstwaId INT REFERENCES panstwa NOT NULL,
	krainaId INT REFERENCES kraina NOT NULL,
);