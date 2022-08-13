/* Script para la creacion de vistas */

select * from producto;

/* Volumen vendido por producto, por año */

create view productos as 
	(select 
		prod.id_producto, 
		prod.Tipo_producto 
	from producto prod);
    
create view ventas_años as 
	(select 
		vent.id_venta, 
		vent.Año,
        vent.id_empresa_venta
	from venta vent);
    
create view detalles_ventas_años as 
	(select 
		det.id_detalle_venta, 
		det.Volumen,
        det.id_producto,
        det.id_venta
	from detalle_venta det);

create view detalles_ventas_en_años as
	(select id_detalle_venta, Volumen, id_producto, g.id_venta, Año
	from detalles_ventas_años p inner join ventas_años g on (p.id_venta = g.id_venta));

create view detalles_ventas_en_años_productos as
	(select  Volumen,  Año, Tipo_producto
		from detalles_ventas_en_años p inner join productos g on (p.id_producto = g.id_producto));

/* vista final con group by */

create view ventas_por_año as
	(select Año, Tipo_producto, sum(Volumen) as 'Volumen_total'
	from detalles_ventas_en_años_productos
	group by Año, Tipo_producto);
    
select * from ventas_por_año;

/* Cantidad de empresas por categoria */

create view detalle_empresa_categoria as 
	(select  g.id_categoria,  Actividad_principal, id_empresa
			from categoria p inner join empresa_categoria g on (p.id_categoria = g.id_categoria));

create view cantidad_empresas_categoria as 
	(select Actividad_principal, count(*) as 'Cantidad_empresas'
	from detalle_empresa_categoria
	group by id_categoria);
    

/* Empresas con mas ventas por año */

select * from ventas_años;

create view ventas_empresa_año as
	(select   Año, id_venta, Razon_social 
	from ventas_años p inner join empresa g on (p.id_empresa_venta = g.id_empresa));
 
 
create view cantidad_ventas_empresa as
	(select Año, Razon_social, count(*) as 'Cantidad_ventas_empresas'
		from ventas_empresa_año
		group by Año, Razon_social
        order by  Año, Cantidad_ventas_empresas desc);
        
select * from cantidad_ventas_empresa;


/* Empresas de la provincia de Córdoba */

create view empresas_cordoba as
	(select   Razon_social, Provincia
	from empresa p inner join localidad g on (p.id_localidad = g.id_localidad)
	where Provincia like 'cordoba');


/* Localidad con mas empresas */

create view empresas_por_localidad as
	(select   p.Localidad, Razon_social
	from empresa p inner join localidad g on (p.id_localidad = g.id_localidad));
    
create view cantidad_empresas_por_localidad as
	(select Localidad, count(*) as 'Cantidad_empresas_localidad'
	from empresas_por_localidad
	group by Localidad
	order by  Cantidad_empresas_localidad desc);
    
select * from cantidad_empresas_por_localidad
where Cantidad_empresas_localidad > 1;

