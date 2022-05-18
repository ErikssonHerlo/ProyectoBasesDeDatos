------------Reporte de empleados que indique el nombre del empleado, puesto, horas
----trabajadas, horas de vacaciones, horas de ausentes, comisiones ganadas y sueldo
---ganado en un mes.


SELECT ((horario_salida - horario_entrada)*20) AS Horas_Trabajadas FROM horizontegt.personal_aeropuerto;

SELECT PA.pasaporte, P.nombres, P.apellidos, PA.puesto, ((PA.horario_salida - PA.horario_entrada)*20) AS Horas_Trabajadas,
 (20*4) AS Horas_Vacaciones, (20) AS Horas_Ausentes FROM horizontegt.personal_aeropuerto AS PA INNER JOIN horizontegt.persona AS P ON
PA.pasaporte=P.pasaporte;

SELECT PA.pasaporte, P.nombres, P.apellidos, PA.puesto, ((PA.horario_salida - PA.horario_entrada)*20) AS Horas_Trabajadas,
 (20*4) AS Horas_Vacaciones, (20) AS Horas_Ausentes, N.comisiones, N.sueldo_base, N.total FROM horizontegt.personal_aeropuerto AS PA INNER JOIN horizontegt.persona AS P ON
PA.pasaporte=P.pasaporte INNER JOIN horizontegt.nomina_sueldos_empleados AS N ON PA.pasaporte = N.personal_aeropuerto_pasaporte 
AND N.fecha_pago BETWEEN '2022-01-01' AND '2022-01-31';