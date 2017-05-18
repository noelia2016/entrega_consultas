/*************************** INSERT DE DATOS ************************************/

use proyecto_noelia;

-- PRIMERO CREO EL USUARIO
INSERT INTO `usuario` (`nombre`, `apellido`) VALUES ('Noelia', 'Carrizo');
INSERT INTO `usuario` (`nombre`, `apellido`) VALUES ('Pepito', 'Garcia');
INSERT INTO `usuario` (`nombre`, `apellido`) VALUES ('Juancito', 'Martinez');

-- LUEGO CREO LA TAREA
INSERT INTO `tarea` (`nombre`, `inicio`, `estimacion`, `consumo`, `fin`, `estado`) VALUES ('Preparar desayuno', '2017-05-15 06:15:00', '1', '1', '2017-05-15 01:00:00', 'Realizado');
UPDATE `tarea` SET `inicio` = '2017-05-15 06:10:00', `estimacion` = '0.20', `consumo` = '0.15', `fin` = '2017-05-15 06:25:00' WHERE `id_tarea` = 1;

INSERT INTO `tarea` (`nombre`, `inicio`, `estimacion`, `consumo`, `fin`, `estado`) VALUES ('Ir a trabajar', '2017-05-15 06:30:00', '0.15', '0.10', '2017-05-15 06:40:00', 'Llegue');
INSERT INTO `tarea` (`nombre`, `inicio`, `estimacion`, `consumo`, `fin`, `estado`) VALUES ('Preparar almuerzo', '2017-05-15 14:05:00', '1', '1', '2017-05-15 15:00:00', 'Realizado');

-- LUEGO DEFINO LOS PASOS PARA ESA TAREA
INSERT INTO `consignas`(`detalle`, `estado`, `id_tarea`, id_usuario) VALUES ('Calentar agua','Listo',1,1);
INSERT INTO `consignas`(`detalle`, `estado`, `id_tarea`, id_usuario) VALUES ('Tomar taza y poner cafe','Listo',1,1);
INSERT INTO `consignas`(`detalle`, `estado`, `id_tarea`, id_usuario) VALUES ('Verter el agua en la taza y revolver','Listo',1,1);
INSERT INTO `consignas`(`detalle`, `estado`, `id_tarea`, id_usuario) VALUES ('Agregar leche','Listo',1,1);
INSERT INTO `consignas`(`detalle`, `estado`, `id_tarea`, id_usuario) VALUES ('Tomar cafe con leche con masitas','Listo',1,1);

-- POR ULTIMO SI QUIERO REALIZO COMENTARIOS
INSERT INTO `comentario`(`detalle`, `fecha_realizado`, `id_tarea`, `id_usuario`) VALUES ('Preparando el cafe chichis','2017-05-15 00:00:00',1,1);
INSERT INTO `comentario`(`detalle`, `fecha_realizado`, `id_tarea`, `id_usuario`) VALUES ('Ya termine me las pico sino no llego','2017-05-15 06:30:00',1,1);

/*************************** FIN DE INSERT DE DATOS ************************************/