/* 1. SCRIPT DE VISTAS */

/* 1.1 Volumen vendido por producto, por año */

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
	(select  Año, Tipo_producto, Volumen
		from detalles_ventas_en_años p inner join productos g on (p.id_producto = g.id_producto));
        
/* 1.2 Vista final con group by */

create view ventas_por_año as
	(select Año, Tipo_producto, sum(Volumen) as 'Volumen_total'
	from detalles_ventas_en_años_productos
	group by Año, Tipo_producto
	order by  Año, Volumen desc);
    

/* 1.3 Cantidad de empresas por categoria */

create view detalle_empresa_categoria as 
	(select  g.id_categoria,  Actividad_principal, id_empresa
			from categoria p inner join empresa_categoria g on (p.id_categoria = g.id_categoria));

create view cantidad_empresas_categoria as 
	(select Actividad_principal, count(*) as 'Cantidad_empresas'
	from detalle_empresa_categoria
	group by id_categoria
    order by Cantidad_empresas desc);
    
create view detalle_razon_social_categoria as 
	(select  g.id_categoria,  g.id_empresa, Razon_social
			from empresa_categoria g inner join empresa p on (p.id_empresa = g.id_empresa));
    

/* 1.4 Empresas con mas ventas por año */


create view ventas_empresa_año as
	(select   Año, id_venta, Razon_social 
	from ventas_años p inner join empresa g on (p.id_empresa_venta = g.id_empresa));
 
 
create view cantidad_ventas_empresa as
	(select Año, Razon_social, count(*) as 'Cantidad_ventas_empresas'
		from ventas_empresa_año
		group by Año, Razon_social
        order by  Año, Cantidad_ventas_empresas desc);
        


create view ventas_empresa as
	(select Año, Razon_social, count(*) as 'Cantidad_ventas_empresas'
		from ventas_empresa_año
		group by Año, Razon_social);


/* 1.5 Empresas de la provincia de Córdoba */

create view empresas_cordoba as
	(select   Razon_social, Provincia
	from empresa p inner join localidad g on (p.id_localidad = g.id_localidad)
	where Provincia like 'cordoba');

/* 1.6 Localidad con mas empresas */

create view empresas_por_localidad as
	(select   p.Localidad, Razon_social
	from empresa p inner join localidad g on (p.id_localidad = g.id_localidad));
    
create view cantidad_empresas_por_localidad as
	(select Localidad, count(*) as 'Cantidad_empresas_localidad'
	from empresas_por_localidad
	group by Localidad
	order by  Cantidad_empresas_localidad desc);
    
/* 2. SCRIPT DE FUNCIONES */

/* 2.1 Seleccionar empresa y descubrir actividad principal vinculada a la misma */

/*SCRIPT DE CREACION DE LA PRIMERA FUNCION */

/*
CREATE DEFINER=`root`@`localhost` FUNCTION `empresas_categoria`(empresa VARCHAR(50)) RETURNS char(255) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	declare categoria char(255);
    set categoria = ifnull((select  Actividad_principal
			from detalle_razon_social_categoria p inner join categoria g on (p.id_categoria = g.id_categoria) 
            where p.Razon_social like CONCAT("%",empresa,"%")), 'Empresa no Existente');
RETURN categoria;
END
*/

select empresas_categoria('ecogas') as Categoria_Empresa;

/* 2.2 Calculo del monto de la venta (ingreso) - Precio con IVA y Volumen de la venta*/

/*SCRIPT DE CREACION DE LA SEGUNDA FUNCION */
/*
CREATE DEFINER=`root`@`localhost` FUNCTION `calculo_ingreso`(precio_con_iva INT, volumen int) RETURNS int
    NO SQL
BEGIN
	DECLARE ingreso FLOAT;
    SET ingreso = (precio_con_iva*volumen);

RETURN ingreso;
END
*/


/* 3. SCRIPT DE STORED PROCEDURES */

/* 3.1 El primer store procedure permite ordenar la vista 'cantidad de venta por empresa' por cada campo y 
elegir el orden (asc para orden ascendente y desc para un ordenamiento descendente) */

call ordenar_ventas_empresas('Año, Cantidad_ventas_empresas', 'asc'); 

/* script primer store procedure

CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_precios`()
BEGIN
    set @actualizar = 'update sector_glp_argentina.producto  set Precio_sin_iva = Precio_sin_iva * 1.47, Precio_con_iva = Precio_con_iva * 1.47';
    prepare runSQL from @actualizar;
    execute runSQL;
    deallocate prepare runSQL;

END

*/

/* 3.2 El segundo store procedure permite actualizar los precios con y sin iva de los producto, 
con la inflación acumulada del primer semestre del año */

call actualizar_precios();

select * from sector_glp_argentina.producto;

/* script segundo store procedure

CREATE DEFINER=`root`@`localhost` PROCEDURE `ordenar_ventas_empresas`(IN campo CHAR(50), IN orden CHAR(20))
BEGIN
	if campo <> '' then
		set @orden_ventas = concat('ORDER BY ', campo, ' ', orden);
	else
		set @orden_ventas = '';
	end if;
    set @ventas = concat('SELECT * FROM sector_glp_argentina.ventas_empresa ', @orden_ventas);
    prepare runSQL from @ventas;
    execute runSQL;
    deallocate prepare runSQL;

END
*/


/* 4. SCRIPT DE TRIGGERS */

/* 4.1 Creacion sentencia Before y After en la Tabla Venta */

/* 4.1.1 Tabla para registrar los movimientos de delete realizados en la tabla venta [BEFORE] */

create table DEL_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger DEL_BEF_venta
before delete on venta
for each row
insert into DEL_venta_movimiento
values (current_date(), current_time(), user());

/* 4.1.2 Tabla para registrar los movimientos de insert realizados en la tabla venta [AFTER] */

create table INS_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger INS_AFT_venta
after insert on venta
for each row
insert into INS_venta_movimiento
values (current_date(), current_time(), user());


/* 4.2 Creacion sentencia Before y After en la Tabla Detalle Venta */

/* 4.2.1 Tabla para registrar los movimientos de delete realizados en la tabla Detalle venta [BEFORE] */

create table DEL_det_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger DEL_BEF_det_venta
before delete on detalle_venta
for each row
insert into DEL_det_venta_movimiento
values (current_date(), current_time(), user());

/* 4.2.2 Tabla para registrar los movimientos de insert realizados en la tabla venta [AFTER] */

create table INS_det_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger INS_AFT_det_venta
after insert on detalle_venta
for each row
insert into INS_det_venta_movimiento
values (current_date(), current_time(), user());




