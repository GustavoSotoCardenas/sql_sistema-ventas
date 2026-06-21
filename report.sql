--1.- Mostrar todos los clientes registrados
select * 
from clientes;

--2.- Productos disponibles
select * 
from productos;

--3.Ventas realizadas
select * 
from ventas;

--4.-Mostrar solo nombre e email
select nombre, email
from clientes;

--5.-Mostrar nombre y precio productas
select nombre, precio
from productos;

--6.-Productos con precio mayor a 50000
select nombre,precio
from productos
where precio > 50000;

--7.-Ventas realizadas el 2026-04-02
select id_venta,id_cliente,fecha
from ventas
where fecha = DATE '2026-04-02';

--8. Productos ordenados de mayor a menor precio
select nombre, precio
from productos
order by precio desc;


-- 9. Clientes ordenados por nombre
select nombre,email
from clientes
order by nombre asc;

-- 10. Detalles de venta con cantidad >= 2
select id_detalle,id_venta,id_producto,cantidad
from detalle_venta
where cantidad >= 2;

-- 11. Total de clientes
select count(*)
from clientes;


-- 12. Total de productos
select count(*)
from productos;

-- 13. Total de ventas
select count(*)
from ventas;

-- 14. Precio promedio de productos
select round(avg(precio)) as "promedio productos"
from productos;

-- 15. Suma total de precios de productos
select sum(precio)
from productos;

-- 16. Mostrar venta + nombre del cliente + fecha
select 

-- 17. Mostrar detalle de ventas con id_venta + nombre producto + cantidad
select d.id_venta, p.nombre, d.cantidad
from productos p join detalle_venta d on d.id_producto = p.id_producto;

-- 18. Mostrar nombre del cliente + id de venta + fecha
select c.nombre, d.id_venta , v.fecha
from clientes c join ventas v  on v.id_cliente = c.id_cliente
join detalle_venta d on v.id_venta = d.id_venta 

-- 19. Mostrar nombre del producto + cantidad vendida + id de venta
select p.nombre, d.cantidad, d.id_venta
from productos p join detalle_venta d on p.id_producto = d.id_producto


-- 20. Mostrar cuántas ventas ha realizado cada cliente
select c.nombre,count(v.id_venta)
from clientes c join ventas v on v.id_cliente = c.id_cliente 
group by c.nombre;


-- 21. Mostrar solo los clientes con más de una venta
select c.nombre,count(v.id_venta)
from clientes c join ventas v on v.id_cliente = c.id_cliente 
group by c.nombre
having count(v.id_venta) > 1;

-- 22. Mostrar cuántas veces aparece cada producto en detalle_venta
select p.nombre, count(d.id_producto)
from productos p join detalle_venta d on d.id_producto = p.id_producto
group by p.nombre;

-- 23. Mostrar solo los productos que aparecen más de una vez
select p.nombre, count(d.id_producto)
from productos p join detalle_venta d on d.id_producto = p.id_producto
group by p.nombre
having count(d.id_producto) > 1;

-- 24. Mostrar las ventas que tienen más de un producto asociado
select v.id_venta, count(d.id_producto)
from ventas v  join detalle_venta d on v.id_venta  = d.id_venta
group by v.id_venta
having count(d.id_producto) > 1;

-- 25. Mostrar clientes cuya suma total de unidades compradas sea mayor a 2
select c.nombre, sum(dv.cantidad)
from clientes c join ventas v on v.id_cliente = c.id_cliente
				join detalle_venta dv on v.id_venta = dv.id_venta 
group by c.nombre
having sum(dv.cantidad) > 2;

-- 26. Consulta trampa que no devuelva resultados
-- Explicar por qué el resultado vacío es correcto
select v.id_venta, count(d.id_producto)
from ventas v  join detalle_venta d on v.id_venta  = d.id_venta
group by v.id_venta
having count(d.id_producto) > 2; 
--Esta consulta muestra ventas que tienen mas de 2 productos asociados por lo que no muestra ningun detalle.


--Extra!!!

--Producto más caro
select nombre, precio
from productos
where precio = (select max(precio) from productos);

--Cliente con mas ventas
select c.nombre, count(v.id_venta) "Total ventas"
from clientes c join ventas v on v.id_cliente  = c.id_cliente
group by c.nombre
order by count(v.id_venta) desc
limit 1;

--fecha con más ventas
select v.fecha, count(v.id_venta) as total_ventas
from ventas v
group by v.fecha
order by total_ventas desc
limit 1;
