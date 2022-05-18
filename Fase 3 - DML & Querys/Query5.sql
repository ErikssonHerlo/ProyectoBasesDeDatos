SELECT SUM(N.sueldo_base) AS Total_Sueldo_Base, SUM(N.comisiones) AS Total_Comisiones, SUM(N.total) AS Total_Nomina FROM horizontegt.nomina_sueldos_empleados AS N WHERE N.fecha_pago BETWEEN
'2022-01-01' AND '2022-01-31';


