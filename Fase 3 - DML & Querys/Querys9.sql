SELECT A.modelo, COUNT(V.avion_codigo_avion) AS Cantidad_Vuelos, V.fecha FROM horizontegt.avion AS A 
INNER JOIN horizontegt.vuelo AS V ON A.codigo_avion = V.avion_codigo_avion 
INNER JOIN horizontegt.estado_vuelo AS E ON V.estado_vuelo_id_estado_vuelo = E.id_estado_vuelo
GROUP BY A.modelo ORDER BY Cantidad_Vuelos DESC LIMIT 5;

-------------------------------------------------
SELECT A.modelo, COUNT(V.avion_codigo_avion) AS Cantidad_Vuelos, Min(V.fecha) AS Primer_Vuelo, Max(V.fecha) AS Ultimo_Vuelo FROM horizontegt.vuelo V 
INNER JOIN horizontegt.avion A ON V.avion_codigo_avion = A.codigo_avion
INNER JOIN horizontegt.estado_vuelo E ON V.estado_vuelo_id_estado_vuelo = E.id_estado_vuelo AND E.estado_vuelo = 'Aterrizo'
GROUP BY A.modelo ORDER BY Cantidad_Vuelos DESC LIMIT 5;
-------------------------------------------------

-------------------------------------------------
SELECT A.modelo, COUNT(V.avion_codigo_avion) AS Cantidad_Vuelos, Min(V.fecha) AS Primer_Vuelo, Max(V.fecha) AS Ultimo_Vuelo FROM horizontegt.vuelo V 
INNER JOIN horizontegt.avion A ON V.avion_codigo_avion = A.codigo_avion
INNER JOIN horizontegt.estado_vuelo E ON E.vuelo_id_vuelo = V.id_vuelo AND E.estado_vuelo = 'Completado'
GROUP BY A.modelo ORDER BY Cantidad_Vuelos DESC LIMIT 5;
-------------------------------------------------


SELECT V.id_vuelo, V.fecha, V.avion_codigo_avion, E.id_estado_vuelo FROM horizontegt.vuelo V
INNER JOIN horizontegt.estado_vuelo E ON V.estado_vuelo_id_estado_vuelo = E.id_estado_vuelo AND E.estado_vuelo = 'Aterrizo';

SELECT A.modelo, A.tipo , count(A.codigo) As Cantidad_Vuelos,
A.fecha_primer_vuelo
FROM aerolinea.vuelo V
INNER JOIN aerolinea.plan_vuelo P
ON V.codigo_vuelo_Plan_Vuelo= P.codigo_vuelo
INNER JOIN aerolinea.avion A
ON A.codigo= V.codigo_Avion Group By A.codigo Order By
Cantidad_Vuelos Desc limit 5