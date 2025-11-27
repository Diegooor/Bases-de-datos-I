--
-- Tarea 6 - Parte #2 del Proyecto de Aula
-- SCRIPTS DE POBLAMIENTO DE LA BASE DE DATOS (INSERTS)
--
--Miembros del grupo
--Diego Ordoñez
--Juan Camilo Valencia
--

--
-- eps

INSERT INTO eps (codigo_eps, nombre_eps) VALUES 
(1, 'Sura'),
(2, 'Compensar'),
(3, 'Coomeva'),
(4, 'Famisanar'),
(5, 'Sanitas'),
(6, 'Salud Total'),
(7, 'Nueva EPS'),
(8, 'Capital Salud'),
(9, 'Salud Bolívar EPS S.A.S'),
(10, 'Comfenalco Valle E.P.S.');

-- Ciudad

INSERT INTO ciudad (codigo_ciudad, nombre_ciudad, pais) VALUES 

(1, 'Medellin', 'Colombia'),
(2, 'Bogota', 'Colombia'),
(3, 'Cali', 'Colombia'),
(4, 'Manizales', 'Colombia'),
(5, 'Pacho', 'Colombia'),
(6, 'Cartagena', 'Colombia'),
(7, 'Cúcuta', 'Colombia'),
(8, 'Pereira', 'Colombia'),
(9, 'Santa Marta', 'Colombia'),
(10, 'Armenia', 'Colombia');

-- Especialidades Médicas

INSERT INTO especialidad (codigo_especialidad, nombre_especialidad) VALUES 
(1, 'Medicina General'),
(2, 'Cardiología'),
(3, 'Pediatría'),
(4, 'Dermatología'),
(5, 'Ortopedia y Traumatología'),
(6, 'Ginecología y Obstetricia'),
(7, 'Neurología'),
(8, 'Oftalmología'),
(9, 'Psiquiatría'),
(10, 'Urología');

--medicamento

INSERT INTO medicamento (sku_medicamento, nombre_medicamento) VALUES 
(1, 'Acetaminofén 500mg'),
(2, 'Ibuprofeno 400mg'),
(3, 'Amoxicilina 500mg'),
(4, 'Omeprazol 20mg'),
(5, 'Loratadina 10mg'),
(6, 'Salbutamol Inhalador'),
(7, 'Losartán 50mg'),
(8, 'Metformina 850mg'),
(9, 'Atorvastatina 20mg'),
(10, 'Ácido Acetilsalicílico 100mg');

--visitante

INSERT INTO visitante (cedula_visitante, nombre_visitante, apellido_visitante) VALUES 
('800001', 'Elena', 'Rojas'),
('800002', 'Pablo', 'Guerrero'),
('800003', 'Luisa', 'Fernández'),
('800004', 'Ricardo', 'Álvarez'),
('800005', 'Sonia', 'Bermúdez'),
('800006', 'Héctor', 'Duarte'),
('800007', 'Carmen', 'Salinas'),
('800008', 'Julio', 'Cortez'),
('800009', 'Margarita', 'Rosa'),
('800010', 'Esteban', 'Colón');

-- Hospitales

INSERT INTO hospital (codigo_hospital, nombre_hospital, codigo_ciudad) VALUES 
(1, 'Hospital San Juan de Dios', 1),   -- Ciudad 1: Bogotá (Asumido)
(2, 'Clínica Las Américas', 2),        -- Ciudad 2: Medellín (Asumido)
(3, 'Hospital Universitario del Valle', 3), -- Ciudad 3: Cali (Asumido)
(4, 'Clínica General del Norte', 6),    -- Ciudad 6: Cartagena (Real)
(5, 'Hospital San Vicente de Paúl', 7),  -- Ciudad 7: Cúcuta (Real)
(6, 'Clínica Versalles', 8),           -- Ciudad 8: Pereira (Real)
(7, 'Hospital de la Misericordia', 1),  -- Ciudad 1: Bogotá
(8, 'Clínica La Especia', 4),          -- Ciudad 4: Barranquilla (Asumido)
(9, 'Hospital Santa Clara', 9),        -- Ciudad 9: Santa Marta (Real)
(10, 'Clínica Cardio Infantil', 10);    -- Ciudad 10: Manizales (Real)

--planta (Suponemos que tenemos 7 pisos por hospital, y y tenemos 10 hospitales)

INSERT INTO planta (codigo_hospital, numero_planta) VALUES 
-- HOSPITAL 1
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),

-- HOSPITAL 2
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),

-- HOSPITAL 3
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),

-- HOSPITAL 4
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),

-- HOSPITAL 5
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),

-- HOSPITAL 6
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(6, 5),
(6, 6),
(6, 7),

-- HOSPITAL 7
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(7, 5),
(7, 6),
(7, 7),

-- HOSPITAL 8
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),

-- HOSPITAL 9
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 5),
(9, 6),
(9, 7),

-- HOSPITAL 10
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 6),
(10, 7);

--cuarto (10 registros, un cuarto por cada planta/hospital)

INSERT INTO cuarto (numero_cuarto, id_planta) VALUES 
(101, 1),
(102, 9),
(103, 16),
(104, 23),
(105, 29),
(106, 38),
(107, 45),
(108, 52),
(109, 60),
(110, 67);

--cama

INSERT INTO cama (numero_cama, id_cuarto) VALUES 
-- CUARTO 1 (3 Camas)
(1, 1),
(2, 1),
(3, 1),

-- CUARTO 2 (2 Camas)
(1, 2),
(2, 2),

-- CUARTO 3 (2 Camas)
(1, 3),
(2, 3),

-- CUARTO 4 (2 Camas)
(1, 4),
(2, 4),

-- CUARTO 5 (2 Camas)
(1, 5),
(2, 5),

-- CUARTO 6 (2 Camas)
(1, 6),
(2, 6),

-- CUARTO 7 (2 Camas)
(1, 7),
(2, 7),

-- CUARTO 8 (2 Camas)
(1, 8),
(2, 8),

-- CUARTO 9 (2 Camas)
(1, 9),
(2, 9),

-- CUARTO 10 (2 Camas)
(1, 10),
(2, 10);

-- Paciente

