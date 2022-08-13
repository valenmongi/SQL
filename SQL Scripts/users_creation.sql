/*1. Creación de usuario con permiso de solo lectura, y sin clave de acceso */

/*1.1 Se crea el usuario de solo lectura con el nombre de 'read_only' */
CREATE USER read_only@localhost;

select * from mysql.user where user='read_only';
show grants for read_only@localhost;

/*1.2 Se otorga solo permiso de consulta al usuario 'read_only' en todo el schema 'sector_glp_argentina' */

GRANT select ON sector_glp_argentina.* TO read_only@localhost;

/*2. Creación de usuario con permiso de edición y con clave de acceso */

/*2.1 Se crea el usuario 'full_user' con posibilidad las siguientes posibilidades: lectura de datos, inserción y modificación*/
CREATE USER full_user@localhost IDENTIFIED BY 'ABCde12345';

select * from mysql.user where user='full_user';
show grants for full_user@localhost;

/*2.2 Se otorga solo permiso de consulta, inserción y modificación al usuario 'full_user' en todas las tablas del schema 'sector_glp_argentina' */

GRANT select, insert, update ON sector_glp_argentina.* TO full_user@localhost;