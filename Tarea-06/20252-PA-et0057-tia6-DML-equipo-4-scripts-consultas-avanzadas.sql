--
-- Tarea 6 - Parte #2 del Proyecto de Aula
-- SCRIPTS DE CONSULTAS AVANZADAS (SELECT con JOIN)
--
-- Miembros del grupo
--Diego Ordoñez
--Juan Camilo Valencia
--

--
-- CONSULTAS AVANZADAS
--

-- 1 JOIN
--
-- Consulta 1
-- Calcula la edad promedio de los pacientes por EPS
  SELECT e.nombre_eps, AVG(EXTRACT(YEAR FROM AGE(CURRENT_DATE, p.fecha_nacimiento))) AS edad_promedio
  FROM paciente p
  JOIN eps e ON p.codigo_eps = e.codigo_eps
  GROUP BY e.nombre_eps
  ORDER BY edad_promedio DESC;



--
-- Consulta 2
-- Lista de médicos y su especialidad
  SELECT m.codigo_medico, m.nombre_medico, m.apellido_medico, es.nombre_especialidad
  FROM medico m
  JOIN especialidad es ON m.codigo_especialidad = es.codigo_especialidad
  ORDER BY m.apellido_medico;


--
-- Consulta 3
-- Número de hospitalizaciones por hospital
  SELECT hos.nombre_hospital, COUNT(h.id_hospitalizacion) AS total_hospitalizaciones
  FROM hospitalizacion h
  JOIN hospital hos ON h.codigo_hospital = hos.codigo_hospital
  GROUP BY hos.nombre_hospital
  ORDER BY total_hospitalizaciones DESC;

-- 2 JOIN

--
-- Consulta 4
-- Lista de pacientes, su EPS y la ciudad donde residen
  SELECT p.cedula_paciente, p.nombre_paciente, p.apellido_paciente, e.nombre_eps, c.nombre_ciudad
  FROM paciente p
  JOIN eps e ON p.codigo_eps = e.codigo_eps
  JOIN ciudad c ON p.codigo_ciudad = c.codigo_ciudad
  ORDER BY p.nombre_paciente;


--
-- Consulta 5
-- Lista de hospitalizaciones, el nombre del médico y su especialidad
  SELECT h.id_hospitalizacion, h.fecha_atencion, m.nombre_medico, m.apellido_medico, es.nombre_especialidad
  FROM hospitalizacion h
  JOIN medico m ON h.codigo_medico = m.codigo_medico
  JOIN especialidad es ON m.codigo_especialidad = es.codigo_especialidad
  ORDER BY h.fecha_atencion DESC;


--
-- Consulta 6
-- Fecha de alta más reciente por especialidad médica
  SELECT es.nombre_especialidad, MAX(h.fecha_alta) AS fecha_alta_mas_reciente
  FROM hospitalizacion h
  JOIN medico m ON h.codigo_medico = m.codigo_medico
  JOIN especialidad es ON m.codigo_especialidad = es.codigo_especialidad
  GROUP BY es.nombre_especialidad
  ORDER BY fecha_alta_mas_reciente DESC;

-- 3 JOIN

--
-- Consulta 7
-- fecha de atención más antigua para cada especialidad médica
  SELECT es.nombre_especialidad,m.nombre_medico,m.apellido_medico,hos.nombre_hospital,MIN(h.fecha_atencion) AS fecha_atencion_mas_antigua
  FROM hospitalizacion h
  JOIN medico m ON h.codigo_medico = m.codigo_medico
  JOIN especialidad es ON m.codigo_especialidad = es.codigo_especialidad
  JOIN hospital hos ON h.codigo_hospital = hos.codigo_hospital
  GROUP BY es.nombre_especialidad, m.nombre_medico, m.apellido_medico, hos.nombre_hospital
  ORDER BY fecha_atencion_mas_antigua;



--
-- Consulta 8
-- nombre del paciente, el médico que lo atendió y el diagnóstico
  SELECT p.nombre_paciente,p.apellido_paciente,m.nombre_medico,m.apellido_medico,d.nombre_diagnostico,h.fecha_atencion
  FROM hospitalizacion h
  JOIN paciente p ON h.cedula_paciente = p.cedula_paciente
  JOIN medico m ON h.codigo_medico = m.codigo_medico
  JOIN diagnostico d ON h.id_hospitalizacion = d.id_hospitalizacion
  ORDER BY h.fecha_atencion DESC;


--4 JOIN

--
-- Consulta 9
-- Lista de diagnósticos, el nombre del paciente, el médico que lo atendió y el hospital

  SELECT d.nombre_diagnostico, p.nombre_paciente, p.apellido_paciente, m.nombre_medico, m.apellido_medico, hos.nombre_hospital
  FROM diagnostico d
  JOIN hospitalizacion h ON d.id_hospitalizacion = h.id_hospitalizacion
  JOIN paciente p ON h.cedula_paciente = p.cedula_paciente
  JOIN medico m ON h.codigo_medico = m.codigo_medico
  JOIN hospital hos ON h.codigo_hospital = hos.codigo_hospital
  ORDER BY d.nombre_diagnostico;

--5 JOINs

--
-- Consulta 10
--  total de medicamentos asignados por paciente y su EPS
  SELECT p.cedula_paciente,p.nombre_paciente,p.apellido_paciente,e.nombre_eps,  SUM(mt.cantidad_medicamento) AS total_medicamentos_asignados
  FROM medicamento_tratamiento mt
  JOIN tratamiento t ON mt.id_tratamiento = t.id_tratamiento
  JOIN diagnostico d ON t.id_diagnostico = d.id_diagnostico
  JOIN hospitalizacion h ON d.id_hospitalizacion = h.id_hospitalizacion
  JOIN paciente p ON h.cedula_paciente = p.cedula_paciente
  JOIN eps e ON p.codigo_eps = e.codigo_eps
  GROUP BY p.cedula_paciente, p.nombre_paciente, p.apellido_paciente, e.nombre_eps
  ORDER BY total_medicamentos_asignados DESC;
