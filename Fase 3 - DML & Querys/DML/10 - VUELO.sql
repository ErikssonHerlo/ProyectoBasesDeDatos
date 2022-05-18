

INSERT INTO horizontegt.vuelo(id_vuelo, fecha, distancia, plan_vuelo_id_plan_vuelo, avion_codigo_avion, puerta_abordaje, puerta_desembarque, hora_despegue,hora_aterrizaje)
VALUES (1, '2022-01-15',200,1,'F1','5','15','18:00','10:00'),
(2, '2022-02-15',200,1,'F1','5','15','18:00','10:00'),
(3, '2022-03-15',200,1,'F2','5','15','18:00','10:00'),
(4, '2022-01-20',250,2,'F4','6','16','23:00','14:00'),
(5, '2022-04-20',250,2,'F5','6','16','23:00','14:00'),
(6, '2022-05-1',100, 3,'F7','1','10','08:00','18:00'),
(7, '2022-05-10',100, 3,'F7','1','10','08:00','18:00');



--------------------ESTADO DEL VUELO No. 1
INSERT INTO horizontegt.estado_vuelo(id_estado_vuelo, estado_vuelo, fecha, hora, vuelo_id_vuelo)
VALUES(1, 'Despegue', '2022-01-14', '18:00',1),
(2, 'Volando', '2022-01-14', '20:00',1),
(3, 'Aterrizaje', '2022-01-15', '10:00',1),
(4, 'Completado', '2022-01-15', '12:00',1);

--------------------ESTADO DEL VUELO No. 2
INSERT INTO horizontegt.estado_vuelo(id_estado_vuelo, estado_vuelo, fecha, hora, vuelo_id_vuelo)
VALUES(5, 'Despegue', '2022-02-14', '18:00',2),
(6, 'Volando', '2022-02-14', '20:00',2),
(7, 'Aterrizaje', '2022-02-15', '10:00',2),
(8, 'Completado', '2022-02-15', '12:00',2);

--------------------ESTADO DEL VUELO No. 3
INSERT INTO horizontegt.estado_vuelo(id_estado_vuelo, estado_vuelo, fecha, hora, vuelo_id_vuelo)
VALUES(9, 'Despegue', '2022-03-14', '18:00',3),
(10, 'Volando', '2022-03-14', '20:00',3),
(11, 'Aterrizaje', '2022-03-15', '10:00',3),
(12, 'Completado', '2022-03-15', '12:00',3);

--------------------ESTADO DEL VUELO No. 4
INSERT INTO horizontegt.estado_vuelo(id_estado_vuelo, estado_vuelo, fecha, hora, vuelo_id_vuelo)
VALUES (13, 'Retraso', '2022-01-19', '23:00',4),
(14, 'Despegue', '2022-01-20', '03:00',4),
(15, 'Volando', '2022-01-20', '05:00',4),
(16, 'Aterrizaje', '2022-01-20', '18:00',4),
(17, 'Completado', '2022-01-20', '20:00',4);

--------------------ESTADO DEL VUELO No. 5
INSERT INTO horizontegt.estado_vuelo(id_estado_vuelo, estado_vuelo, fecha, hora, vuelo_id_vuelo)
VALUES (18, 'Retraso', '2022-04-19', '23:00',5),
(19, 'Despegue', '2022-04-20', '03:00',5),
(20, 'Volando', '2022-04-20', '05:00',5),
(21, 'Aterrizaje', '2022-04-20', '18:00',5),
(22, 'Completado', '2022-04-20', '20:00',5);

--------------------ESTADO DEL VUELO No. 6
INSERT INTO horizontegt.estado_vuelo(id_estado_vuelo, estado_vuelo, fecha, hora, vuelo_id_vuelo)
VALUES(23, 'Despegue', '2022-05-01', '08:00',6),
(24, 'Volando', '2022-05-01', '10:00',6),
(25, 'Aterrizaje', '2022-05-01', '18:00',6),
(26, 'Completado', '2022-05-01', '20:00',6);

--------------------ESTADO DEL VUELO No. 7
INSERT INTO horizontegt.estado_vuelo(id_estado_vuelo, estado_vuelo, fecha, hora, vuelo_id_vuelo)
VALUES(27, 'Retraso', '2022-05-10', '08:00',7),
(28, 'Cancelado', '2022-05-10', '12:00',7);


(2, 'Aterrizo', '15-02-2022', '10:00'),
(3, 'Aterrizo', '15-03-2022', '10:00'),
(4, 'Aterrizo', '20-01-2022', '14:00'),
(5, 'Aterrizo', '20-04-2022', '14:00'),
(6, 'Aterrizo', '1-05-2022', '18:00');
INSERT INTO horizontegt.estado_vuelo(id_estado_vuelo, estado_vuelo, fecha, hora, vuelo_id_vuelo)
VALUES(7, 'Cancelado', '15-04-2022', '10:00'),
(8, 'Cancelado', '15-05-2022', '10:00'),
(9, 'Cancelado', '15-03-2022', '10:00'),
(10, 'Cancelado', '20-01-2022', '14:00'),
(11, 'Aterrizo', '20-04-2022', '14:00'),
(12, 'Aterrizo', '1-05-2022', '18:00');