INSERT INTO paciente (
    cedula_paciente, nombre_paciente, apellido_paciente, 
    fecha_nacimiento, sexo, contacto1_paciente, 
    codigo_eps, codigo_ciudad, ingreso
) VALUES 
-- =============================================
-- GRUPO 1: 1-10 AÑOS (10 Registros: 5M, 5F)
-- Nacidos aprox entre 2014 y 2023
-- =============================================
('10001', 'Mateo', 'Gomez', '2019-05-15', 'M', '3001000001', 1, 2, '2023-01-10'),
('10002', 'Sofia', 'Perez', '2020-08-20', 'F', '3001000002', 2, 1, '2023-01-11'),
('10003', 'Lucas', 'Rodriguez', '2015-03-10', 'M', '3001000003', 3, 5, '2023-01-12'),
('10004', 'Isabella', 'Diaz', '2018-11-05', 'F', '3001000004', 5, 3, '2023-01-13'),
('10005', 'Santiago', 'Martinez', '2022-01-30', 'M', '3001000005', 4, 4, '2023-01-14'),
('10006', 'Valentina', 'Garcia', '2016-07-25', 'F', '3001000006', 1, 2, '2023-01-15'),
('10007', 'Matias', 'Lopez', '2021-09-12', 'M', '3001000007', 2, 5, '2023-01-16'),
('10008', 'Camila', 'Hernandez', '2017-04-18', 'F', '3001000008', 3, 1, '2023-01-17'),
('10009', 'Sebastian', 'Gonzalez', '2014-12-01', 'M', '3001000009', 5, 3, '2023-01-18'),
('10010', 'Valery', 'Amaya', '2023-02-14', 'F', '3001000010', 4, 4, '2023-01-19'),

-- =============================================
-- GRUPO 2: 11-20 AÑOS (15 Registros: 7M, 8F)
-- Nacidos aprox entre 2004 y 2013
-- =============================================
('20001', 'Samuel', 'Torres', '2010-06-15', 'M', '3102000001', 1, 5, '2023-02-01'),
('20002', 'Mariana', 'Ramirez', '2008-09-20', 'F', '3102000002', 2, 4, '2023-02-02'),
('20003', 'Daniel', 'Flores', '2005-03-12', 'M', '3102000003', 3, 3, '2023-02-03'),
('20004', 'Gabriela', 'Acosta', '2012-11-08', 'F', '3102000004', 4, 2, '2023-02-04'),
('20005', 'Nicolas', 'Rojas', '2007-01-25', 'M', '3102000005', 5, 1, '2023-02-05'),
('20006', 'Victoria', 'Medina', '2009-07-30', 'F', '3102000006', 1, 2, '2023-02-06'),
('20007', 'Alejandro', 'Vargas', '2011-04-14', 'M', '3102000007', 2, 5, '2023-02-07'),
('20008', 'Luciana', 'Castro', '2006-12-22', 'F', '3102000008', 3, 4, '2023-02-08'),
('20009', 'Emmanuel', 'Soto', '2013-05-05', 'M', '3102000009', 4, 3, '2023-02-09'),
('20010', 'Salome', 'Rios', '2004-08-19', 'F', '3102000010', 5, 2, '2023-02-10'),
('20011', 'David', 'Cabrera', '2008-02-10', 'M', '3102000011', 1, 1, '2023-02-11'),
('20012', 'Antonella', 'Mora', '2010-10-03', 'F', '3102000012', 2, 5, '2023-02-12'),
('20013', 'Jeronimo', 'Salazar', '2005-06-17', 'M', '3102000013', 3, 4, '2023-02-13'),
('20014', 'Sara', 'Guzman', '2007-12-09', 'F', '3102000014', 4, 3, '2023-02-14'),
('20015', 'Ximena', 'Ortega', '2011-03-28', 'F', '3102000015', 5, 2, '2023-02-15'),

-- =============================================
-- GRUPO 3: 21-40 AÑOS (20 Registros: 10M, 10F)
-- Nacidos aprox entre 1984 y 2003
-- =============================================
('30001', 'Andres', 'Delgado', '1995-05-14', 'M', '3203000001', 1, 3, '2023-03-01'),
('30002', 'Natalia', 'Mendoza', '1990-08-22', 'F', '3203000002', 2, 2, '2023-03-02'),
('30003', 'Felipe', 'Vega', '1985-03-10', 'M', '3203000003', 3, 1, '2023-03-03'),
('30004', 'Daniela', 'Campos', '1998-11-05', 'F', '3203000004', 4, 5, '2023-03-04'),
('30005', 'Camilo', 'Guerrero', '2000-01-15', 'M', '3203000005', 5, 4, '2023-03-05'),
('30006', 'Laura', 'Cardenas', '1992-07-20', 'F', '3203000006', 1, 3, '2023-03-06'),
('30007', 'Jorge', 'Paredes', '1988-09-12', 'M', '3203000007', 2, 2, '2023-03-07'),
('30008', 'Carolina', 'Suarez', '1996-04-18', 'F', '3203000008', 3, 1, '2023-03-08'),
('30009', 'Diego', 'Miranda', '2002-12-01', 'M', '3203000009', 4, 5, '2023-03-09'),
('30010', 'Diana', 'Aguilar', '1986-06-30', 'F', '3203000010', 5, 4, '2023-03-10'),
('30011', 'Carlos', 'Trujillo', '1993-02-14', 'M', '3203000011', 1, 3, '2023-03-11'),
('30012', 'Paula', 'Cortes', '1999-10-08', 'F', '3203000012', 2, 2, '2023-03-12'),
('30013', 'Manuel', 'Valencia', '1984-05-25', 'M', '3203000013', 3, 1, '2023-03-13'),
('30014', 'Tatiana', 'Orozco', '1997-11-11', 'F', '3203000014', 4, 5, '2023-03-14'),
('30015', 'Juan', 'Bermudez', '2001-01-05', 'M', '3203000015', 5, 4, '2023-03-15'),
('30016', 'Andrea', 'Navarro', '1989-07-17', 'F', '3203000016', 1, 3, '2023-03-16'),
('30017', 'Esteban', 'Pineda', '1994-03-22', 'M', '3203000017', 2, 2, '2023-03-17'),
('30018', 'Luisa', 'Gallego', '2003-09-09', 'F', '3203000018', 3, 1, '2023-03-18'),
('30019', 'Miguel', 'Mejia', '1987-05-04', 'M', '3203000019', 4, 5, '2023-03-19'),
('30020', 'Juliana', 'Parra', '1991-12-28', 'F', '3203000020', 5, 4, '2023-03-20'),

