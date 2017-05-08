INSERT INTO kategoria_zagrozenia VALUES ('EX','wymar³e');
INSERT INTO kategoria_zagrozenia VALUES ('EW','wymar³e na wolnoœci');
INSERT INTO kategoria_zagrozenia VALUES ('CR','krytycznie zagro¿one');
INSERT INTO kategoria_zagrozenia VALUES ('EN','zagro¿one');
INSERT INTO kategoria_zagrozenia VALUES ('VU','nara¿one');
INSERT INTO kategoria_zagrozenia VALUES ('NT','bliskie zagro¿enia');
INSERT INTO kategoria_zagrozenia VALUES ('LC','najmniejszej troski');
INSERT INTO kategoria_zagrozenia VALUES ('DD','brak danych');


INSERT INTO kontynenty VALUES('Afryka');
INSERT INTO kontynenty VALUES('Ameryka Po³udniowa');
INSERT INTO kontynenty VALUES('Ameryka Pó³nocna');
INSERT INTO kontynenty VALUES('Antarktyda');
INSERT INTO kontynenty VALUES('Australia');
INSERT INTO kontynenty VALUES('Azja');
INSERT INTO kontynenty VALUES('Europa');


INSERT INTO co_je VALUES('miêso¿erca');
INSERT INTO co_je VALUES('roœlino¿erca');
INSERT INTO co_je VALUES('wszystko¿erca');


INSERT INTO krolestwo VALUES ('zwierzêta');
INSERT INTO krolestwo VALUES ('roœliny');


INSERT INTO gromada VALUES ('ssaki',(SELECT id FROM krolestwo WHERE nazwa = 'zwierzêta'));
INSERT INTO gromada VALUES ('ptaki',(SELECT id FROM krolestwo WHERE nazwa = 'zwierzêta'));
INSERT INTO gromada VALUES ('gady',(SELECT id FROM krolestwo WHERE nazwa = 'zwierzêta'));
INSERT INTO gromada VALUES ('ryby',(SELECT id FROM krolestwo WHERE nazwa = 'zwierzêta'));
INSERT INTO gromada VALUES ('nagonasienne',(SELECT id FROM krolestwo WHERE nazwa = 'roœliny'));
INSERT INTO gromada VALUES ('okrytonasienne',(SELECT id FROM krolestwo WHERE nazwa = 'roœliny'));


INSERT INTO rodzina VALUES ('psowate',(SELECT id FROM gromada WHERE nazwa = 'ssaki'));
INSERT INTO rodzina VALUES ('chomikowate',(SELECT id FROM gromada WHERE nazwa = 'ssaki'));
INSERT INTO rodzina VALUES ('p³etwalowate',(SELECT id FROM gromada WHERE nazwa = 'ssaki'));
INSERT INTO rodzina VALUES ('delfinowate',(SELECT id FROM gromada WHERE nazwa = 'ssaki'));
INSERT INTO rodzina VALUES ('kormorany',(SELECT id FROM gromada WHERE nazwa = 'ptaki'));
INSERT INTO rodzina VALUES ('aligatorowate',(SELECT id FROM gromada WHERE nazwa = 'gady'));
INSERT INTO rodzina VALUES ('po³ozowate',(SELECT id FROM gromada WHERE nazwa = 'gady'));
INSERT INTO rodzina VALUES ('karpiowate',(SELECT id FROM gromada WHERE nazwa = 'ryby'));
INSERT INTO rodzina VALUES ('sosnowate',(SELECT id FROM gromada WHERE nazwa = 'nagonasienne'));
INSERT INTO rodzina VALUES ('mi³orzêbowate',(SELECT id FROM gromada WHERE nazwa = 'nagonasienne'));
INSERT INTO rodzina VALUES ('cyprysowate',(SELECT id FROM gromada WHERE nazwa = 'nagonasienne'));
INSERT INTO rodzina VALUES ('bukowate',(SELECT id FROM gromada WHERE nazwa = 'okrytonasienne'));
INSERT INTO rodzina VALUES ('arekowate',(SELECT id FROM gromada WHERE nazwa = 'okrytonasienne'));



