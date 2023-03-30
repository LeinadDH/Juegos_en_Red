# Consolas de videojuegos Edición Especial

## Listado de Entidades

**Consolas de videojuegos (ED)**

- Consola_id **(PK)**
- Nombre_consola **(FK)**
- Nombre_edición_especial
- Año_de_salida
- Número_de_ejemplares
- Foto
- Pais **(FK)**

**Nombre_consola (EC)**
- Nombre_consola_id **(PK)**
- Nombre
- Generación
- Año_de_salida

**Pais (EC)**
- Pais_id **(PK)**
- Nombre

## Relaciones

1. Una **Consola** tiene un **nombre de consola** (M a 1).
1. Una **consola** se fabrica en un **país** (1 a M).

## Diagrama 

**Modelo Entidad - Relación**

![Modelo Entidad - Relación](Img/ModeloEntidadRelación.png)

**Modelo Relacional de la BD**


![Modelo Relacional de la BD](Img/ConsolasModeloRelacional.png)


## Reglas de negocio

**Consolas de videojuegos**

1. Crea una consola de edición especial.
1. Leer todas las consolas de edición especial.
1. Leer una consola edición especial en particular.
1. Leer todas las consolas de edición especial de un tipo de consola en especifico.
1. Actualizar una consola de edición especial.
1. Eliminar una consola de edición especial.


**Nombre de Consolas**

1. Crear una consola.
1. Leer todas las consolas.
1. Leer una consola en particular.
1. Leer las consolas por generación.
1. Actualizar una consola.
1. Eliminar una consola.

**Paises**

1. Crear un pais.
1. Leer todos los paises.
1. Leer un país en particular.
1. Actualizar un país.
1. Eliminar un país.

## Validación

**Consolas de videojuegos**

1. El nombre de la edición especial no debe contener el nombre de la consola (Por ejemplo: al ser Wii Gold Edition, el campo nombre de edición especial no debe contener Wii unicamente gold edition).
 1. Se debe agregar la cantidad unidades fabricadas de consolas de edición con las terminaciones K (mil), M (millón), B (billón), en busqueda de ahorrar bytes
 1. En caso de no existir una cantidad especifica para las unidades fabricadas unicamente colocar la leyenda (Desconocido).

 **Nombre de Consolas**

 1. Solo se pueden crear consolas en la base de datos con consolas de videojuegos que se vendieron de forma mundial

 **Paises**

 1. El nombre de los Paises debe ser escrito con la primer letra mayuscula
 1. no se utilizaran abreviaciones para referirse a ningún país