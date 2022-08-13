/* Script correspondiente a la creacion de de Funciones para el scheme 'sector_glp_argentina' */

/* seleccionar empresa y descubrir actividad principal vinculada a la misma */

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

/* Calculo del monto de la venta (ingreso) - Precio con IVA y Volumen de la venta*/

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

select calculo_ingreso(170, 5000) AS Monto_venta;
