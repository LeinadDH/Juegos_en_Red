-- Tabla de la entidad "Nombre_consola"
CREATE TABLE Nombre_consola (
  Nombre_consola_id INT PRIMARY KEY,
  Nombre VARCHAR(50) NOT NULL,
  Año_de_salida INT,
  Generación INT
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
  Nombre_edición_especial VARCHAR(50),
  Año_de_salida INT,
  Numero_de_ejemplares VARCHAR(30),
  Pais INT,
  Foto_id TEXT,
  FOREIGN KEY (Nombre_consola) REFERENCES Nombre_consola(Nombre_consola_id),
  FOREIGN KEY (Pais) REFERENCES Pais(Pais_id)
);