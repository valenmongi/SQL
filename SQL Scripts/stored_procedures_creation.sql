/* En el siguiente script se desarrollan los stored procedures */


/* El primer store procedure permite ordenar la vista 'cantidad de venta por empresa' por cada campo y 
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

/* El segundo store procedure permite actualizar los precios con y sin iva de los producto, 
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
