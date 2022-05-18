-------------
-- Obtener una lista de planes de vuelo y mostrar el numero de veces que los vuelos de cada plan de vuelo han sido
-- registrados como retrasado y el numero de veces cancelados en un intervalo de tiempo.
------------------
SELECT PV.id_plan_vuelo, PV.distancia, V.id_vuelo FROM horizontegt.plan_vuelo AS PV
INNER JOIN horizontegt.vuelo AS V ON PV.id_plan_vuelo = V.plan_vuelo_id_plan_vuelo;

SELECT PV.id_plan_vuelo, PV.distancia, COUNT(EV.estado_vuelo) FROM horizontegt.plan_vuelo AS PV
INNER JOIN horizontegt.vuelo AS V ON PV.id_plan_vuelo = V.plan_vuelo_id_plan_vuelo
INNER JOIN horizontegt.estado_vuelo AS EV ON EV.vuelo_id_vuelo = V.id_vuelo AND EV.estado_vuelo = 'Retrasado' GROUP BY PV.id_plan_vuelo;

SELECT COUNT(*) FROM horizontegt.estado_vuelo AS EV WHERE EV.estado_vuelo = 'Retrasado' AND EV.vuelo_id_vuelo = V.plan_vuelo) AS Cantidad_Retrasados;

----FUNCIONA MAL
SELECT PV.id_plan_vuelo,V.id_vuelo, (SELECT COUNT(*) FROM horizontegt.estado_vuelo EV WHERE EV.estado_vuelo = 'Retraso' AND EV.vuelo_id_vuelo = V.id_vuelo) AS Cantidad_Retrasada,
(SELECT COUNT(*) FROM horizontegt.estado_vuelo EV WHERE EV.estado_vuelo = 'Cancelado' AND EV.vuelo_id_vuelo = V.id_vuelo) AS Cantidad_Cancelada
FROM horizontegt.vuelo AS V INNER JOIN horizontegt.plan_vuelo AS PV ON PV.id_plan_vuelo = V.plan_vuelo_id_plan_vuelo
INNER JOIN horizontegt.estado_vuelo AS EV ON V.id_vuelo = EV.vuelo_id_vuelo GROUP BY PV.id_plan_vuelo, V.id_vuelo ORDER BY PV.id_plan_vuelo ASC;

----FUNCIONA MAL CON FECHAS
SELECT PV.id_plan_vuelo,V.id_vuelo, (SELECT COUNT(*) FROM horizontegt.estado_vuelo EV WHERE EV.estado_vuelo = 'Retraso' AND EV.vuelo_id_vuelo = V.id_vuelo) AS Cantidad_Retrasada,
(SELECT COUNT(*) FROM horizontegt.estado_vuelo EV WHERE EV.estado_vuelo = 'Cancelado' AND EV.vuelo_id_vuelo = V.id_vuelo) AS Cantidad_Cancelada
FROM horizontegt.vuelo AS V INNER JOIN horizontegt.plan_vuelo AS PV ON PV.id_plan_vuelo = V.plan_vuelo_id_plan_vuelo
INNER JOIN horizontegt.estado_vuelo AS EV ON V.id_vuelo = EV.vuelo_id_vuelo WHERE EV.fecha BETWEEN
'2022-01-15' AND '2022-04-25' GROUP BY PV.id_plan_vuelo, V.id_vuelo ORDER BY PV.id_plan_vuelo ASC;

---FUNCIONA CON FECHAS------------------------------------------------
SELECT id_plan_vuelo, SUM(cantidad_retrasada) AS Cantidad_Retrasada,SUM(cantidad_cancelada) AS Cantidad_Cancelada FROM (
    SELECT PV.id_plan_vuelo,V.id_vuelo, (SELECT COUNT(*) FROM horizontegt.estado_vuelo EV WHERE EV.estado_vuelo = 'Retraso' AND EV.vuelo_id_vuelo = V.id_vuelo) AS Cantidad_Retrasada,
(SELECT COUNT(*) FROM horizontegt.estado_vuelo EV WHERE EV.estado_vuelo = 'Cancelado' AND EV.vuelo_id_vuelo = V.id_vuelo) AS Cantidad_Cancelada
FROM horizontegt.vuelo AS V INNER JOIN horizontegt.plan_vuelo AS PV ON PV.id_plan_vuelo = V.plan_vuelo_id_plan_vuelo
INNER JOIN horizontegt.estado_vuelo AS EV ON V.id_vuelo = EV.vuelo_id_vuelo WHERE EV.fecha BETWEEN
'2022-01-15' AND '2022-04-25' GROUP BY PV.id_plan_vuelo, V.id_vuelo ORDER BY PV.id_plan_vuelo ASC
) AS filtrado GROUP BY id_plan_vuelo; 
-------------------------------------------------------------------------------

SELECT PV.id_plan_vuelo, (SELECT COUNT(*) FROM horizontegt.estado_vuelo EV WHERE EV.estado_vuelo = 'Retraso' AND EV.vuelo_id_vuelo = V.id_vuelo) AS Cantidad_Retrasada
FROM horizontegt.plan_vuelo AS PV INNER JOIN horizontegt.vuelo AS V ON PV.id_plan_vuelo = V.plan_vuelo_id_plan_vuelo
INNER JOIN horizontegt.estado_vuelo AS EV ON V.id_vuelo = EV.vuelo_id_vuelo GROUP BY PV.id_plan_vuelo;


SELECT COUNT(EV.estado_vuelo) FROM horizontegt.estado_vuelo AS EV INNER JOIN horizontegt.vuelo AS V ON EV.vuelo_id_vuelo = V.id_vuelo WHERE EV.estado_vuelo = 'Retrasado';



SELECT COUNT(EV.estado_vuelo) FROM horizontegt.estado_vuelo EV INNER JOIN horizontegt.vuelo AS V 
ON EV.vuelo_id_vuelo = V.id_vuelo WHERE EV.estado_vuelo = 'Retraso'; 


SELECT V.codigo_vuelo, (SELECT count(*) FROM aerolinea.historial_vuelo H WHERE
H.status='RETRASADO' AND H.codigo_vuelo_Vuelo=V.codigo_vuelo ) As
Cantidad_Retrasado,
(SELECT count(*) FROM aerolinea.historial_vuelo H WHERE
H.status='CANCELADO' AND H.codigo_vuelo_Vuelo=V.codigo_vuelo ) As
Cantidad_Cancelado

FROM aerolinea.vuelo V

INNER JOIN aerolinea.plan_vuelo P
ON P.codigo_vuelo=V.codigo_vuelo_Plan_Vuelo

INNER JOIN aerolinea.historial_vuelo H
ON V.codigo_vuelo=H.codigo_vuelo_Vuelo WHERE P.fecha_vuelo BETWEEN
'2020-04-01' AND '2022-09-09' Group By V.codigo_vuelo Order By
V.codigo_vuelo Asc