-- =============================================
-- GRUPO 4: 41-60 AÑOS (25 Registros: 13M, 12F)
-- Nacidos aprox entre 1964 y 1983
-- =============================================
('40001', 'Fernando', 'Leon', '1980-05-15', 'M', '3154000001', 1, 1, '2023-04-01'),
('40002', 'Patricia', 'Herrera', '1975-08-20', 'F', '3154000002', 2, 5, '2023-04-02'),
('40003', 'Luis', 'Jimenez', '1968-03-10', 'M', '3154000003', 3, 4, '2023-04-03'),
('40004', 'Monica', 'Chavez', '1982-11-05', 'F', '3154000004', 4, 3, '2023-04-04'),
('40005', 'Ricardo', 'Silva', '1970-01-30', 'M', '3154000005', 5, 2, '2023-04-05'),
('40006', 'Claudia', 'Vasquez', '1978-07-25', 'F', '3154000006', 1, 1, '2023-04-06'),
('40007', 'Jose', 'Ibanez', '1965-09-12', 'M', '3154000007', 2, 5, '2023-04-07'),
('40008', 'Gloria', 'Escobar', '1983-04-18', 'F', '3154000008', 3, 4, '2023-04-08'),
('40009', 'Mario', 'Benitez', '1972-12-01', 'M', '3154000009', 4, 3, '2023-04-09'),
('40010', 'Sonia', 'Rivas', '1976-06-15', 'F', '3154000010', 5, 2, '2023-04-10'),
('40011', 'Roberto', 'Giraldo', '1969-02-14', 'M', '3154000011', 1, 1, '2023-04-11'),
('40012', 'Angela', 'Velasco', '1981-10-08', 'F', '3154000012', 2, 5, '2023-04-12'),
('40013', 'Hector', 'Roman', '1974-05-25', 'M', '3154000013', 3, 4, '2023-04-13'),
('40014', 'Beatriz', 'Cano', '1979-11-11', 'F', '3154000014', 4, 3, '2023-04-14'),
('40015', 'Oscar', 'Marin', '1966-01-05', 'M', '3154000015', 5, 2, '2023-04-15'),
('40016', 'Adriana', 'Duran', '1973-07-17', 'F', '3154000016', 1, 1, '2023-04-16'),
('40017', 'Francisco', 'Zapata', '1977-03-22', 'M', '3154000017', 2, 5, '2023-04-17'),
('40018', 'Liliana', 'Fajardo', '1967-09-09', 'F', '3154000018', 3, 4, '2023-04-18'),
('40019', 'Gustavo', 'Ospina', '1980-05-04', 'M', '3154000019', 4, 3, '2023-04-19'),
('40020', 'Pilar', 'Jaramillo', '1971-12-28', 'F', '3154000020', 5, 2, '2023-04-20'),
('40021', 'Alberto', 'Franco', '1964-08-15', 'M', '3154000021', 1, 1, '2023-04-21'),
('40022', 'Marcela', 'Echeverry', '1983-02-10', 'F', '3154000022', 2, 5, '2023-04-22'),
('40023', 'Enrique', 'Quintero', '1975-06-20', 'M', '3154000023', 3, 4, '2023-04-23'),
('40024', 'Clara', 'Montoya', '1979-10-30', 'F', '3154000024', 4, 3, '2023-04-24'),
('40025', 'Raul', 'Restrepo', '1972-04-05', 'M', '3154000025', 5, 2, '2023-04-25'),

-- =============================================
-- GRUPO 5: 61+ AÑOS (30 Registros: 15M, 15F)
-- Nacidos antes de 1963
-- =============================================
('50001', 'Arturo', 'Bernal', '1955-05-15', 'M', '3055000001', 1, 4, '2023-05-01'),
('50002', 'Teresa', 'Paz', '1960-08-20', 'F', '3055000002', 2, 3, '2023-05-02'),
('50003', 'Humberto', 'Serrano', '1948-03-10', 'M', '3055000003', 3, 2, '2023-05-03'),
('50004', 'Elvira', 'Ceron', '1958-11-05', 'F', '3055000004', 4, 1, '2023-05-04'),
('50005', 'Pedro', 'Caicedo', '1950-01-30', 'M', '3055000005', 5, 5, '2023-05-05'),
('50006', 'Luz', 'Molina', '1962-07-25', 'F', '3055000006', 1, 4, '2023-05-06'),
('50007', 'Guillermo', 'Rendon', '1945-09-12', 'M', '3055000007', 2, 3, '2023-05-07'),
('50008', 'Marina', 'Toro', '1953-04-18', 'F', '3055000008', 3, 2, '2023-05-08'),
('50009', 'Alfonso', 'Lara', '1959-12-01', 'M', '3055000009', 4, 1, '2023-05-09'),
('50010', 'Ines', 'Correa', '1942-06-15', 'F', '3055000010', 5, 5, '2023-05-10'),
('50011', 'Eduardo', 'Patiño', '1956-02-14', 'M', '3055000011', 1, 4, '2023-05-11'),
('50012', 'Yolanda', 'Velez', '1961-10-08', 'F', '3055000012', 2, 3, '2023-05-12'),
('50013', 'Jaime', 'Gil', '1949-05-25', 'M', '3055000013', 3, 2, '2023-05-13'),
('50014', 'Rosario', 'Palacios', '1957-11-11', 'F', '3055000014', 4, 1, '2023-05-14'),
('50015', 'Rodolfo', 'Meza', '1940-01-05', 'M', '3055000015', 5, 5, '2023-05-15'),
('50016', 'Cecilia', 'Mosquera', '1954-07-17', 'F', '3055000016', 1, 4, '2023-05-16'),
('50017', 'Ramiro', 'Fuentes', '1963-03-22', 'M', '3055000017', 2, 3, '2023-05-17'),
('50018', 'Carmen', 'Barrera', '1947-09-09', 'F', '3055000018', 3, 2, '2023-05-18'),
('50019', 'Vicente', 'Salinas', '1952-05-04', 'M', '3055000019', 4, 1, '2023-05-19'),
('50020', 'Alicia', 'Galvis', '1958-12-28', 'F', '3055000020', 5, 5, '2023-05-20'),
('50021', 'Joaquin', 'Cano', '1944-08-15', 'M', '3055000021', 1, 4, '2023-05-21'),
('50022', 'Marta', 'Salgado', '1960-02-10', 'F', '3055000022', 2, 3, '2023-05-22'),
('50023', 'Ernesto', 'Duarte', '1951-06-20', 'M', '3055000023', 3, 2, '2023-05-23'),
('50024', 'Olga', 'Villamizar', '1955-10-30', 'F', '3055000024', 4, 1, '2023-05-24'),
('50025', 'Bernardo', 'Arias', '1946-04-05', 'M', '3055000025', 5, 5, '2023-05-25'),
('50026', 'Esperanza', 'Pardo', '1961-01-15', 'F', '3055000026', 1, 4, '2023-05-26'),
('50027', 'Hugo', 'Tellez', '1953-07-20', 'M', '3055000027', 2, 3, '2023-05-27'),
('50028', 'Lucia', 'Gamboa', '1959-11-25', 'F', '3055000028', 3, 2, '2023-05-28'),
('50029', 'Salvador', 'Rey', '1943-03-10', 'M', '3055000029', 4, 1, '2023-05-29'),
('50030', 'Magdalena', 'Buitrago', '1962-09-05', 'F', '3055000030', 5, 5, '2023-05-30');

