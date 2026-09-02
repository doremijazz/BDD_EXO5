USE gestion_depot;

CREATE TABLE gd_contenant(
    cont_id_contenant INT,
   cont_type VARCHAR(50) NOT NULL,
   PRIMARY KEY(cont_id_contenant)
);

ALTER TABLE gd_stock
ADD COLUMN st_id_contenant INT NOT NULL,
ADD CONSTRAINT fk_stock_contenat FOREIGN KEY (st_id_contenant) REFERENCES `gd_contenant` (`cont_id_contenant`);