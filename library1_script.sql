
CREATE TABLE Mois (
                id INT AUTO_INCREMENT NOT NULL,
                Nom_fichier VARCHAR NOT NULL,
                lien_vers_xml VARCHAR NOT NULL,
                PRIMARY KEY (id)
);


CREATE TABLE Date (
                id INT AUTO_INCREMENT NOT NULL,
                date DATE NOT NULL,
                lien_vers_pdf VARCHAR NOT NULL,
                lien_vers_ing VARCHAR NOT NULL,
                Mois_id INT NOT NULL,
                PRIMARY KEY (id)
);


ALTER TABLE Date ADD CONSTRAINT mois_date_fk
FOREIGN KEY (Mois_id)
REFERENCES Mois (id)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
