# Consolas de videojuegos Edición Especial

## Listado de Entidades

**Consolas de videojuegos (ED)**

- Consola_id **(PK)**
- Nombre_consola **(FK)**
- Nombre_edición_especial
- Fecha
- Número_de_ventas
- Foto
- Pais **(FK)**

**Nombre_consola (EC)**
- Nombre_consola_id **(PK)**
- Nombre
- Generación

**Pais (EC)**
- Pais_id **(PK)**
- Nombre

## Relaciones

1. Una **Consola** tiene un **nombre de consola** (1 a M).
1. Una **consola** se fabrica en un **país** (1 a M).

## Diagrama 

**Modelo Entidad - Relación**

![Modelo Entidad - Relación](Img/ModeloEntidadRelación.png)

**Modelo Relacional de la BD**


![Modelo Relacional de la BD](Img/ConsolasModeloRelacional.png)