-- Médico

INSERT INTO medico (
    codigo_medico, nombre_medico, apellido_medico, 
    contacto_medico, codigo_especialidad, sexo
) VALUES 
-- =============================================
-- GRUPO 1: HOMBRES (16 Médicos) - Sexo 'M'
-- =============================================
(1, 'Carlos', 'Mendez', '3105550101', 1, 'M'),
(2, 'Jorge', 'Villalobos', '3105550102', 2, 'M'),
(3, 'Luis', 'Pizarro', '3105550103', 3, 'M'),
(4, 'Andres', 'Montes', '3105550104', 4, 'M'),
(5, 'Felipe', 'Cordoba', '3105550105', 5, 'M'),
(6, 'Ricardo', 'Salas', '3105550106', 6, 'M'),
(7, 'Manuel', 'Rojas', '3105550107', 7, 'M'),
(8, 'Victor', 'Castillo', '3105550108', 8, 'M'),
(9, 'Gabriel', 'Serrano', '3105550109', 9, 'M'),
(10, 'Hugo', 'Valencia', '3105550110', 10, 'M'),
(11, 'Oscar', 'Fuentes', '3105550111', 1, 'M'),
(12, 'Daniel', 'Carrillo', '3105550112', 2, 'M'),
(13, 'Ivan', 'Paz', '3105550113', 5, 'M'),
(14, 'Sergio', 'Navarro', '3105550114', 7, 'M'),
(15, 'Alberto', 'Mora', '3105550115', 9, 'M'),
(16, 'Javier', 'Lozano', '3105550116', 10, 'M'),

-- =============================================
-- GRUPO 2: MUJERES (14 Médicos) - Sexo 'F'
-- =============================================
(17, 'Maria', 'Fernandez', '3105550201', 1, 'F'),
(18, 'Ana', 'Guzman', '3105550202', 2, 'F'),
(19, 'Laura', 'Restrepo', '3105550203', 3, 'F'),
(20, 'Sofia', 'Vergara', '3105550204', 4, 'F'),
(21, 'Camila', 'Torres', '3105550205', 5, 'F'),
(22, 'Isabella', 'Marin', '3105550206', 6, 'F'),
(23, 'Valeria', 'Osorio', '3105550207', 7, 'F'),
(24, 'Gabriela', 'Peralta', '3105550208', 8, 'F'),
(25, 'Daniela', 'Cifuentes', '3105550209', 9, 'F'),
(26, 'Andrea', 'Buitrago', '3105550210', 10, 'F'),
(27, 'Paula', 'Espinosa', '3105550211', 3, 'F'),
(28, 'Natalia', 'Rios', '3105550212', 4, 'F'),
(29, 'Carolina', 'Mejia', '3105550213', 6, 'F'),
(30, 'Diana', 'Acosta', '3105550214', 8, 'F');

-- Hospitalizaciones 

