-- Tabla de la entidad "Nombre_consola"
CREATE TABLE Nombre_consola (
  Nombre_consola_id INT PRIMARY KEY,
  Nombre VARCHAR(50) NOT NULL,
  Generacion VARCHAR(50),
  Anio_de_salida INT
);

-- Tabla de la entidad "Pais"
CREATE TABLE Pais (
  Pais_id INT PRIMARY KEY,
  Nombre VARCHAR(50) NOT NULL
);

-- Tabla de la entidad "Consolas de videojuegos"
CREATE TABLE Consolas_de_videojuegos (
  Consola_id INT PRIMARY KEY,
  Nombre_consola_id INT,
  Nombre_edicion_especial VARCHAR(50),
  Anio_de_salida INT,
  Numero_de_ejemplares INT,
  Foto VARCHAR(100),
  Pais_id INT,
  FOREIGN KEY (Nombre_consola_id) REFERENCES Nombre_consola(Nombre_consola_id),
  FOREIGN KEY (Pais_id) REFERENCES Pais(Pais_id)
);