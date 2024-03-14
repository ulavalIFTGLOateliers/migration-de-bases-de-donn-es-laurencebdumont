-- Création de la table band puisqu'elle n'existe pas dans le schéma initial
CREATE TABLE IF NOT EXISTS band (     bandName varchar(50),
                                        creation int,
                                        genre varchar(50),
                                        PRIMARY KEY(bandName));
-- Insertion des données dans la table band
INSERT INTO band VALUES ("Crazy Duo", 2015, "rock"), ("Luna",2009,"classical"), ("Mysterio", 2019, "pop");

-- Changement de nom de la table singer
ALTER TABLE singer RENAME TO musician;

-- Changement de nom de la colonne singerName
ALTER TABLE musician
CHANGE singerName musicianName varchar(50);

-- Ajout de deux nouvelles colonnes dans la table musician
ALTER TABLE musician
ADD role varchar(50);

ALTER TABLE musician
ADD bandName varchar(50);

-- Insertion des données dans la nouvelle colonne Musician
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