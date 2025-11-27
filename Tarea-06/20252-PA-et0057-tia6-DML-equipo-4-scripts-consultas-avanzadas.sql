--
-- Tarea 6 - Parte #2 del Proyecto de Aula
-- SCRIPTS DE CONSULTAS AVANZADAS (SELECT con JOIN)
--
-- Miembros del grupo
--
--
--

--
-- CONSULTAS AVANZADAS
--

--
-- Consulta 1
-- Lista de pacientes con el nombre de su EPS
  SELECT p.cedula_paciente, p.nombre_paciente, p.apellido_paciente, e.nombre_eps
  FROM paciente p
  JOIN eps e ON p.codigo_eps = e.codigo_eps;

--
-- Consulta 2
-- Lista de hospitalizaciones con el nombre del paciente, médico, hospital y el motivo
SELECT
    h.id_hospitalizacion,
    p.nombre_paciente,
    p.apellido_paciente,
    m.nombre_medico,
    m.apellido_medico,
    hos.nombre_hospital,
    h.motivo_hospitalizacion
FROM hospitalizacion h
JOIN paciente p ON h.cedula_paciente = p.cedula_paciente
JOIN medico m ON h.codigo_medico = m.codigo_medico
JOIN hospital hos ON h.codigo_hospital = hos.codigo_hospital;

--
-- Consulta 3
-- Lista de pacientes con el nombre de su ciudad
SELECT p.cedula_paciente, p.nombre_paciente, p.apellido_paciente, c.nombre_ciudad
FROM paciente p
JOIN ciudad c ON p.codigo_ciudad = c.codigo_ciudad;

--
-- Consulta 4
-- Lista de médicos con el nombre de su especialidad
SELECT m.codigo_medico, m.nombre_medico, m.apellido_medico, e.nombre_especialidad
FROM medico m
JOIN especialidad e ON m.codigo_especialidad = e.codigo_especialidad;

--
-- Consulta 5
-- Lista de hospitalizaciones con el nombre del paciente y la especialidad del médico
SELECT
    h.id_hospitalizacion,
    p.nombre_paciente,
    p.apellido_paciente,
    e.nombre_especialidad,
    h.motivo_hospitalizacion
FROM hospitalizacion h
JOIN paciente p ON h.cedula_paciente = p.cedula_paciente
JOIN medico m ON h.codigo_medico = m.codigo_medico
JOIN especialidad e ON m.codigo_especialidad = e.codigo_especialidad;

--
-- Consulta 6
-- Lista de pacientes con el nombre del hospital donde fueron hospitalizados
SELECT
    p.cedula_paciente,
    p.nombre_paciente,
    p.apellido_paciente,
    hos.nombre_hospital,
    h.fecha_atencion
FROM paciente p
JOIN hospitalizacion h ON p.cedula_paciente = h.cedula_paciente
JOIN hospital hos ON h.codigo_hospital = hos.codigo_hospital;

--
-- Consulta 7
-- Lista de pacientes con el nombre de su EPS y ciudad
SELECT
    p.cedula_paciente,
    p.nombre_paciente,
    p.apellido_paciente,
    e.nombre_eps,
    c.nombre_ciudad
FROM paciente p
JOIN eps e ON p.codigo_eps = e.codigo_eps
JOIN ciudad c ON p.codigo_ciudad = c.codigo_ciudad;

--
-- Consulta 8
-- Lista de hospitalizaciones con el nombre del paciente, médico, especialidad y hospital
SELECT
    h.id_hospitalizacion,
    p.nombre_paciente,
    p.apellido_paciente,
    m.nombre_medico,
    m.apellido_medico,
    e.nombre_especialidad,
    hos.nombre_hospital,
    h.motivo_hospitalizacion
FROM hospitalizacion h
JOIN paciente p ON h.cedula_paciente = p.cedula_paciente
JOIN medico m ON h.codigo_medico = m.codigo_medico
JOIN especialidad e ON m.codigo_especialidad = e.codigo_especialidad
JOIN hospital hos ON h.codigo_hospital = hos.codigo_hospital;

--
-- Consulta 9
-- Lista de pacientes con el nombre de su EPS, ciudad y hospital donde fueron hospitalizados
SELECT
    p.cedula_paciente,
    p.nombre_paciente,
    p.apellido_paciente,
    e.nombre_eps,
    c.nombre_ciudad,
    hos.nombre_hospital
FROM paciente p
JOIN eps e ON p.codigo_eps = e.codigo_eps
JOIN ciudad c ON p.codigo_ciudad = c.codigo_ciudad
JOIN hospitalizacion h ON p.cedula_paciente = h.cedula_paciente
JOIN hospital hos ON h.codigo_hospital = hos.codigo_hospital;

--
-- Consulta 10
-- Lista de médicos con el nombre de su especialidad y hospital donde atienden
SELECT
    m.codigo_medico,
    m.nombre_medico,
    m.apellido_medico,
    e.nombre_especialidad,
    hos.nombre_hospital
FROM medico m
JOIN especialidad e ON m.codigo_especialidad = e.codigo_especialidad
JOIN hospitalizacion h ON m.codigo_medico = h.codigo_medico
JOIN hospital hos ON h.codigo_hospital = hos.codigo_hospital;