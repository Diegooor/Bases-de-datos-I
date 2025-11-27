--
-- Tarea 6 - Parte #2 del Proyecto de Aula
-- SCRIPTS DE CONSULTAS BÁSICAS (SELECT sin JOIN)
--
-- Miembros del grupo
--Diego Ordoñez
--Juan Camilo Valencia
--

--
-- CONSULTAS BÁSICAS
--

--
-- Consulta 1
---Lista de todos los pacientes hospitalizados, ordenados por fecha de atención
  SELECT cedula_paciente, fecha_atencion, motivo_hospitalizacion
  FROM hospitalizacion
  ORDER BY fecha_atencion;



--
-- Consulta 2
-- Promedio de la frecuencia de medicamentos en los tratamientos, ordenado por ID de tratamiento
  SELECT id_tratamiento, AVG(frecuencia_medicamento) AS promedio_frecuencia
  FROM medicamento_tratamiento
  GROUP BY id_tratamiento
  ORDER BY id_tratamiento;




--
-- Consulta 3
-- Lista de todos los tratamientos, ordenados por código de tratamiento
  SELECT id_tratamiento, codigo_tratamiento
  FROM tratamiento
  ORDER BY codigo_tratamiento;


--
-- Consulta 4
--- Consulta con COUNT: Número total de hospitalizaciones por motivo, ordenado por frecuencia
  SELECT motivo_hospitalizacion, COUNT(*) AS total_hospitalizaciones
  FROM hospitalizacion
  GROUP BY motivo_hospitalizacion
  ORDER BY total_hospitalizaciones DESC;



--
-- Consulta 5
-- Lista de todas las camas asignadas a pacientes, ordenadas por fecha de asignación
  SELECT id_asignacion, id_cama, fecha_asignacion
  FROM paciente_cama
  ORDER BY fecha_asignacion;



--
-- Consulta 6
-- Fecha más reciente de alta de un paciente, ordenada por fecha de alta
  SELECT MAX(fecha_alta) AS fecha_alta_mas_reciente
  FROM hospitalizacion
  WHERE fecha_alta IS NOT NULL
  ORDER BY fecha_alta;


--
-- Consulta 7
-- Lista de todas las tarjetas asignadas, ordenadas por número de tarjeta
  SELECT nro_tarjeta, cedula_paciente, hora_inicio, hora_fin
  FROM tarjeta_asignada
  ORDER BY nro_tarjeta;

--
-- Consulta 8
-- Fecha más antigua de ingreso de un paciente, ordenada por fecha de ingreso
  SELECT MIN(ingreso) AS fecha_ingreso_mas_antigua
  FROM paciente
  ORDER BY ingreso;




--
-- Consulta 9
-- Lista de todos los registros de visita, ordenados por fecha de visita
  SELECT id_registro, nro_tarjeta, fecha_visita 
  FROM registro_visita
  ORDER BY fecha_visita;

--
-- Consulta 10
-- Consulta con SUM: Suma total de la cantidad de medicamentos por tratamiento, ordenada por ID de tratamiento
 SELECT id_tratamiento, SUM(cantidad_medicamento) AS total_medicamentos
  FROM medicamento_tratamiento
  GROUP BY id_tratamiento
  ORDER BY id_tratamiento;
