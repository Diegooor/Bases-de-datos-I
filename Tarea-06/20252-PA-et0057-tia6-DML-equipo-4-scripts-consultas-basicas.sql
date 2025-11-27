--
-- Tarea 6 - Parte #2 del Proyecto de Aula
-- SCRIPTS DE CONSULTAS BÁSICAS (SELECT sin JOIN)
--
-- Miembros del grupo
--
--
--

--
-- CONSULTAS BÁSICAS
--

--
-- Consulta 1
---Lista de todos los pacientes
  SELECT * FROM paciente;

--
-- Consulta 2
-- Lista de pacientes de sexo femenino
  SELECT * FROM paciente 
  WHERE sexo = 'F';

--
-- Consulta 3
-- Lista de médicos de la especialidad 1 (Medicina General)
  SELECT * FROM medico 
  WHERE codigo_especialidad = 1;

--
-- Consulta 4
--- Lista de hospitales en la ciudad con código 1 (Medellín)
  SELECT * FROM hospital 
  WHERE codigo_ciudad = 1;

--
-- Consulta 5
-- Lista de hospitalizaciones con motivo "Neumonía viral grave"
  SELECT * FROM hospitalizacion 
  WHERE motivo_hospitalizacion = 'Neumonía viral grave';

--
-- Consulta 6
-- Lista de especialidades médicas
  SELECT * FROM especialidad;

--
-- Consulta 7
-- Lista de pacientes nacidos después del año 2000
  SELECT * FROM paciente 
  WHERE fecha_nacimiento > '2000-01-01';

--
-- Consulta 8
-- Lista de hospitalizaciones en el año 2023
  SELECT * FROM hospitalizacion 
  WHERE fecha_atencion BETWEEN '2023-01-01' AND '2023-12-31';

--
-- Consulta 9
-- Lista de pacientes con EPS código 1 (Sura)
  SELECT * FROM paciente 
  WHERE codigo_eps = 1;

--
-- Consulta 10
-- Lista de médicos de género femenino
  SELECT * FROM medico 
  WHERE sexo = 'F';