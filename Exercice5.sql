USE gestion_depot;

CREATE TABLE gd_contenant(
    cont_id_contenant INT,
   cont_type VARCHAR(50) NOT NULL,
   PRIMARY KEY(cont_id_contenant)
);

ALTER TABLE gd_stock
ADD COLUMN st_id_contenant INT NOT NULL,
ADD CONSTRAINT fk_stock_contenat FOREIGN KEY (st_id_contenant) REFERENCES `gd_contenant` (`cont_id_contenant`);

-- Emplacements
INSERT INTO gd_emplacement
    (em_id_emplacement, em_zone, em_travee, em_niveau, em_capacite)
VALUES
    (1, 'Zone A', 'Travée 1', 1, 100),
    (2, 'Zone A', 'Travée 1', 2, 80),
    (3, 'Zone B', 'Travée 2', 1, 120);

-- Contenants
INSERT INTO gd_contenant
    (cont_id_contenant, cont_type)
VALUES
    (1, 'Carton'),
    (2, 'Bac plastique'),
    (3, 'Palette');

-- Stock : article + emplacement + contenant + quantité
INSERT INTO gd_stock
    (st_id_article, st_id_emplacement, st_id_contenant, st_quantite)
VALUES
    (1, 1, 1, 20), 
    (2, 1, 2, 12),  
    (3, 2, 2, 25),  
    (4, 3, 3, 10);  
