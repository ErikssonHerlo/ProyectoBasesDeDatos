INSERT INTO horizontegt.estado_avion(estado) VALUES ('Disponible'),
('Reparacion'), ('Mantenimiento');

INSERT INTO horizontegt.avion(codigo_avion,modelo,tipo_avion_tipo_avion,fecha_adquisicion, fecha_mantenimiento, estado_avion_estado)
VALUES ('F1', 'Airbus A318', 'Airbus A318', '01-01-2020','01-02-2021','Disponible'),
('F2', 'Airbus A318', 'Airbus A318', '01-01-2020','01-02-2021','Disponible'),
('F3', 'Airbus A318', 'Airbus A318', '01-01-2020','01-02-2021','Mantenimiento'),
('F4', 'Airbus A320', 'Airbus A320', '01-01-2020','01-02-2021','Disponible'),
('F5', 'Airbus A320', 'Airbus A320', '01-01-2020','01-02-2021','Disponible'),
('F6', 'Airbus A320', 'Airbus A320', '01-01-2020','01-02-2021','Mantenimiento'),
('F7', 'Dassault Falcon 100', 'Dassault Falcon 100', '01-01-2020','01-02-2021','Disponible'),
('F8', 'Dassault Falcon 100', 'Dassault Falcon 100', '01-01-2020','01-02-2021','Disponible'),
('F9', 'Dassault Falcon 100', 'Dassault Falcon 100', '01-01-2020','01-02-2021','Mantenimiento');

INSERT INTO horizontegt.tipo_avion(tipo_avion, capacidad) 
VALUES('Airbus A318', 15)
,('Airbus A320', 20)
,('Dassault Falcon 100', 9);