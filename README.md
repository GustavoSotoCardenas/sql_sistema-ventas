# sql_sistema-ventas

# Sistema de Gestión de Ventas - Base de Datos SQL

## 1. Descripción del proyecto

Este proyecto consiste en el diseño e implementación de una base de datos para un sistema de gestión de ventas utilizando PostgreSQL.

El sistema permite administrar la información de:

- Clientes
- Productos
- Ventas
- Detalles de las ventas

Además, incluye un conjunto de consultas SQL para obtener información relevante del negocio, como reportes de ventas, productos más vendidos, clientes con mayor cantidad de compras y estadísticas generales.

### Problema que resuelve

Este proyecto busca organizar y administrar la información de un negocio mediante una base de datos relacional, permitiendo almacenar los datos de clientes, productos y ventas de manera estructurada.

Gracias a las consultas SQL implementadas, es posible generar reportes que facilitan el análisis de las ventas y apoyan la toma de decisiones.

---

# 2. Tecnologías utilizadas

- PostgreSQL
- SQL

---

# 3. Instrucciones de uso

## 1. Crear la base de datos

Crear una base de datos vacía en PostgreSQL.

Ejemplo:

```sql
CREATE DATABASE sistema_ventas;
```

Conectarse posteriormente a dicha base de datos.

---

## 2. Ejecutar `schema.sql`

Este archivo crea toda la estructura de la base de datos.

Incluye la creación de las tablas:

- clientes
- productos
- ventas
- detalle_venta

---

## 3. Ejecutar `seed.sql`

Este archivo inserta los datos de prueba necesarios para utilizar el sistema.

Incluye información de ejemplo para:

- Clientes
- Productos
- Ventas
- Detalles de venta

---

## 4. Ejecutar `report.sql`

Este archivo contiene las consultas SQL del proyecto, entre ellas:

- Consultas básicas de selección (`SELECT`)
- Filtros mediante `WHERE`
- Ordenamiento con `ORDER BY`
- Funciones de agregación (`COUNT`, `SUM`, `AVG`)
- Relaciones entre tablas utilizando `JOIN`
- Agrupaciones con `GROUP BY`
- Filtros de grupos mediante `HAVING`
- Subconsultas
- Consultas adicionales como:
  - Producto más caro
  - Cliente con mayor número de ventas
  - Fecha con mayor cantidad de ventas

---

# Estructura del proyecto

```
ProyectoSQL/
│
├── schema.sql      # Creación de tablas
├── seed.sql        # Inserción de datos
├── report.sql      # Consultas y reportes
└── README.md
```

---

# Consultas implementadas

El proyecto incluye más de **25 consultas SQL**, entre las que destacan:

- Listado de clientes, productos y ventas.
- Productos ordenados por precio.
- Productos con precio superior a un valor determinado.
- Ventas realizadas en una fecha específica.
- Total de clientes, productos y ventas.
- Precio promedio de productos.
- Suma total de precios.
- Consultas utilizando JOIN entre múltiples tablas.
- Reportes agrupados mediante GROUP BY.
- Consultas con HAVING.
- Consulta que no devuelve resultados (explicando el motivo).
- Consultas adicionales para obtener indicadores del negocio.

---

# Autor

**Gustavo Soto**