INSERT INTO hospitalizacion (
    cedula_paciente, codigo_medico, codigo_hospital, fecha_atencion, motivo_hospitalizacion, fecha_alta
) VALUES 
-- =================================================================================================
-- GRUPO 1: 64 PACIENTES con 1 HOSPITALIZACIÓN (64 REGISTROS)
-- IDs: 10001 a 40019
-- =================================================================================================
-- Hombres (32)
('10001', 1, 1, '2023-11-01', 'Neumonía viral grave', '2023-11-07'),
('10003', 3, 2, '2023-11-03', 'Apendicitis aguda (Cirugía)', '2023-11-08'),
('10005', 5, 3, '2023-11-05', 'Fractura de fémur (Cirugía de trauma)', '2023-11-12'),
('10007', 7, 4, '2023-11-07', 'Fiebre tifoidea', '2023-11-13'),
('10009', 9, 5, '2023-11-09', 'Deshidratación severa por gastroenteritis', '2023-11-14'),
('20001', 11, 6, '2023-11-11', 'Complicación renal (Diálisis temporal)', '2023-11-17'),
('20003', 13, 7, '2023-11-13', 'Infarto agudo de miocardio (Estable)', '2023-11-19'),
('20005', 15, 8, '2023-11-15', 'Accidente cerebrovascular leve', '2023-11-20'),
('20007', 17, 9, '2023-11-17', 'Colecistitis (Cirugía de vesícula)', '2023-11-22'),
('20009', 19, 10, '2023-11-19', 'Reacción alérgica grave', '2023-11-25'),
('20011', 21, 1, '2023-11-21', 'Tratamiento antibiótico intravenoso', '2023-11-26'),
('20013', 23, 2, '2023-11-23', 'Crisis hipertensiva', '2023-11-27'),
('30001', 25, 3, '2023-11-25', 'Dolor torácico indeterminado', '2023-11-28'),
('30003', 27, 4, '2023-11-27', 'Procedimiento diagnóstico invasivo', '2023-11-29'),
('30005', 29, 5, '2023-11-29', 'Retiro de cuerpo extraño', '2023-12-01'),
('30007', 2, 6, '2023-12-01', 'Descompensación diabética (Cetoacidosis)', '2023-12-06'),
('30009', 4, 7, '2023-12-03', 'Crisis asmática severa', '2023-12-09'),
('30011', 6, 8, '2023-12-05', 'Revisión por infección post-operatoria', '2023-12-10'),
('30013', 8, 9, '2023-12-07', 'Hospitalización psiquiátrica corta', '2023-12-12'),
('30015', 10, 10, '2023-12-09', 'Sepsis de origen desconocido', '2023-12-16'),
('30017', 12, 1, '2023-12-11', 'Trasplante de médula (Fase inicial)', '2023-12-18'),
('30019', 14, 2, '2023-12-13', 'Cirugía de hernia inguinal', '2023-12-19'),
('40001', 16, 3, '2023-12-15', 'Trombosis venosa profunda', '2023-12-21'),
('40003', 18, 4, '2023-12-17', 'Encefalopatía', '2023-12-23'),
('40005', 20, 5, '2023-12-19', 'Biopsia pulmonar', '2023-12-24'),
('40007', 22, 6, '2023-12-21', 'Diverticulitis aguda', '2023-12-26'),
('40009', 24, 7, '2023-12-23', 'Esofagitis grado IV', '2023-12-28'),
('40011', 26, 8, '2023-12-25', 'Pielonefritis (Infección renal)', '2023-12-30'),
('40013', 28, 9, '2023-12-27', 'Insuficiencia cardíaca descompensada', '2024-01-01'),
('40015', 30, 10, '2023-12-29', 'Embolia pulmonar', '2024-01-04'),
('40017', 1, 1, '2024-01-01', 'Artritis reumatoide (Fase crítica)', '2024-01-06'),
('40019', 3, 2, '2024-01-03', 'Chequeo de aneurisma', '2024-01-08'),
-- Mujeres (32)
('10002', 2, 10, '2023-11-01', 'Infección puerperal post-parto', '2023-11-07'),
('10004', 4, 9, '2023-11-03', 'Amenaza de parto prematuro', '2023-11-05'),
('10006', 6, 8, '2023-11-05', 'Reemplazo total de rodilla', '2023-11-12'),
('10008', 8, 7, '2023-11-07', 'Cáncer de mama (inicio de quimioterapia)', '2023-11-13'),
('10010', 10, 6, '2023-11-09', 'Hemorragia digestiva alta', '2023-11-14'),
('20002', 12, 5, '2023-11-11', 'Trastorno alimenticio severo', '2023-11-17'),
('20004', 14, 4, '2023-11-13', 'Ataque de pánico y desmayo', '2023-11-18'),
('20006', 16, 3, '2023-11-15', 'Monitoreo de embarazo de alto riesgo', '2023-11-20'),
('20008', 18, 2, '2023-11-17', 'Complicación de úlcera', '2023-11-22'),
('20010', 20, 1, '2023-11-19', 'Apnea del sueño (Estudio nocturno)', '2023-11-20'),
('20012', 22, 10, '2023-11-21', 'Dolor pélvico crónico', '2023-11-26'),
('20014', 24, 9, '2023-11-23', 'Cirugía de columna por escoliosis', '2023-11-29'),
('20015', 26, 8, '2023-11-25', 'Infección de vías biliares', '2023-11-30'),
('30002', 28, 7, '2023-11-27', 'Lupus descompensado', '2023-12-02'),
('30004', 30, 6, '2023-11-29', 'Endometriosis severa (Cirugía)', '2023-12-05'),
('30006', 1, 5, '2023-12-01', 'Anemia refractaria a tratamiento oral', '2023-12-07'),
('30008', 3, 4, '2023-12-03', 'Hemorragia uterina anormal', '2023-12-08'),
('30010', 5, 3, '2023-12-05', 'Crisis de tirotoxicosis', '2023-12-10'),
('30012', 7, 2, '2023-12-07', 'Enfermedad de Crohn (brote agudo)', '2023-12-14'),
('30014', 9, 1, '2023-12-09', 'Revisión por efectos adversos de medicamento', '2023-12-16'),
('30016', 11, 10, '2023-12-11', 'Hospitalización para manejo del dolor', '2023-12-18'),
('30018', 13, 9, '2023-12-13', 'Trastorno bipolar (Fase maníaca)', '2023-12-20'),
('30020', 15, 8, '2023-12-15', 'Mastectomía', '2023-12-22'),
('40002', 17, 7, '2023-12-17', 'Infección urinaria con sepsis', '2023-12-24'),
('40004', 19, 6, '2023-12-19', 'Intento de suicidio (Estabilización)', '2023-12-25'),
('40006', 21, 5, '2023-12-21', 'Bronquitis crónica reagudizada', '2023-12-27'),
('40008', 23, 4, '2023-12-23', 'Insuficiencia renal crónica (Agravamiento)', '2023-12-29'),
('40010', 25, 3, '2023-12-25', 'Neumonía atípica', '2023-12-31'),
('40012', 27, 2, '2023-12-27', 'Dolor por cáncer de ovario', '2024-01-02'),
('40014', 29, 1, '2023-12-29', 'Pancreatitis aguda', '2024-01-05'),
('40016', 2, 10, '2024-01-01', 'Retención urinaria', '2024-01-06'),
('40018', 4, 9, '2024-01-03', 'Artritis psoriásica', '2024-01-08'),