INSERT INTO gatunek VALUES ('wilk szary','canis lupus',14,'œcis³a ochrona gatunkowa',(SELECT id FROM rodzina WHERE nazwa = 'psowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO zwierzeta VALUES (IDENT_CURRENT('gatunek'),115,90000,(SELECT id FROM co_je WHERE nazwa = 'miêso¿erca'));
INSERT INTO gatunek VALUES ('lis polarny','vulpes lagopus',13,NULL,(SELECT id FROM rodzina WHERE nazwa = 'psowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO zwierzeta VALUES (IDENT_CURRENT('gatunek'),90,NULL,(SELECT id FROM co_je WHERE nazwa = 'miêso¿erca'));
INSERT INTO gatunek VALUES ('leming norweski','lemmus lemmus',13,NULL,(SELECT id FROM rodzina WHERE nazwa = 'chomikowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO zwierzeta VALUES (IDENT_CURRENT('gatunek'),NULL,NULL,(SELECT id FROM co_je WHERE nazwa = 'roœlino¿erca'));
INSERT INTO gatunek VALUES ('kormoran zwyczajny','phalacrocorax carbo',NULL,'czêœciowa ochrona gatunkowa',(SELECT id FROM rodzina WHERE nazwa = 'kormorany'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO zwierzeta VALUES (IDENT_CURRENT('gatunek'),90,NULL,(SELECT id FROM co_je WHERE nazwa = 'miêso¿erca'));
INSERT INTO gatunek VALUES ('p³etwal b³êkitny','balaenoptera musculus',80,'œcis³a ochrona gatunkowa',(SELECT id FROM rodzina WHERE nazwa = 'p³etwalowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'EN'));
	INSERT INTO zwierzeta VALUES (IDENT_CURRENT('gatunek'),3300,NULL,(SELECT id FROM co_je WHERE nazwa = 'miêso¿erca'));
INSERT INTO gatunek VALUES ('orka oceaniczna','Orcinus orca',70,NULL,(SELECT id FROM rodzina WHERE nazwa = 'delfinowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'DD'));
	INSERT INTO zwierzeta VALUES (IDENT_CURRENT('gatunek'),800,NULL,(SELECT id FROM co_je WHERE nazwa = 'miêso¿erca'));
INSERT INTO gatunek VALUES ('aligator amerykañski','alligator mississippiensis',50,NULL,(SELECT id FROM rodzina WHERE nazwa = 'aligatorowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO zwierzeta VALUES (IDENT_CURRENT('gatunek'),350,1000000,(SELECT id FROM co_je WHERE nazwa = 'miêso¿erca'));
INSERT INTO gatunek VALUES ('kajman okularowy','caiman crocodilus',NULL,NULL,(SELECT id FROM rodzina WHERE nazwa = 'aligatorowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO zwierzeta VALUES (IDENT_CURRENT('gatunek'),200,1000000,(SELECT id FROM co_je WHERE nazwa = 'miêso¿erca'));
INSERT INTO gatunek VALUES ('zaskroniec zwyczajny','natrix natrix',15,'czêœciowa ochrona gatunkowa',(SELECT id FROM rodzina WHERE nazwa = 'po³ozowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO zwierzeta VALUES (IDENT_CURRENT('gatunek'),100,NULL,(SELECT id FROM co_je WHERE nazwa = 'miêso¿erca'));
INSERT INTO gatunek VALUES ('karp','cyprinus carpio',NULL,'brak ochrony',(SELECT id FROM rodzina WHERE nazwa = 'karpiowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'VU'));
	INSERT INTO zwierzeta VALUES (IDENT_CURRENT('gatunek'),100,NULL,(SELECT id FROM co_je WHERE nazwa = 'wszystko¿erca'));


INSERT INTO gatunek VALUES ('sosna zwyczajna','pinus sylvestris',NULL,NULL,(SELECT id FROM rodzina WHERE nazwa = 'sosnowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO drzewa VALUES (IDENT_CURRENT('gatunek'),30,90,1);
INSERT INTO gatunek VALUES ('modrzew polski','larix polonica',NULL,NULL,(SELECT id FROM rodzina WHERE nazwa = 'sosnowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'VU'));
	INSERT INTO drzewa VALUES (IDENT_CURRENT('gatunek'),30,NULL,1);
INSERT INTO gatunek VALUES ('d¹b szypu³kowy','quercus robur',700,NULL,(SELECT id FROM rodzina WHERE nazwa = 'bukowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO drzewa VALUES (IDENT_CURRENT('gatunek'),30,250,0);
INSERT INTO gatunek VALUES ('d¹b bezszypu³kowy','quercus petraea',NULL,NULL,(SELECT id FROM rodzina WHERE nazwa = 'bukowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO drzewa VALUES (IDENT_CURRENT('gatunek'),40,NULL,0);
INSERT INTO gatunek VALUES ('palma kokosowa','cocos nucifera',NULL,NULL,(SELECT id FROM rodzina WHERE nazwa = 'arekowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO drzewa VALUES (IDENT_CURRENT('gatunek'),30,NULL,0);
INSERT INTO gatunek VALUES ('palma daktylowa','phoenix dactylifera',NULL,NULL,(SELECT id FROM rodzina WHERE nazwa = 'arekowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'LC'));
	INSERT INTO drzewa VALUES (IDENT_CURRENT('gatunek'),20,NULL,0);
INSERT INTO gatunek VALUES ('mi³orz¹b dwuklapowy','ginkgo biloba',1000,NULL,(SELECT id FROM rodzina WHERE nazwa = 'mi³orzêbowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'EN'));
	INSERT INTO drzewa VALUES (IDENT_CURRENT('gatunek'),35,NULL,0);
INSERT INTO gatunek VALUES ('sekwoja wieczniezielona','sequoia sempervirens',2000,NULL,(SELECT id FROM rodzina WHERE nazwa = 'cyprysowate'),(SELECT id FROM kategoria_zagrozenia WHERE kod = 'EN'));
	INSERT INTO drzewa VALUES (IDENT_CURRENT('gatunek'),100,500,1);


INSERT INTO klimat VALUES ('równikowy',1,15,25,60);
INSERT INTO klimat VALUES ('œródziemnomorski',4,0,20,NULL);
INSERT INTO klimat VALUES ('umiarkowany',4,-10,20,NULL);
INSERT INTO klimat VALUES ('oko³obiegunowy',2,-70,+5,NULL);
INSERT INTO klimat VALUES ('zwrotnikowy',2,10,35,NULL);

INSERT INTO panstwa VALUES ('USA');
INSERT INTO panstwa VALUES ('Norwegia');
INSERT INTO panstwa VALUES ('Szwecja');
INSERT INTO panstwa VALUES ('Finlandia');
INSERT INTO panstwa VALUES ('Polska');
INSERT INTO panstwa VALUES ('Dania');
INSERT INTO panstwa VALUES ('Rosja');

INSERT INTO kraina VALUES ('Antarktyda',14000000,(SELECT id FROM kontynenty WHERE nazwa = 'Antarktyda'),(SELECT id FROM klimat WHERE nazwa = 'oko³obiegunowy'));
INSERT INTO kraina VALUES ('Skandynawia',800000,(SELECT id FROM kontynenty WHERE nazwa = 'Europa'),(SELECT id FROM klimat WHERE nazwa = 'oko³obiegunowy'));
INSERT INTO kraina VALUES ('Oregon',255026,(SELECT id FROM kontynenty WHERE nazwa = 'Ameryka Pó³nocna'),(SELECT id FROM klimat WHERE nazwa = 'umiarkowany'));
INSERT INTO kraina VALUES ('Kalifornia', 424345,(SELECT id FROM kontynenty WHERE nazwa = 'Ameryka Pó³nocna'),(SELECT id FROM klimat WHERE nazwa = 'umiarkowany'));
INSERT INTO kraina VALUES ('Polska', 424345,(SELECT id FROM kontynenty WHERE nazwa = 'Europa'),(SELECT id FROM klimat WHERE nazwa = 'umiarkowany'));
INSERT INTO kraina VALUES ('Syberia', 12700000,(SELECT id FROM kontynenty WHERE nazwa = 'Azja'),(SELECT id FROM klimat WHERE nazwa = 'oko³obiegunowy'));

INSERT INTO akweny VALUES ('Ocean Atlantycki',35);
INSERT INTO akweny VALUES ('Ocean Spokojny', 35);
INSERT INTO akweny VALUES ('Ocean Indyjski', 34.8);

INSERT INTO lezy_w_panstwie VALUES ((SELECT id FROM panstwa WHERE nazwa = 'Norwegia'),(SELECT id FROM kraina WHERE nazwa = 'Skandynawia'));
INSERT INTO lezy_w_panstwie VALUES ((SELECT id FROM panstwa WHERE nazwa = 'Finlandia'),(SELECT id FROM kraina WHERE nazwa = 'Skandynawia'));
INSERT INTO lezy_w_panstwie VALUES ((SELECT id FROM panstwa WHERE nazwa = 'Szwecja'),(SELECT id FROM kraina WHERE nazwa = 'Skandynawia'));
INSERT INTO lezy_w_panstwie VALUES ((SELECT id FROM panstwa WHERE nazwa = 'Dania'),(SELECT id FROM kraina WHERE nazwa = 'Skandynawia'));
INSERT INTO lezy_w_panstwie VALUES ((SELECT id FROM panstwa WHERE nazwa = 'USA'),(SELECT id FROM kraina WHERE nazwa = 'Oregon'));
INSERT INTO lezy_w_panstwie VALUES ((SELECT id FROM panstwa WHERE nazwa = 'USA'),(SELECT id FROM kraina WHERE nazwa = 'Kalifornia'));
INSERT INTO lezy_w_panstwie VALUES ((SELECT id FROM panstwa WHERE nazwa = 'Rosja'),(SELECT id FROM kraina WHERE nazwa = 'Syberia'));

INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'sekwoja wieczniezielona'),(SELECT id FROM kraina WHERE nazwa = 'Oregon'),NULL);
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'sekwoja wieczniezielona'),(SELECT id FROM kraina WHERE nazwa = 'Kalifornia'),NULL);
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'lis polarny'),(SELECT id FROM kraina WHERE nazwa = 'Skandynawia'),NULL);
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'leming norweski'),(SELECT id FROM kraina WHERE nazwa = 'Skandynawia'),NULL);
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'modrzew polski'),(SELECT id FROM kraina WHERE nazwa = 'Polska'),NULL);
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'sosna zwyczajna'),(SELECT id FROM kraina WHERE nazwa = 'Polska'),NULL);
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'sosna zwyczajna'),(SELECT id FROM kraina WHERE nazwa = 'Skandynawia'),NULL);
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'sosna zwyczajna'),(SELECT id FROM kraina WHERE nazwa = 'Syberia'),NULL);
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'wilk szary'),(SELECT id FROM kraina WHERE nazwa = 'Polska'),NULL);
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'wilk szary'),(SELECT id FROM kraina WHERE nazwa = 'Syberia'),NULL);
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'p³etwal b³êkitny'), NULL, (SELECT id FROM akweny WHERE nazwa = 'Ocean Atlantycki'));
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'p³etwal b³êkitny'), NULL, (SELECT id FROM akweny WHERE nazwa = 'Ocean Indyjski'));
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'p³etwal b³êkitny'), NULL, (SELECT id FROM akweny WHERE nazwa = 'Ocean Spokojny'));
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'orka oceaniczna'), NULL, (SELECT id FROM akweny WHERE nazwa = 'Ocean Atlantycki'));
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'orka oceaniczna'), NULL, (SELECT id FROM akweny WHERE nazwa = 'Ocean Indyjski'));
INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'orka oceaniczna'), NULL, (SELECT id FROM akweny WHERE nazwa = 'Ocean Spokojny'));

INSERT INTO zywi_sie VALUES ((SELECT id FROM gatunek WHERE nazwa = 'lis polarny'),(SELECT id FROM gatunek WHERE nazwa = 'leming norweski'));



INSERT INTO wystepuje VALUES ((SELECT id FROM gatunek WHERE nazwa = 'orka oceaniczna'), (SELECT id FROM kraina WHERE nazwa = 'Syberia'), (SELECT id FROM akweny WHERE nazwa = 'Ocean Spokojny'));
INSERT INTO klimat VALUES ('zwrotnikowy',2,10,-35,NULL);
INSERT INTO kategoria_zagrozenia VALUES ('D6','brak danych');