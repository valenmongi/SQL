/* 1. Creacion sentencia Before y After en la Tabla Venta */

/* 1.1 Tabla para registrar los movimientos de delete realizados en la tabla venta [BEFORE] */

create table DEL_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger DEL_BEF_venta
before delete on venta
for each row
insert into DEL_venta_movimiento
values (current_date(), current_time(), user());

/* 1.2 Tabla para registrar los movimientos de insert realizados en la tabla venta [AFTER] */

create table INS_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger INS_AFT_venta
after insert on venta
for each row
insert into INS_venta_movimiento
values (current_date(), current_time(), user());

select * from sector_glp_argentina.venta where id_venta = 50;

insert into venta
values( 200000 , 2019, 12, 200, 148, 1, 2);

delete from venta
where id_venta = 200000;

select * from INS_venta_movimiento;

select * from DEL_venta_movimiento;

/* 2. Creacion sentencia Before y After en la Tabla Detalle Venta */

/* 2.1 Tabla para registrar los movimientos de delete realizados en la tabla Detalle venta [BEFORE] */

create table DEL_det_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger DEL_BEF_det_venta
before delete on detalle_venta
for each row
insert into DEL_det_venta_movimiento
values (current_date(), current_time(), user());

/* 2.2 Tabla para registrar los movimientos de insert realizados en la tabla venta [AFTER] */

create table INS_det_venta_movimiento(
	fecha datetime,
	hora datetime,
    usuario VARCHAR(100));


create trigger INS_AFT_det_venta
after insert on detalle_venta
for each row
insert into INS_det_venta_movimiento
values (current_date(), current_time(), user());

select * from sector_glp_argentina.detalle_venta where id_detalle_venta = 50;

insert into detalle_venta
values( 200000 , 'El barrio mas popular', 5000, 4, 5000);

delete from detalle_venta
where id_detalle_venta = 200000;

select * from INS_det_venta_movimiento;

select * from DEL_det_venta_movimiento;


