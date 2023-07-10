use Mysql;
show full tables;
/*
select * from db; -- agrega el dato a que schema -- esta asignado el usuaru
select * from user where user = 'recepcionistaLuisina';-- por defecto el unico usuario q tiene todo aprovado es el admin o el rroot todo en Y
 select * from user where user = 'recepcionistaDaiana';
select * from session;
select * from host_summary; -- saber que host estoy conectado, tiempo de consulta, que id me conecta a cada consulta
*/


/*
 create user if not exists userDeJuan@host identified by 'mypassword';  ejemplo dado por el profesor
 create user if not exists 'recepcionistaDaiana' @ 'bd_hoteleria' identified by 'password';  ejemplo dado por el profesor

 create user if not exists 'recepcionistaDaiana'@'localhost' identified by 'daiana'; -- manera correcta de crear un usuario, en una empresa seria el dominio.
 create user if not exists 'recepcionistaLuisina'@'localhost' identified by 'luisina'; -- manera correcta de crear un usuario, en una empresa seria el dominio.

 alter user user@host identified by 'newpassword';
 flush priviligies -- refresca los permisos de mysql
*/
-- -------------------------------------------------------------------------------
-- -- CREACION DE PERMISOS
-- -------------------------------------------------------------------------------

/*
  show grants for 'recepcionistaDaiana' @localhost; -- listo los permisos del usuario
  show grants for 'recepcionistaLuisina' @localhost; -- listo los permisos del usuario
 
   grant select on *.* to 'recepcionistaDaiana' @localhost with grant option; -- creacion de accion para usuario de solo leer;
   grant select, insert, update on *.* to 'recepcionistaLuisina' @localhost with grant option; -- creacion de accion para usuario de leer insertar y modificar;

*/