-- Création de la table band puisqu'elle n'existe pas dans le schéma initial
CREATE TABLE IF NOT EXISTS band (     bandName varchar(50),
                                        creation int,
                                        genre varchar(50),
                                        PRIMARY KEY(bandName));

INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna",2009,"classical"), ("Mysterio", 2019, "pop");

ALTER TABLE singer RENAME TO musician;

ALTER TABLE musician
CHANGE singerName musicianName varchar(50);

ALTER TABLE musician
ADD role varchar(50);

ALTER TABLE musician
ADD bandName varchar(50);

-- INSERT INTO musician VALUES ("Alina", "Darcy", "Boles", 32,"vocals","Crazy Duo"), ("Mysterio","Jessie","Chancey",23,"guitar","Mysterio"), ("Rainbow", "Sarah", "Derrick", 47,"percussion","Crazy Duo"), ("Luna", "Emily", "Seibold", 31,"piano","Luna");

UPDATE musician
SET role = CASE 
    WHEN musicianName = "Alina" THEN 'vocals'
    WHEN musicianName = "Mysterio" THEN 'guitar'
    WHEN musicianName = "Rainbow" THEN 'percussion'
    ELSE "piano"
END;

UPDATE musician
SET bandName = CASE 
    WHEN musicianName = "Alina" THEN 'Crazy Duo'
    WHEN musicianName = "Mysterio" THEN 'Mysterio'
    WHEN musicianName = "Rainbow" THEN 'Crazy Duo'
    ELSE "Luna"
END;