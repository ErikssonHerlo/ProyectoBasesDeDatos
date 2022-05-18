INSERT INTO horizontegt.estado_vuelo(id_estado_vuelo, estado_vuelo, fecha, hora)
VALUES(1, 'Aterrizo', '15-01-2022', '10:00'),
(2, 'Aterrizo', '15-02-2022', '10:00'),
(3, 'Aterrizo', '15-03-2022', '10:00'),
(4, 'Aterrizo', '20-01-2022', '14:00'),
(5, 'Aterrizo', '20-04-2022', '14:00'),
(6, 'Aterrizo', '1-05-2022', '18:00');

INSERT INTO horizontegt.vuelo(id_vuelo, fecha, plan_vuelo_id_plan_vuelo, avion_codigo_avion, puerta_abordaje, puerta_desembarque, hora_despegue,hora_aterrizaje, estado_vuelo_id_estado_vuelo, distancia)
VALUES (1, '15-01-2022',1,'F1','5','15','18:00','10:00',1, 200),
(2, '15-02-2022',1,'F1','5','15','18:00','10:00',2, 200),
(3, '15-03-2022',1,'F2','5','15','18:00','10:00',3, 200),
(4, '20-01-2022',2,'F4','6','16','23:00','14:00',4, 250),
(5, '20-04-2022',2,'F5','6','16','23:00','14:00',5, 250),
(6, '01-05-2022', 3,'F7','1','10','08:00','18:00',6,100);

INSERT INTO horizontegt.estado_vuelo(id_estado_vuelo, estado_vuelo, fecha, hora)
VALUES(7, 'Cancelado', '15-04-2022', '10:00'),
(8, 'Cancelado', '15-05-2022', '10:00'),
(9, 'Cancelado', '15-03-2022', '10:00'),
(10, 'Cancelado', '20-01-2022', '14:00'),
(11, 'Aterrizo', '20-04-2022', '14:00'),
(12, 'Aterrizo', '1-05-2022', '18:00');