-- =================================================================================================
-- GRUPO 2: 10 PACIENTES con 2 HOSPITALIZACIONES c/u (20 REGISTROS)
-- IDs: 40020 a 50004
-- =================================================================================================
-- Hombres (40021, 40023, 40025, 50001, 50003)
('40021', 5, 8, '2023-09-01', 'Descompensación por EPOC (1ra vez)', '2023-09-12'),
('40021', 5, 8, '2023-11-01', 'Recaída por EPOC (2da vez)', '2023-11-15'),
('40023', 7, 7, '2023-09-15', 'Cirugía de by-pass gástrico (Ingreso)', '2023-09-25'),
('40023', 7, 7, '2023-11-15', 'Complicación post-cirugía (Seguimiento)', '2023-11-27'),
('40025', 9, 6, '2023-10-01', 'Fractura de cadera por caída', '2023-10-18'),
('40025', 9, 6, '2023-12-01', 'Rehabilitación y terapia física intensiva', '2023-12-10'),
('50001', 11, 5, '2023-10-15', 'Trasplante de riñón (Fase de monitoreo)', '2023-11-05'),
('50001', 11, 5, '2023-12-15', 'Rechazo inicial al trasplante (Manejo)', '2023-12-25'),
('50003', 13, 4, '2023-10-29', 'Inicio de tratamiento con litio (Estabilización)', '2023-11-10'),
('50003', 13, 4, '2023-12-29', 'Reajuste psiquiátrico de medicación', '2024-01-05'),
-- Mujeres (40020, 40022, 40024, 50002, 50004)
('40020', 6, 3, '2023-09-05', 'Histerectomía programada', '2023-09-14'),
('40020', 6, 3, '2023-11-05', 'Infección de la herida quirúrgica', '2023-11-12'),
('40022', 8, 2, '2023-09-20', 'Retiro de tumor benigno', '2023-09-27'),
('40022', 8, 2, '2023-11-20', 'Complicación con hematoma', '2023-11-25'),
('40024', 10, 1, '2023-10-05', 'Parto por cesárea', '2023-10-10'),
('40024', 10, 1, '2023-12-05', 'Depresión post-parto (Hospitalización corta)', '2023-12-08'),
('50002', 12, 10, '2023-10-20', 'Quimioterapia de inducción (1er ciclo)', '2023-10-27'),
('50002', 12, 10, '2023-12-20', 'Quimioterapia de consolidación (2do ciclo)', '2023-12-28'),
('50004', 14, 9, '2023-11-01', 'Tirodectomía total', '2023-11-07'),
('50004', 14, 9, '2024-01-01', 'Ajuste hormonal post-tirodectomía', '2024-01-08'),

-- =================================================================================================
-- GRUPO 3: 5 PACIENTES con 3 HOSPITALIZACIONES c/u (15 REGISTROS)
-- IDs: 50005 a 50009
-- =================================================================================================
-- Hombres (50005, 50007, 50009)
('50005', 15, 8, '2023-08-01', 'Cáncer de colon (Cirugía mayor)', '2023-08-30'),
('50005', 15, 8, '2023-10-01', 'Obstrucción intestinal post-quirúrgica', '2023-10-15'),
('50005', 15, 8, '2023-12-01', 'Infección persistente (Control y alta)', '2023-12-10'),
('50007', 17, 7, '2023-08-15', 'Insuficiencia renal aguda (Estabilización)', '2023-08-25'),
('50007', 17, 7, '2023-10-15', 'Segundo episodio de insuficiencia renal', '2023-10-30'),
('50007', 17, 7, '2023-12-15', 'Monitoreo renal y planificación de trasplante', '2023-12-25'),
('50009', 19, 6, '2023-09-01', 'Accidente de tráfico (Politráuma - UCI)', '2023-09-20'),
('50009', 19, 6, '2023-10-01', 'Transferencia a unidad de cuidados intermedios', '2023-10-15'),
('50009', 19, 6, '2023-11-01', 'Rehabilitación intensiva (Alta)', '2023-11-10'),
-- Mujeres (50006, 50008)
('50006', 16, 5, '2023-08-10', 'Problemas cardiovasculares (Arritmia)', '2023-08-15'),
('50006', 16, 5, '2023-10-10', 'Implantación de marcapasos', '2023-10-18'),
('50006', 16, 5, '2023-12-10', 'Ajuste y chequeo de marcapasos', '2023-12-15'),
('50008', 18, 4, '2023-08-20', 'Infección nosocomial (Ingreso)', '2023-08-30'),
('50008', 18, 4, '2023-10-20', 'Infección de repetición', '2023-10-28'),
('50008', 18, 4, '2023-12-20', 'Tratamiento antibiótico de largo plazo', '2023-12-25'),

-- =================================================================================================
-- GRUPO 4: 1 PACIENTE con 4 HOSPITALIZACIONES (4 REGISTROS) - RESTAURADO
-- ID: 50010 (Mujer)
-- =================================================================================================
('50010', 20, 3, '2023-08-01', 'Complicación grave de embarazo (Pre-eclmapsia)', '2023-08-10'), 
('50010', 20, 3, '2023-09-01', 'Hospitalización por cesárea de emergencia', '2023-09-07'),
('50010', 20, 3, '2023-10-01', 'Sepsis post-operatoria', '2023-10-15'),
('50010', 20, 3, '2023-11-01', 'Rehabilitación y seguimiento intensivo', '2023-11-10');

--Diagnostico (Suponemos que si tenemos 103 hospitalizaciones entonces la cantidad de diagnosticos es 103)

