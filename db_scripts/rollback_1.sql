DROP TABLE IF EXISTS band;

ALTER TABLE musician 
DROP COLUMN role,
DROP COLUMN bandName;

ALTER TABLE musician RENAME TO singer;

ALTER TABLE singer
CHANGE musicianName singerName varchar(50);