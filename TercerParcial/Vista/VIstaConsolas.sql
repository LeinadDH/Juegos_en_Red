CREATE VIEW ConsolasInfo AS
  SELECT cdv.Consola_id, 
    nc.Nombre, cdv.Nombre_edición_especial,
    nc.Año_de_salida, nc.Generación, 
    p.Nombre AS pais
    FROM consolas_de_videojuegos cdv 
    INNER JOIN nombre_consola nc ON cdv.Nombre_consola_id = nc.Nombre_consola_id 
    INNER JOIN pais p ON cdv.País_id  = p.Pais_id ;
    
SELECT * FROM ConsolasInfo;

DROP VIEW consolasinfo;