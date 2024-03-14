-- Supprimer la table band
DROP TABLE IF EXISTS band;

-- Supprimer les deux colonnes de la table musician
ALTER TABLE musician 
DROP COLUMN role,
DROP COLUMN bandName;

-- Renommer la table musician
ALTER TABLE musician RENAME TO singer;

-- Renommer la colonne musicianName
ALTER TABLE singer
CHANGE musicianName singerName varchar(50);