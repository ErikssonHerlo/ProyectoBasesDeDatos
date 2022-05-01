-- MySQL Script generated by MySQL Workbench
-- Sun May  1 03:54:08 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

DROP DATABASE IF EXISTS "horizontegt";
CREATE DATABASE "horizontegt";

-- -----------------------------------------------------
-- Schema horizontegt
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS "horizontegt" CASCADE;

-- -----------------------------------------------------
-- Schema horizontegt
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS  "horizontegt"  ;

-- -----------------------------------------------------
-- Table "horizontegt"."documento_identificacion"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."documento_identificacion" (
  "pasaporte" VARCHAR(50) NOT NULL,
  "DNI" VARCHAR(45) NULL,
  "VISA" VARCHAR(45) NULL,
  "pasaporte_alternativo" VARCHAR(45) NULL,
  "licencia_conducir" VARCHAR(45) NULL,
  PRIMARY KEY ("pasaporte"));


-- -----------------------------------------------------
-- Table "horizontegt"."persona"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."persona" (
  "pasaporte" VARCHAR(50) NOT NULL,
  "nombres" VARCHAR(50) NOT NULL,
  "apellidos" VARCHAR(70) NOT NULL,
  "fecha_nacimiento" DATE NOT NULL,
  "edad" INT NOT NULL,
  "genero" VARCHAR(30) NOT NULL,
  "telefono" VARCHAR(30) NOT NULL,
  "telefono_2" VARCHAR(30) NOT NULL,
  "email" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("pasaporte"),
  CONSTRAINT "fk_table1_documento_identificacion"
    FOREIGN KEY ("pasaporte")
    REFERENCES "horizontegt"."documento_identificacion" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."pasajero"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."pasajero" (
  "pasaporte" VARCHAR(50) NOT NULL,
  "edad" INT NOT NULL,
  "es_nino" BOOLEAN NULL,
  PRIMARY KEY ("pasaporte"),
  CONSTRAINT "fk_pasajero_persona1"
    FOREIGN KEY ("pasaporte")
    REFERENCES "horizontegt"."persona" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."tipo_avion"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."tipo_avion" (
  "tipo_avion" VARCHAR(50) NOT NULL,
  "descripcion" TEXT NULL,
  "capacidad" INT NULL,
  PRIMARY KEY ("tipo_avion"));


-- -----------------------------------------------------
-- Table "horizontegt"."estado_avion"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."estado_avion" (
  "estado" VARCHAR(45) NOT NULL,
  "descripcion" TEXT NULL,
  PRIMARY KEY ("estado"));


-- -----------------------------------------------------
-- Table "horizontegt"."avion"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."avion" (
  "codigo_avion" VARCHAR(30) NOT NULL,
  "modelo" VARCHAR(45) NULL,
  "tipo_avion_tipo_avion" VARCHAR(50) NOT NULL,
  "fecha_adquisicion" DATE NULL,
  "fecha_mantenimiento" DATE NULL,
  "estado_avion_estado" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("codigo_avion"),
  CONSTRAINT "fk_avion_tipo_avion1"
    FOREIGN KEY ("tipo_avion_tipo_avion")
    REFERENCES "horizontegt"."tipo_avion" ("tipo_avion")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_avion_estado_avion1"
    FOREIGN KEY ("estado_avion_estado")
    REFERENCES "horizontegt"."estado_avion" ("estado")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."clase"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."clase" (
  "nombre_clase" VARCHAR(45) NOT NULL,
  "acronimo" VARCHAR(10) NULL,
  "descripcion" TEXT NULL,
  "ubicacion" VARCHAR(45) NULL,
  "cant_tarifas_cambio" INT NULL,
  "cant_maleta_documentadas" INT NULL,
  "cant_maleta_mano" INT NULL,
  "eleccion_asiento" BOOLEAN NULL,
  PRIMARY KEY ("nombre_clase"));


-- -----------------------------------------------------
-- Table "horizontegt"."asiento"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."asiento" (
  "numero_fila" INT NOT NULL,
  "letra_columna" CHAR(2) NOT NULL,
  "avion_codigo_avion" VARCHAR(30) NOT NULL,
  "clase_nombre_clase" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("numero_fila", "letra_columna", "avion_codigo_avion", "clase_nombre_clase"),
  CONSTRAINT "fk_asiento_avion1"
    FOREIGN KEY ("avion_codigo_avion")
    REFERENCES "horizontegt"."avion" ("codigo_avion")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_asiento_clase1"
    FOREIGN KEY ("clase_nombre_clase")
    REFERENCES "horizontegt"."clase" ("nombre_clase")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."boleto"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."boleto" (
  "idboleto" SERIAL NOT NULL,
  "asiento_numero_fila" INT NOT NULL,
  "asiento_letra_columna" CHAR(2) NOT NULL,
  "asiento_avion_codigo_avion" VARCHAR(30) NOT NULL,
  "asiento_clase_nombre_clase" VARCHAR(45) NOT NULL,
  "pasajero_pasaporte" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("idboleto"),
  CONSTRAINT "fk_boleto_asiento1"
    FOREIGN KEY ("asiento_numero_fila" , "asiento_letra_columna" , "asiento_avion_codigo_avion" , "asiento_clase_nombre_clase")
    REFERENCES "horizontegt"."asiento" ("numero_fila" , "letra_columna" , "avion_codigo_avion" , "clase_nombre_clase")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_boleto_pasajero1"
    FOREIGN KEY ("pasajero_pasaporte")
    REFERENCES "horizontegt"."pasajero" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."dias_plan_vuelo"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."dias_plan_vuelo" (
  "id_dias_plan_vuelo" SERIAL NOT NULL,
  "dias_plan" JSON NOT NULL,
  PRIMARY KEY ("id_dias_plan_vuelo"));


-- -----------------------------------------------------
-- Table "horizontegt"."plan_vuelo"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."plan_vuelo" (
  "id_plan_vuelo" SERIAL NOT NULL,
  "dias_plan_vuelo_id_dias_plan_vuelo" INT NOT NULL,
  "distancia" DECIMAL(10,2) NULL,
  "tipo_avion_tipo_avion" VARCHAR(50) NOT NULL,
  "es_temporal" BOOLEAN NULL,
  "fecha_inicio" DATE NULL,
  "fecha_final" DATE NULL,
  "estado" VARCHAR(45) NULL,
  PRIMARY KEY ("id_plan_vuelo"),
  CONSTRAINT "fk_plan_vuelo_dias_plan_vuelo1"
    FOREIGN KEY ("dias_plan_vuelo_id_dias_plan_vuelo")
    REFERENCES "horizontegt"."dias_plan_vuelo" ("id_dias_plan_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_plan_vuelo_tipo_avion1"
    FOREIGN KEY ("tipo_avion_tipo_avion")
    REFERENCES "horizontegt"."tipo_avion" ("tipo_avion")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."aeropuerto"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."aeropuerto" (
  "id_aeropuerto" BIGINT NOT NULL,
  "nombre" VARCHAR(100) NULL,
  "direccion" VARCHAR(100) NULL,
  "ciudad" VARCHAR(45) NULL,
  "pais" VARCHAR(45) NULL,
  "continente" VARCHAR(30) NULL,
  PRIMARY KEY ("id_aeropuerto"));


-- -----------------------------------------------------
-- Table "horizontegt"."salida_plan_vuelo"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."salida_plan_vuelo" (
  "id_salida_plan_vuelo" INT NOT NULL,
  "puerta_abordaje" VARCHAR(45) NULL,
  "hora_abordaje" TIME NULL,
  "hora_salida" TIME NULL,
  "salida_plan_vuelocol" VARCHAR(45) NULL,
  "aeropuerto_id_aeropuerto" BIGINT NOT NULL,
  "plan_vuelo_id_plan_vuelo" BIGINT NOT NULL,
  PRIMARY KEY ("id_salida_plan_vuelo"),
  CONSTRAINT "fk_salida_plan_vuelo_aeropuerto1"
    FOREIGN KEY ("aeropuerto_id_aeropuerto")
    REFERENCES "horizontegt"."aeropuerto" ("id_aeropuerto")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_salida_plan_vuelo_plan_vuelo1"
    FOREIGN KEY ("plan_vuelo_id_plan_vuelo")
    REFERENCES "horizontegt"."plan_vuelo" ("id_plan_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."llegada_plan_vuelo"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."llegada_plan_vuelo" (
  "id_llegada_plan_vuelo" INT NOT NULL,
  "puerta_desembarque" VARCHAR(45) NULL,
  "hora_llegada" TIME NULL,
  "aeropuerto_id_aeropuerto" BIGINT NOT NULL,
  "plan_vuelo_id_plan_vuelo" BIGINT NOT NULL,
  PRIMARY KEY ("id_llegada_plan_vuelo"),
  CONSTRAINT "fk_llegada_plan_vuelo_aeropuerto1"
    FOREIGN KEY ("aeropuerto_id_aeropuerto")
    REFERENCES "horizontegt"."aeropuerto" ("id_aeropuerto")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_llegada_plan_vuelo_plan_vuelo1"
    FOREIGN KEY ("plan_vuelo_id_plan_vuelo")
    REFERENCES "horizontegt"."plan_vuelo" ("id_plan_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."estado_vuelo"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."estado_vuelo" (
  "id_estado_vuelo" INT NOT NULL,
  "estado_vuelo" VARCHAR(45) NULL,
  "descripcion" TEXT NULL,
  "fecha" DATE NULL,
  "hora" TIME NULL,
  PRIMARY KEY ("id_estado_vuelo"));


-- -----------------------------------------------------
-- Table "horizontegt"."vuelo"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."vuelo" (
  "id_vuelo" BIGINT NOT NULL,
  "fecha" DATE NULL,
  "plan_vuelo_id_plan_vuelo" BIGINT NOT NULL,
  "avion_codigo_avion" VARCHAR(30) NOT NULL,
  "puerta_abordaje" VARCHAR(45) NULL,
  "puerta_desembarque" VARCHAR(45) NULL,
  "hora_despegue" DATE NULL,
  "hora_aterrizaje" DATE NULL,
  "estado_vuelo_id_estado_vuelo" INT NOT NULL,
  PRIMARY KEY ("id_vuelo"),
  CONSTRAINT "fk_vuelo_plan_vuelo1"
    FOREIGN KEY ("plan_vuelo_id_plan_vuelo")
    REFERENCES "horizontegt"."plan_vuelo" ("id_plan_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_vuelo_avion1"
    FOREIGN KEY ("avion_codigo_avion")
    REFERENCES "horizontegt"."avion" ("codigo_avion")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_vuelo_estado_vuelo1"
    FOREIGN KEY ("estado_vuelo_id_estado_vuelo")
    REFERENCES "horizontegt"."estado_vuelo" ("id_estado_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."distribucion_asiento"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."distribucion_asiento" (
  "id_distribucion_asiento" SERIAL NOT NULL,
  "cantidad_filas" INT NULL,
  "cantidad_columnas" INT NULL,
  "cantidad_tripulantes" INT NULL,
  "avion_codigo_avion" VARCHAR(30) NOT NULL,
  "clase_nombre_clase" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_distribucion_asiento"),
  CONSTRAINT "fk_distribucion_asiento_avion1"
    FOREIGN KEY ("avion_codigo_avion")
    REFERENCES "horizontegt"."avion" ("codigo_avion")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_distribucion_asiento_clase1"
    FOREIGN KEY ("clase_nombre_clase")
    REFERENCES "horizontegt"."clase" ("nombre_clase")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."beneficios_extra"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."beneficios_extra" (
  "id_beneficios_extra" SERIAL NOT NULL,
  "beneficio" VARCHAR(45) NULL,
  "descripcion" TEXT NULL,
  "clase_nombre_clase" VARCHAR(45) NOT NULL,
  "vuelo_id_vuelo" BIGINT NOT NULL,
  PRIMARY KEY ("id_beneficios_extra"),
  CONSTRAINT "fk_beneficios_extra_clase1"
    FOREIGN KEY ("clase_nombre_clase")
    REFERENCES "horizontegt"."clase" ("nombre_clase")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_beneficios_extra_vuelo1"
    FOREIGN KEY ("vuelo_id_vuelo")
    REFERENCES "horizontegt"."vuelo" ("id_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."nacionalidad"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."nacionalidad" (
  "id_nacionalidad" SERIAL NOT NULL,
  "nacionalidades" JSON NULL,
  "persona_pasaporte" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("id_nacionalidad"),
  CONSTRAINT "fk_nacionalidad_persona1"
    FOREIGN KEY ("persona_pasaporte")
    REFERENCES "horizontegt"."persona" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."maleta_documentada"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."maleta_documentada" (
  "id_maleta_documentada" INT NOT NULL,
  "peso" DECIMAL(10,2) NULL,
  "precio" DECIMAL(10,2) NULL,
  "es_gratis" BOOLEAN NULL,
  "descripcion" TEXT NULL,
  "boleto_idboleto" BIGINT NOT NULL,
  PRIMARY KEY ("id_maleta_documentada"),
  CONSTRAINT "fk_maleta_documentada_boleto1"
    FOREIGN KEY ("boleto_idboleto")
    REFERENCES "horizontegt"."boleto" ("idboleto")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."mascota"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."mascota" (
  "id_mascota" SERIAL NOT NULL,
  "nombre" VARCHAR(45) NULL,
  "peso" DECIMAL(10,2) NULL,
  "especie" VARCHAR(45) NULL,
  "certificado_veterinario" BOOLEAN NULL,
  "descripcion" TEXT NULL,
  "maleta_documentada_id_maleta_documentada" INT NULL,
  PRIMARY KEY ("id_mascota"),
  CONSTRAINT "fk_mascota_maleta_documentada1"
    FOREIGN KEY ("maleta_documentada_id_maleta_documentada")
    REFERENCES "horizontegt"."maleta_documentada" ("id_maleta_documentada")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."lista_vacunas"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."lista_vacunas" (
  "id_vacuna" INT NOT NULL,
  "mascota_id_mascota" BIGINT NOT NULL,
  "nombre_vacuna" VARCHAR(45) NULL,
  "fecha_vacuna" DATE NULL,
  PRIMARY KEY ("id_vacuna", "mascota_id_mascota"),
  CONSTRAINT "fk_lista_vacunas_mascota1"
    FOREIGN KEY ("mascota_id_mascota")
    REFERENCES "horizontegt"."mascota" ("id_mascota")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."asignacion_mascota"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."asignacion_mascota" (
  "mascota_id_mascota" BIGINT NOT NULL,
  "pasajero_pasaporte" VARCHAR(50) NOT NULL,
  CONSTRAINT "fk_asignacion_mascota_mascota1"
    FOREIGN KEY ("mascota_id_mascota")
    REFERENCES "horizontegt"."mascota" ("id_mascota")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_asignacion_mascota_pasajero1"
    FOREIGN KEY ("pasajero_pasaporte")
    REFERENCES "horizontegt"."pasajero" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."encuesta"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."encuesta" (
  "id_encuesta" BIGINT NOT NULL,
  "vuelo_general" INT NULL,
  "servicio_tripulantes" INT NULL,
  "comida" INT NULL,
  "observaciones" TEXT NULL,
  "pasajero_pasaporte" VARCHAR(50) NOT NULL,
  "vuelo_id_vuelo" BIGINT NOT NULL,
  PRIMARY KEY ("id_encuesta"),
  CONSTRAINT "fk_encuesta_pasajero1"
    FOREIGN KEY ("pasajero_pasaporte")
    REFERENCES "horizontegt"."pasajero" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_encuesta_vuelo1"
    FOREIGN KEY ("vuelo_id_vuelo")
    REFERENCES "horizontegt"."vuelo" ("id_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."tipo_empleado"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."tipo_empleado" (
  "tipo_empleado" VARCHAR(45) NOT NULL,
  "descripcion" TEXT NULL,
  PRIMARY KEY ("tipo_empleado"));


-- -----------------------------------------------------
-- Table "horizontegt"."personal_aeropuerto"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."personal_aeropuerto" (
  "pasaporte" VARCHAR(50) NOT NULL,
  "puesto" VARCHAR(45) NULL,
  "sueldo_base" DECIMAL(10,2) NULL,
  "personal_aeropuertocol" VARCHAR(45) NULL,
  "tipo_empleado" VARCHAR(45) NOT NULL,
  "anios_experiencia" INT NULL,
  "horario_entrada" TIME NULL,
  "horario_salida" TIME NULL,
  "dias_enfermedad" INT NULL,
  "dias_vacaciones" INT NULL,
  PRIMARY KEY ("pasaporte"),
  CONSTRAINT "fk_personal_aeropuerto_persona1"
    FOREIGN KEY ("pasaporte")
    REFERENCES "horizontegt"."persona" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_personal_aeropuerto_tipo_empleado1"
    FOREIGN KEY ("tipo_empleado")
    REFERENCES "horizontegt"."tipo_empleado" ("tipo_empleado")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."solicitudes_vacaciones"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."solicitudes_vacaciones" (
  "no_solicitud" SERIAL NOT NULL,
  "estado" VARCHAR(45) NULL,
  "fecha" DATE NULL,
  "personal_aeropuerto_pasaporte" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("no_solicitud"),
  CONSTRAINT "fk_solicitudes_vacaciones_personal_aeropuerto1"
    FOREIGN KEY ("personal_aeropuerto_pasaporte")
    REFERENCES "horizontegt"."personal_aeropuerto" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."asignacion_tripulacion"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."asignacion_tripulacion" (
  "personal_aeropuerto_pasaporte" VARCHAR(50) NOT NULL,
  "vuelo_id_vuelo" BIGINT NOT NULL,
  "rol" VARCHAR(45) NULL,
  "cantidad_horas" INT NULL,
  "fecha" DATE NULL,
  PRIMARY KEY ("personal_aeropuerto_pasaporte", "vuelo_id_vuelo"),
  CONSTRAINT "fk_asignacion_tripulacion_personal_aeropuerto1"
    FOREIGN KEY ("personal_aeropuerto_pasaporte")
    REFERENCES "horizontegt"."personal_aeropuerto" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_asignacion_tripulacion_vuelo1"
    FOREIGN KEY ("vuelo_id_vuelo")
    REFERENCES "horizontegt"."vuelo" ("id_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."comisiones"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."comisiones" (
  "pasaporte" VARCHAR(50) NOT NULL,
  "id_vuelo" BIGINT NOT NULL,
  "fecha" DATE NULL,
  "comision" DECIMAL(10,2) NULL,
  "comision_anios" DECIMAL(10,2) NULL,
  "subtotal" DECIMAL(10,2) NULL,
  PRIMARY KEY ("pasaporte", "id_vuelo"),
  CONSTRAINT "fk_comisiones_asignacion_tripulacion1"
    FOREIGN KEY ("pasaporte" , "id_vuelo")
    REFERENCES "horizontegt"."asignacion_tripulacion" ("personal_aeropuerto_pasaporte" , "vuelo_id_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."precio"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."precio" (
  "id_precio" SERIAL NOT NULL,
  "dia" VARCHAR(15) NULL,
  "tipo_pasajero" BOOLEAN NULL,
  "plan_vuelo_id_plan_vuelo" BIGINT NOT NULL,
  "clase_nombre_clase" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_precio"),
  CONSTRAINT "fk_precio_plan_vuelo1"
    FOREIGN KEY ("plan_vuelo_id_plan_vuelo")
    REFERENCES "horizontegt"."plan_vuelo" ("id_plan_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_precio_clase1"
    FOREIGN KEY ("clase_nombre_clase")
    REFERENCES "horizontegt"."clase" ("nombre_clase")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."nomina_sueldos_empleados"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."nomina_sueldos_empleados" (
  "id_nomina_sueldos_empleados" SERIAL NOT NULL,
  "sueldo_base" DECIMAL(10,2) NULL,
  "comisiones" DECIMAL(10,2) NULL,
  "total" DECIMAL(10,2) NULL,
  "fecha_pago" DATE NULL,
  "personal_aeropuerto_pasaporte" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("id_nomina_sueldos_empleados"),
  CONSTRAINT "fk_nomina_sueldos_empleados_personal_aeropuerto1"
    FOREIGN KEY ("personal_aeropuerto_pasaporte")
    REFERENCES "horizontegt"."personal_aeropuerto" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."tipo_cuenta"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."tipo_cuenta" (
  "nombre_cuenta" VARCHAR(45) NOT NULL,
  "cant_anios" INT NULL,
  "requerimiento_millas" INT NULL,
  "millas_por_dolar" INT NULL,
  "requerimiento_vuelos" INT NULL,
  "req_anios_cuenta_anterior" INT NULL,
  PRIMARY KEY ("nombre_cuenta"));


-- -----------------------------------------------------
-- Table "horizontegt"."usuario"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."usuario" (
  "pasaporte" VARCHAR(50) NOT NULL,
  "username" VARCHAR(45) NULL,
  "password" VARCHAR(45) NULL,
  "millas_acumuladas" INT NULL,
  "tipo_cuenta_nombre_cuenta" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("pasaporte"),
  CONSTRAINT "fk_table1_persona1"
    FOREIGN KEY ("pasaporte")
    REFERENCES "horizontegt"."persona" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_usuario_tipo_cuenta1"
    FOREIGN KEY ("tipo_cuenta_nombre_cuenta")
    REFERENCES "horizontegt"."tipo_cuenta" ("nombre_cuenta")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."cortesia"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."cortesia" (
  "id_cortesia" SERIAL NOT NULL,
  "cortesia" VARCHAR(45) NULL,
  "descripcion" TEXT NULL,
  "tipo_cuenta_nombre_cuenta" VARCHAR(45) NOT NULL,
  "usuario_pasaporte" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("id_cortesia"),
  CONSTRAINT "fk_cortesia_tipo_cuenta1"
    FOREIGN KEY ("tipo_cuenta_nombre_cuenta")
    REFERENCES "horizontegt"."tipo_cuenta" ("nombre_cuenta")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_cortesia_usuario1"
    FOREIGN KEY ("usuario_pasaporte")
    REFERENCES "horizontegt"."usuario" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."historial_cuentas_usuario"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."historial_cuentas_usuario" (
  "id_historial_cuentas_usuario" SERIAL NOT NULL,
  "usuario_pasaporte" VARCHAR(50) NOT NULL,
  "username" VARCHAR(45) NULL,
  "tipo_cuenta_nombre_cuenta" VARCHAR(45) NOT NULL,
  "fecha_creacion" DATE NULL,
  "fecha_cambio" DATE NULL,
  "anios_cuenta" INT NULL,
  PRIMARY KEY ("id_historial_cuentas_usuario"),
  CONSTRAINT "fk_historial_cuentas_usuario_usuario1"
    FOREIGN KEY ("usuario_pasaporte")
    REFERENCES "horizontegt"."usuario" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_historial_cuentas_usuario_tipo_cuenta1"
    FOREIGN KEY ("tipo_cuenta_nombre_cuenta")
    REFERENCES "horizontegt"."tipo_cuenta" ("nombre_cuenta")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."estado_compra"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."estado_compra" (
  "id_estado_compra" SERIAL NOT NULL,
  "estado_compra" VARCHAR(45) NULL,
  "fecha" DATE NULL,
  "hora" TIME NULL,
  "observaciones" TEXT NULL,
  PRIMARY KEY ("id_estado_compra"));


-- -----------------------------------------------------
-- Table "horizontegt"."compra"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."compra" (
  "id_compra" BIGINT NOT NULL,
  "usuario_pasaporte" VARCHAR(50) NULL,
  "persona_pasaporte" VARCHAR(50) NULL,
  "fecha_compra" DATE NULL,
  "hora_compra" TIME NULL,
  "estado_compra" INT NOT NULL,
  "total" DECIMAL(10,2) NULL,
  PRIMARY KEY ("id_compra"),
  CONSTRAINT "fk_compra_usuario1"
    FOREIGN KEY ("usuario_pasaporte")
    REFERENCES "horizontegt"."usuario" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_compra_persona1"
    FOREIGN KEY ("persona_pasaporte")
    REFERENCES "horizontegt"."persona" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_compra_estado_compra1"
    FOREIGN KEY ("estado_compra")
    REFERENCES "horizontegt"."estado_compra" ("id_estado_compra")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."aseguranza"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."aseguranza" (
  "id_aseguranza" SERIAL NOT NULL,
  "porcentaje" DECIMAL(10,2) NULL,
  "cuota" DECIMAL(10,2) NULL,
  PRIMARY KEY ("id_aseguranza"));


-- -----------------------------------------------------
-- Table "horizontegt"."detalle_compra"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."detalle_compra" (
  "id_detalle_compra" INT NOT NULL,
  "boleto_idboleto" BIGINT NOT NULL,
  "fecha_compra" DATE NULL,
  "precio" DECIMAL(10,2) NULL,
  "total_maletas_documentadas" DECIMAL(10,2) NULL,
  "total_aseguranza" DECIMAL(10,2) NULL,
  "sub_total" DECIMAL(10,2) NULL,
  "aseguranza_id_aseguranza" INT NULL,
  "compra_id_compra" BIGINT NOT NULL,
  PRIMARY KEY ("id_detalle_compra"),
  CONSTRAINT "fk_detalle_compra_boleto1"
    FOREIGN KEY ("boleto_idboleto")
    REFERENCES "horizontegt"."boleto" ("idboleto")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_detalle_compra_aseguranza1"
    FOREIGN KEY ("aseguranza_id_aseguranza")
    REFERENCES "horizontegt"."aseguranza" ("id_aseguranza")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_detalle_compra_compra1"
    FOREIGN KEY ("compra_id_compra")
    REFERENCES "horizontegt"."compra" ("id_compra")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."maleta_mano"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."maleta_mano" (
  "id_maleta_mano" SERIAL NOT NULL,
  "peso" DECIMAL(10,2) NULL,
  "descripcion" TEXT NULL,
  "boleto_idboleto" BIGINT NOT NULL,
  PRIMARY KEY ("id_maleta_mano"),
  CONSTRAINT "fk_maleta_mano_boleto1"
    FOREIGN KEY ("boleto_idboleto")
    REFERENCES "horizontegt"."boleto" ("idboleto")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."metodo_pago"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."metodo_pago" (
  "id_metodo_pago" SERIAL NOT NULL,
  "numero_tarjeta" BIGINT NULL,
  "tipo_tarjeta" VARCHAR(45) NULL,
  "persona_pasaporte" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("id_metodo_pago"),
  CONSTRAINT "fk_metodo_pago_persona1"
    FOREIGN KEY ("persona_pasaporte")
    REFERENCES "horizontegt"."persona" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."compra_vuelo"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."compra_vuelo" (
  "id_compra_vuelo" BIGINT NOT NULL,
  "fecha_compra" DATE NULL,
  "hora" TIME NULL,
  "total" DECIMAL(10,2) NULL,
  "persona_pasaporte" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("id_compra_vuelo"),
  CONSTRAINT "fk_compra_vuelo_persona1"
    FOREIGN KEY ("persona_pasaporte")
    REFERENCES "horizontegt"."persona" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."pago"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."pago" (
  "id_pago" BIGINT NOT NULL,
  "compra_id_compra" BIGINT NULL,
  "pago_total" DECIMAL(10,2) NULL,
  "compra_vuelo_id_compra_vuelo" BIGINT NULL,
  PRIMARY KEY ("id_pago"),
  CONSTRAINT "fk_pago_compra1"
    FOREIGN KEY ("compra_id_compra")
    REFERENCES "horizontegt"."compra" ("id_compra")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_pago_compra_vuelo1"
    FOREIGN KEY ("compra_vuelo_id_compra_vuelo")
    REFERENCES "horizontegt"."compra_vuelo" ("id_compra_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."detalle_pago"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."detalle_pago" (
  "id_detalle_pago" BIGINT NOT NULL,
  "cantidad_pago" DECIMAL(10,2) NULL,
  "formato_pago" VARCHAR(45) NULL,
  "pago_id_pago" BIGINT NULL,
  "metodo_pago_id_metodo_pago" BIGINT NULL,
  PRIMARY KEY ("id_detalle_pago"),
  CONSTRAINT "fk_detalle_pago_pago1"
    FOREIGN KEY ("pago_id_pago")
    REFERENCES "horizontegt"."pago" ("id_pago")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_detalle_pago_metodo_pago1"
    FOREIGN KEY ("metodo_pago_id_metodo_pago")
    REFERENCES "horizontegt"."metodo_pago" ("id_metodo_pago")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."servicio"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."servicio" (
  "id_servicio" SERIAL NOT NULL,
  "precio" DECIMAL(10,2) NULL,
  "tipo_servicio" VARCHAR(45) NULL,
  "descripcion" TEXT NULL,
  "disponible" BOOLEAN NULL,
  PRIMARY KEY ("id_servicio"));


-- -----------------------------------------------------
-- Table "horizontegt"."genero"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."genero" (
  "genero" VARCHAR(45) NOT NULL,
  "descripcion" TEXT NULL,
  PRIMARY KEY ("genero"));


-- -----------------------------------------------------
-- Table "horizontegt"."pelicula"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."pelicula" (
  "id_pelicula" BIGINT NOT NULL,
  "nombre_pelicula" VARCHAR(100) NULL,
  "precio" DECIMAL(10,2) NULL,
  "duracion" TIME NULL,
  "clasificacion" VARCHAR(10) NULL,
  "sinopsis" TEXT NULL,
  PRIMARY KEY ("id_pelicula"),
  CONSTRAINT "fk_pelicula_servicio1"
    FOREIGN KEY ("id_pelicula")
    REFERENCES "horizontegt"."servicio" ("id_servicio")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."pelicula_tiene_genero"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."pelicula_tiene_genero" (
  "genero_genero" VARCHAR(45) NOT NULL,
  "pelicula_id_pelicula" BIGINT NOT NULL,
  PRIMARY KEY ("genero_genero", "pelicula_id_pelicula"),
  CONSTRAINT "fk_table1_genero1"
    FOREIGN KEY ("genero_genero")
    REFERENCES "horizontegt"."genero" ("genero")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_pelicula_tiene_genero_pelicula1"
    FOREIGN KEY ("pelicula_id_pelicula")
    REFERENCES "horizontegt"."pelicula" ("id_pelicula")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."actor"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."actor" (
  "id_actor" SERIAL NOT NULL,
  "nombre_actor" VARCHAR(100) NULL,
  "fecha_nacimiento" DATE NULL,
  "genero" VARCHAR(45) NULL,
  PRIMARY KEY ("id_actor"));


-- -----------------------------------------------------
-- Table "horizontegt"."pelicula_tiene_actor"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."pelicula_tiene_actor" (
  "actor_id_actor" BIGINT NOT NULL,
  "pelicula_id_pelicula" BIGINT NOT NULL,
  PRIMARY KEY ("actor_id_actor", "pelicula_id_pelicula"),
  CONSTRAINT "fk_pelicula_tiene_actor_actor1"
    FOREIGN KEY ("actor_id_actor")
    REFERENCES "horizontegt"."actor" ("id_actor")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_pelicula_tiene_actor_pelicula1"
    FOREIGN KEY ("pelicula_id_pelicula")
    REFERENCES "horizontegt"."pelicula" ("id_pelicula")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."servicio_digital"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."servicio_digital" (
  "id_servicio_digital" BIGINT NOT NULL,
  "nombre_servicio" VARCHAR(45) NULL,
  "precio" DECIMAL(10,2) NULL,
  "descripcion" TEXT NULL,
  PRIMARY KEY ("id_servicio_digital"),
  CONSTRAINT "fk_servicio_digital_servicio1"
    FOREIGN KEY ("id_servicio_digital")
    REFERENCES "horizontegt"."servicio" ("id_servicio")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."menu_comida"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."menu_comida" (
  "id_menu_comida" BIGINT NOT NULL,
  "nombre_comida" VARCHAR(100) NULL,
  "ingredientes" TEXT NULL,
  "precio" DECIMAL(10,2) NULL,
  PRIMARY KEY ("id_menu_comida"),
  CONSTRAINT "fk_menu_comida_servicio1"
    FOREIGN KEY ("id_menu_comida")
    REFERENCES "horizontegt"."servicio" ("id_servicio")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."menu_gratis"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."menu_gratis" (
  "id_menu_gratis" SERIAL NOT NULL,
  "bebida" TEXT NULL,
  "comida" TEXT NULL,
  "clase_nombre_clase" VARCHAR(45) NOT NULL,
  PRIMARY KEY ("id_menu_gratis"),
  CONSTRAINT "fk_menu_gratis_clase1"
    FOREIGN KEY ("clase_nombre_clase")
    REFERENCES "horizontegt"."clase" ("nombre_clase")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."vuelo_tiene_servicio"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."vuelo_tiene_servicio" (
  "vuelo_id_vuelo" BIGINT NOT NULL,
  "servicio_id_servicio" BIGINT NOT NULL,
  "stock" INT NULL,
  PRIMARY KEY ("vuelo_id_vuelo", "servicio_id_servicio"),
  CONSTRAINT "fk_vuelo_tiene_servicio_vuelo1"
    FOREIGN KEY ("vuelo_id_vuelo")
    REFERENCES "horizontegt"."vuelo" ("id_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_vuelo_tiene_servicio_servicio1"
    FOREIGN KEY ("servicio_id_servicio")
    REFERENCES "horizontegt"."servicio" ("id_servicio")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."detalle_compra_vuelo"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."detalle_compra_vuelo" (
  "id_detalle_compra_vuelo" SERIAL NOT NULL,
  "cantidad" INT NULL,
  "precio" DECIMAL(10,2) NULL,
  "sub_total" DECIMAL(10,2) NULL,
  "servicio_id_vuelo" BIGINT NOT NULL,
  "servicio_id_servicio" BIGINT NOT NULL,
  "id_compra_vuelo" BIGINT NOT NULL,
  PRIMARY KEY ("id_detalle_compra_vuelo"),
  CONSTRAINT "fk_detalle_compra_vuelo_vuelo_tiene_servicio1"
    FOREIGN KEY ("servicio_id_vuelo" , "servicio_id_servicio")
    REFERENCES "horizontegt"."vuelo_tiene_servicio" ("vuelo_id_vuelo" , "servicio_id_servicio")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_detalle_compra_vuelo_compra_vuelo1"
    FOREIGN KEY ("id_compra_vuelo")
    REFERENCES "horizontegt"."compra_vuelo" ("id_compra_vuelo")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."asignacion_nino_pasajero"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."asignacion_nino_pasajero" (
  "nino_pasaporte" VARCHAR(50) NOT NULL,
  "pasajero_pasaporte" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("nino_pasaporte", "pasajero_pasaporte"),
  CONSTRAINT "fk_asignacion_nino_pasajero1"
    FOREIGN KEY ("nino_pasaporte")
    REFERENCES "horizontegt"."pasajero" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_asignacion_nino_pasajero_pasajero1"
    FOREIGN KEY ("pasajero_pasaporte")
    REFERENCES "horizontegt"."pasajero" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


-- -----------------------------------------------------
-- Table "horizontegt"."asignacion_nino_tripulante"
-- -----------------------------------------------------
CREATE TABLE  "horizontegt"."asignacion_nino_tripulante" (
  "nino_pasaporte" VARCHAR(50) NOT NULL,
  "personal_aeropuerto_pasaporte" VARCHAR(50) NOT NULL,
  PRIMARY KEY ("nino_pasaporte", "personal_aeropuerto_pasaporte"),
  CONSTRAINT "fk_asignacion_nino_tripulante_pasajero1"
    FOREIGN KEY ("nino_pasaporte")
    REFERENCES "horizontegt"."pasajero" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT "fk_asignacion_nino_tripulante_personal_aeropuerto1"
    FOREIGN KEY ("personal_aeropuerto_pasaporte")
    REFERENCES "horizontegt"."personal_aeropuerto" ("pasaporte")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);


