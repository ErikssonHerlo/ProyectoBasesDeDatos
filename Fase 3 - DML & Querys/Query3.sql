---------Identificar los 3 pilotos de vuelos con mayor número de millas y las comisiones
--------ganadas por el piloto en un lapso de tiempo. Se debe adjuntar el número de vuelos.

SELECT A.personal_aeropuerto_pasaporte, COUNT(A.vuelo_id_vuelo), SUM(A.distancia), SUM(C.subtotal) FROM horizontegt.asignacion_tripulacion AS A 
INNER JOIN horizontegt.comisiones AS C ON A.personal_aeropuerto_pasaporte = C.pasaporte 
WHERE A.fecha BETWEEN '2022-01-01' AND '2022-01-31' AND (A.rol='Piloto' OR A.rol='Co-Piloto') GROUP BY A.personal_aeropuerto_pasaporte;

-----V2

SELECT A.personal_aeropuerto_pasaporte AS pasaporte,(SELECT nombres FROM horizontegt.persona WHERE pasaporte = A.personal_aeropuerto_pasaporte) AS nombres, 
(SELECT apellidos FROM horizontegt.persona WHERE pasaporte = A.personal_aeropuerto_pasaporte) AS apellidos, 
COUNT(A.vuelo_id_vuelo) AS Cantidad_Vuelos, SUM(A.distancia) AS Millas_Recorridas, SUM(C.subtotal) AS Comisiones FROM horizontegt.asignacion_tripulacion AS A 
INNER JOIN horizontegt.comisiones AS C ON A.personal_aeropuerto_pasaporte = C.pasaporte AND (A.rol='Piloto' OR A.rol='Co-Piloto')
WHERE A.fecha BETWEEN '2022-01-01' AND '2022-01-25'  GROUP BY A.personal_aeropuerto_pasaporte ORDER BY Millas_Recorridas DESC LIMIT 3;


