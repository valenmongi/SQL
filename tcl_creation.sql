/*Script para eliminar un registro de la tabla empresas */

/*Seteamos el autocommit en 0 para poder editar */
SELECT @@AUTOCOMMIT;

SET SQL_SAFE_UPDATES = 0;

/* 1. Script para insertar datos en la tabla venta y luego hacemos commit del cambio */

START TRANSACTION;
	insert into venta
    values ( NULL, 2022, 07, 170, 50, 1, 3);
ROLLBACK;
COMMIT;

select * from sector_glp_argentina.venta WHERE Año = 2022 and mes = 07;

/* 2. Script para insertar datos en la tabla detalle venta y luego hacer un savepoint de los primeros 4 datos insertador */

START TRANSACTION;
	insert into detalle_venta values ( NULL, 'LOS PATOS', 500, 1, 20000);
    insert into detalle_venta values ( NULL, 'USPALLATA', 756, 3, 20001);
	insert into detalle_venta values ( NULL, 'MALARGÜE', 956, 2, 20002);
	insert into detalle_venta values ( NULL, 'SAN RAFAEL', 896, 2, 20003);
    savepoint carga_1;
	insert into detalle_venta values ( NULL, 'MENDOZA', 987, 1, 20004);
    insert into detalle_venta values ( NULL, 'GODOY CRUZ', 754, 2, 20005);
	insert into detalle_venta values ( NULL, 'LAS FLORES', 357, 3, 20006);
	insert into detalle_venta values ( NULL, 'JUNIN', 581, 3, 20007);
    savepoint carga_2;
ROLLBACK TO carga_1;
COMMIT;

