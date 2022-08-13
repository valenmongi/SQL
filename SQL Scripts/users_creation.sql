/*Creación de usuario con permiso de solo lectura, y sin clave de acceso */

use mysql;
show tables;

select * from user;

CREATE USER read_only@localhost;

select * from mysql.user where user='read_only';
show grants for read_only@localhost;

GRANT ALL ON sector_glp_argentina.* TO read_only@localhost;

revoke update, insert, delete on *.* from read_only@localhost;