INSERT INTO diagnostico (codigo_diagnostico, nombre_diagnostico, id_hospitalizacion) VALUES 
(1, 'Neumonía (NAC)', 1),
(2, 'Apendicitis Aguda', 2),
(3, 'Fractura Trauma', 3),
(4, 'Enfermedad Crónica Descompensada', 4),
(5, 'Deshidratación Severa', 5),
(6, 'Insuficiencia Renal Aguda (IRA)', 6),
(7, 'Infarto Agudo de Miocardio (IAM)', 7),
(8, 'Accidente Cerebrovascular (ACV)', 8),
(9, 'Infección Post-quirúrgica', 9),
(10, 'Reacción Alérgica Grave', 10),
(11, 'Problema Cardiovascular', 11),
(12, 'Crisis Hipertensiva / Hipotensiva', 12),
(13, 'Dolor Torácico (Indeterminado)', 13),
(14, 'Procedimiento Diagnóstico', 14),
(15, 'Diabetes Descompensada (CAD)', 15),
(16, 'Sepsis', 16),
(17, 'Crisis Respiratoria (Asma/EPOC)', 17),
(18, 'Trastorno Psiquiátrico', 18),
(19, 'Cáncer (Inicial/Agravado)', 19),
(20, 'Complicación Ginecológica/Obstétrica', 20),
(1, 'Neumonía (NAC)', 21),
(2, 'Apendicitis Aguda', 22),
(3, 'Fractura Trauma', 23),
(4, 'Enfermedad Crónica Descompensada', 24),
(5, 'Deshidratación Severa', 25),
(6, 'Insuficiencia Renal Aguda (IRA)', 26),
(7, 'Infarto Agudo de Miocardio (IAM)', 27),
(8, 'Accidente Cerebrovascular (ACV)', 28),
(9, 'Infección Post-quirúrgica', 29),
(10, 'Reacción Alérgica Grave', 30),
(11, 'Problema Cardiovascular', 31),
(12, 'Crisis Hipertensiva / Hipotensiva', 32),
(13, 'Dolor Torácico (Indeterminado)', 33),
(14, 'Procedimiento Diagnóstico', 34),
(15, 'Diabetes Descompensada (CAD)', 35),
(16, 'Sepsis', 36),
(17, 'Crisis Respiratoria (Asma/EPOC)', 37),
(18, 'Trastorno Psiquiátrico', 38),
(19, 'Cáncer (Inicial/Agravado)', 39),
(20, 'Complicación Ginecológica/Obstétrica', 40),
(1, 'Neumonía (NAC)', 41),
(2, 'Apendicitis Aguda', 42),
(3, 'Fractura Trauma', 43),
(4, 'Enfermedad Crónica Descompensada', 44),
(5, 'Deshidratación Severa', 45),
(6, 'Insuficiencia Renal Aguda (IRA)', 46),
(7, 'Infarto Agudo de Miocardio (IAM)', 47),
(8, 'Accidente Cerebrovascular (ACV)', 48),
(9, 'Infección Post-quirúrgica', 49),
(10, 'Reacción Alérgica Grave', 50),
(11, 'Problema Cardiovascular', 51),
(12, 'Crisis Hipertensiva / Hipotensiva', 52),
(13, 'Dolor Torácico (Indeterminado)', 53),
(14, 'Procedimiento Diagnóstico', 54),
(15, 'Diabetes Descompensada (CAD)', 55),
(16, 'Sepsis', 56),
(17, 'Crisis Respiratoria (Asma/EPOC)', 57),
(18, 'Trastorno Psiquiátrico', 58),
(19, 'Cáncer (Inicial/Agravado)', 59),
(20, 'Complicación Ginecológica/Obstétrica', 60),
(1, 'Neumonía (NAC)', 61),
(2, 'Apendicitis Aguda', 62),
(3, 'Fractura Trauma', 63),
(4, 'Enfermedad Crónica Descompensada', 64),
(5, 'Deshidratación Severa', 65),
(6, 'Insuficiencia Renal Aguda (IRA)', 66),
(7, 'Infarto Agudo de Miocardio (IAM)', 67),
(8, 'Accidente Cerebrovascular (ACV)', 68),
(9, 'Infección Post-quirúrgica', 69),
(10, 'Reacción Alérgica Grave', 70),
(11, 'Problema Cardiovascular', 71),
(12, 'Crisis Hipertensiva / Hipotensiva', 72),
(13, 'Dolor Torácico (Indeterminado)', 73),
(14, 'Procedimiento Diagnóstico', 74),
(15, 'Diabetes Descompensada (CAD)', 75),
(16, 'Sepsis', 76),
(17, 'Crisis Respiratoria (Asma/EPOC)', 77),
(18, 'Trastorno Psiquiátrico', 78),
(19, 'Cáncer (Inicial/Agravado)', 79),
(20, 'Complicación Ginecológica/Obstétrica', 80),
(1, 'Neumonía (NAC)', 81),
(2, 'Apendicitis Aguda', 82),
(3, 'Fractura Trauma', 83),
(4, 'Enfermedad Crónica Descompensada', 84),
(5, 'Deshidratación Severa', 85),
(6, 'Insuficiencia Renal Aguda (IRA)', 86),
(7, 'Infarto Agudo de Miocardio (IAM)', 87),
(8, 'Accidente Cerebrovascular (ACV)', 88),
(9, 'Infección Post-quirúrgica', 89),
(10, 'Reacción Alérgica Grave', 90),
(11, 'Problema Cardiovascular', 91),
(12, 'Crisis Hipertensiva / Hipotensiva', 92),
(13, 'Dolor Torácico (Indeterminado)', 93),
(14, 'Procedimiento Diagnóstico', 94),
(15, 'Diabetes Descompensada (CAD)', 95),
(16, 'Sepsis', 96),
(17, 'Crisis Respiratoria (Asma/EPOC)', 97),
(18, 'Trastorno Psiquiátrico', 98),
(19, 'Cáncer (Inicial/Agravado)', 99),
(20, 'Complicación Ginecológica/Obstétrica', 100),
(1, 'Neumonía (NAC)', 101),
(2, 'Apendicitis Aguda', 102),
(3, 'Fractura Trauma', 103);

--tratamiento (Asumimos que si tenemos 103 diagnositicos entonces tenemos 103 tratamientos, esto producto de la relacion 1:1 entre diagnostico y tratamiento)

INSERT INTO tratamiento (codigo_tratamiento, id_diagnostico) VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5), (6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15), (1, 16), (2, 17), (3, 18), (4, 19), (5, 20),
(6, 21), (7, 22), (8, 23), (9, 24), (10, 25), (11, 26), (12, 27), (13, 28), (14, 29), (15, 30),
(1, 31), (2, 32), (3, 33), (4, 34), (5, 35), (6, 36), (7, 37), (8, 38), (9, 39), (10, 40),
(11, 41), (12, 42), (13, 43), (14, 44), (15, 45), (1, 46), (2, 47), (3, 48), (4, 49), (5, 50),
(6, 51), (7, 52), (8, 53), (9, 54), (10, 55), (11, 56), (12, 57), (13, 58), (14, 59), (15, 60),
(1, 61), (2, 62), (3, 63), (4, 64), (5, 65), (6, 66), (7, 67), (8, 68), (9, 69), (10, 70),
(11, 71), (12, 72), (13, 73), (14, 74), (15, 75), (1, 76), (2, 77), (3, 78), (4, 79), (5, 80),
(6, 81), (7, 82), (8, 83), (9, 84), (10, 85), (11, 86), (12, 87), (13, 88), (14, 89), (15, 90),
(1, 91), (2, 92), (3, 93), (4, 94), (5, 95), (6, 96), (7, 97), (8, 98), (9, 99), (10, 100),
(11, 101), (12, 102), (13, 103);

