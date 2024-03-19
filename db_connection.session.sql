--starting
--@block
CREATE TABLE bands(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    PRIMARY KEY(id)
);

--@block
CREATE TABLE albums(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    band_id INT NOT NULL,

);

--@block
INSERT INTO bands (name) 
VALUES ('Hiary Dawn'),
        ('Henry BLue'),
        ('George Kane');

--@block
SELECT * FROM bands
ORDER BY name ASC;

-- --@block
-- DROP TABLE band;

-- To rename columns
--@block
SELECT id AS 'band_id', name AS 'band_name' FROM bands;

--@block
ALTER TABLE albums 
ADD COLUMN band_id INT,
ADD CONSTRAINT fk_band_id FOREIGN KEY (band_id) REFERENCES bands(id);
 