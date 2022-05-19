-----QUERY NO. 3
SELECT A.personal_aeropuerto_pasaporte AS pasaporte,(SELECT nombres FROM horizontegt.persona WHERE pasaporte = A.personal_aeropuerto_pasaporte) AS nombres, 
(SELECT apellidos FROM horizontegt.persona WHERE pasaporte = A.personal_aeropuerto_pasaporte) AS apellidos, 
COUNT(A.vuelo_id_vuelo) AS Cantidad_Vuelos, SUM(A.distancia) AS Millas_Recorridas, SUM(C.subtotal) AS Comisiones FROM horizontegt.asignacion_tripulacion AS A 
INNER JOIN horizontegt.comisiones AS C ON A.personal_aeropuerto_pasaporte = C.pasaporte AND (A.rol='Piloto' OR A.rol='Co-Piloto')
WHERE A.fecha BETWEEN '2022-01-01' AND '2022-03-25'  GROUP BY A.personal_aeropuerto_pasaporte ORDER BY Millas_Recorridas DESC LIMIT 3;

-----QUERY NO. 5
SELECT SUM(N.sueldo_base) AS Total_Sueldo_Base, SUM(N.comisiones) AS Total_Comisiones, SUM(N.total) AS Total_Nomina FROM horizontegt.nomina_sueldos_empleados AS N WHERE N.fecha_pago BETWEEN
'2022-01-01' AND '2022-01-31';

-----QUERY NO. 6
SELECT id_plan_vuelo, SUM(cantidad_retrasada) AS Cantidad_Retrasada,SUM(cantidad_cancelada) AS Cantidad_Cancelada FROM (
    SELECT PV.id_plan_vuelo,V.id_vuelo, (SELECT COUNT(*) FROM horizontegt.estado_vuelo EV WHERE EV.estado_vuelo = 'Retraso' AND EV.vuelo_id_vuelo = V.id_vuelo) AS Cantidad_Retrasada,
(SELECT COUNT(*) FROM horizontegt.estado_vuelo EV WHERE EV.estado_vuelo = 'Cancelado' AND EV.vuelo_id_vuelo = V.id_vuelo) AS Cantidad_Cancelada
FROM horizontegt.vuelo AS V INNER JOIN horizontegt.plan_vuelo AS PV ON PV.id_plan_vuelo = V.plan_vuelo_id_plan_vuelo
INNER JOIN horizontegt.estado_vuelo AS EV ON V.id_vuelo = EV.vuelo_id_vuelo WHERE EV.fecha BETWEEN
'2022-01-15' AND '2022-05-25' GROUP BY PV.id_plan_vuelo, V.id_vuelo ORDER BY PV.id_plan_vuelo ASC
) AS filtrado GROUP BY id_plan_vuelo; 

-----QUERY NO. 8
SELECT PA.pasaporte, P.nombres, P.apellidos, PA.puesto, ((PA.horario_salida - PA.horario_entrada)*20) AS Horas_Trabajadas,
 (20*4) AS Horas_Vacaciones, (20) AS Horas_Ausentes, N.comisiones, N.sueldo_base, N.total FROM horizontegt.personal_aeropuerto AS PA INNER JOIN horizontegt.persona AS P ON
PA.pasaporte=P.pasaporte INNER JOIN horizontegt.nomina_sueldos_empleados AS N ON PA.pasaporte = N.personal_aeropuerto_pasaporte 
AND N.fecha_pago BETWEEN '2022-01-01' AND '2022-01-31';

-----QUERY NO. 9
SELECT A.modelo, COUNT(V.avion_codigo_avion) AS Cantidad_Vuelos, Min(V.fecha) AS Primer_Vuelo, Max(V.fecha) AS Ultimo_Vuelo FROM horizontegt.vuelo V 
INNER JOIN horizontegt.avion A ON V.avion_codigo_avion = A.codigo_avion
INNER JOIN horizontegt.estado_vuelo E ON E.vuelo_id_vuelo = V.id_vuelo AND E.estado_vuelo = 'Completado'
GROUP BY A.modelo ORDER BY Cantidad_Vuelos DESC LIMIT 5;