--medicamento_tratamiento

INSERT INTO medicamento_tratamiento (id_tratamiento, sku_medicamento, cantidad_medicamento, frecuencia_medicamento) VALUES
(1, 1, 2, 2.00),
(1, 5, 1, 1.00),
(2, 2, 3, 3.00),
(2, 6, 1, 1.00),
(2, 7, 2, 0.50),
(3, 3, 1, 1.00),
(4, 4, 2, 2.00),
(5, 8, 1, 0.25),
(6, 9, 5, 5.00),
(7, 10, 1, 1.00),
(8, 1, 2, 1.00),
(9, 2, 1, 3.00),
(10, 3, 3, 1.00),
(10, 4, 1, 0.50),
(10, 9, 2, 1.00);

--paciente_cama

INSERT INTO paciente_cama (cedula_paciente, id_cama, fecha_asignacion, fecha_liberacion) VALUES 

('40003', 1, '2023-12-17', '2023-12-21'),
('40001', 2, '2023-12-15', '2023-12-18'),
('40002', 3, '2023-12-17', '2023-12-20'),
('30004', 4, '2023-11-29', '2023-12-02'),
('40013', 5, '2023-12-27', '2023-12-30'),
('40010', 6, '2023-12-25', '2023-12-29'),
('40025', 7, '2023-10-01', '2023-10-04'),
('40005', 8, '2023-12-19', '2023-12-22'),
('10003', 9, '2023-11-03', '2023-11-08'),
('50008', 10, '2023-12-20', '2023-12-25');

--tarjeta_asignada (registramos 4 tarjetas para los 10 primeros pacientes)

INSERT INTO tarjeta_asignada (nro_tarjeta, cedula_paciente, hora_inicio, hora_fin) VALUES 
-- PACIENTE 1 ('10001') - Tarjetas 1 a 4
(1, '10001', '10:00:00', '10:30:00'),
(2, '10001', '14:00:00', '14:30:00'),
(3, '10001', '17:00:00', '17:30:00'),
(4, '10001', '19:00:00', '19:30:00'),

-- PACIENTE 2 ('10002') - Tarjetas 5 a 8
(5, '10002', '10:30:00', '11:00:00'),
(6, '10002', '14:30:00', '15:00:00'),
(7, '10002', '17:30:00', '18:00:00'),
(8, '10002', '19:30:00', '20:00:00'),

-- PACIENTE 3 ('10003') - Tarjetas 9 a 12
(9, '10003', '11:00:00', '11:30:00'),
(10, '10003', '15:00:00', '15:30:00'),
(11, '10003', '18:00:00', '18:30:00'),
(12, '10003', '20:00:00', '20:30:00'),

-- PACIENTE 4 ('10004') - Tarjetas 13 a 16
(13, '10004', '11:30:00', '12:00:00'),
(14, '10004', '15:30:00', '16:00:00'),
(15, '10004', '18:30:00', '19:00:00'),
(16, '10004', '09:00:00', '09:30:00'),

-- PACIENTE 5 ('10005') - Tarjetas 17 a 20
(17, '10005', '12:00:00', '12:30:00'),
(18, '10005', '16:00:00', '16:30:00'),
(19, '10005', '09:30:00', '10:00:00'),
(20, '10005', '13:00:00', '13:30:00'),

-- PACIENTE 6 ('10006') - Tarjetas 21 a 24
(21, '10006', '12:30:00', '13:00:00'),
(22, '10006', '16:30:00', '17:00:00'),
(23, '10006', '10:00:00', '10:30:00'),
(24, '10006', '14:00:00', '14:30:00'),

-- PACIENTE 7 ('10007') - Tarjetas 25 a 28
(25, '10007', '13:00:00', '13:30:00'),
(26, '10007', '17:00:00', '17:30:00'),
(27, '10007', '10:30:00', '11:00:00'),
(28, '10007', '14:30:00', '15:00:00'),

-- PACIENTE 8 ('10008') - Tarjetas 29 a 32
(29, '10008', '13:30:00', '14:00:00'),
(30, '10008', '17:30:00', '18:00:00'),
(31, '10008', '11:00:00', '11:30:00'),
(32, '10008', '15:00:00', '15:30:00'),

-- PACIENTE 9 ('10009') - Tarjetas 33 a 36
(33, '10009', '14:00:00', '14:30:00'),
(34, '10009', '18:00:00', '18:30:00'),
(35, '10009', '11:30:00', '12:00:00'),
(36, '10009', '15:30:00', '16:00:00'),

-- PACIENTE 10 ('10010') - Tarjetas 37 a 40
(37, '10010', '14:30:00', '15:00:00'),
(38, '10010', '18:30:00', '19:00:00'),
(39, '10010', '12:00:00', '12:30:00'),
(40, '10010', '16:00:00', '16:30:00');

--registro_visita

INSERT INTO registro_visita (nro_tarjeta, cedula_visitante, fecha_visita) VALUES 
-- Registros 1-10 (Usa visitantes 800001 a 800010)
(1, '800001', '2023-12-01'), -- Tarjeta 1
(2, '800002', '2023-12-01'), 
(1, '800003', '2023-12-02'), -- Tarjeta 1
(3, '800004', '2023-12-03'),
(4, '800005', '2023-12-03'),
(5, '800006', '2023-12-01'),
(6, '800007', '2023-12-02'),
(6, '800008', '2023-12-03'), -- Tarjeta 6
(7, '800009', '2023-12-03'),
(9, '800010', '2023-12-04'),

-- Registros 11-20 (Usa visitantes 800001 a 800010)
(10, '800001', '2023-12-05'),
(11, '800002', '2023-12-05'),
(13, '800003', '2023-12-06'),
(14, '800004', '2023-12-06'),
(15, '800005', '2023-12-07'),
(17, '800006', '2023-12-07'),
(21, '800007', '2023-12-08'),
(25, '800008', '2023-12-08'),
(29, '800009', '2023-12-09'),
(33, '800010', '2023-12-09'),

-- Registros 21-25 (Usa visitantes 800001 a 800005)
(37, '800001', '2023-12-10'),
(38, '800002', '2023-12-10'), 
(38, '800003', '2023-12-11'), -- Tarjeta 38
(40, '800004', '2023-12-11'),
(18, '800005', '2023-12-12');