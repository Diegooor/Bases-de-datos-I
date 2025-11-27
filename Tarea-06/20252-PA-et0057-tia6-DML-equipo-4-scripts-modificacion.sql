--
-- Tarea 6 - Parte #2 del Proyecto de Aula
-- SCRIPTS DE MODIFICACIÓN DE LA BASE DE DATOS (UPDATE, DELETES)
--
-- Miembros del grupo
-- Diego Ordoñez
-- Juan Camilo Valencia
--

--
-- INSTRUCCIONES DE MODIFICACIÓN SOLICITADAS
--

--paciente

---- Paciente 1: Actualizar Teléfono
UPDATE paciente
SET telefono_paciente = '3115463810'
WHERE cedula_paciente = '10006';

-- Paciente 2: Actualizar el apellido, ahora cuenta con paterno y materno
UPDATE paciente
SET apellido_paciente = 'Homez-Hurtado' 
WHERE cedula_paciente = '"10001"';

-- Paciente 3: Actualizar eps
UPDATE paciente
SET codigo_eps = 1
WHERE cedula_paciente = '"10004"';

-- Paciente 4: Actualizar la ciudad 
UPDATE paciente
SET codigo_ciudad = 2
WHERE cedula_paciente = '10002';

-- Paciente 5: Actualizar el sexo
UPDATE paciente
SET sexo = 'F'
WHERE cedula_paciente = '10003';


--medico


-- Médico 1: Actualizar Apellido
UPDATE medico
SET apellido_medico = 'Méndez-Reyes'
WHERE id_medico = 1;

-- Médico 2: Actualizar Teléfono
UPDATE medico
SET telefono_medico = '555-12345'
WHERE id_medico = 2;

-- Médico 3: Actualizar ID de Especialidad
UPDATE medico
SET id_especialidad = 1
WHERE id_medico = 3;

-- Médico 4: Actualizar Nombre
UPDATE medico
SET nombre_medico = 'Andrés Felipe'
WHERE id_medico = 4;

-- Médico 5: Actualizar Género
UPDATE medico
SET genero_medico = 'F'
WHERE id_medico = 5;



--especialidad


-- Especialidad 1: Actualizar Nombre
UPDATE especialidad
SET nombre_especialidad = 'Medicina Familiar'
WHERE codigo_especialidad = 1;

-- Especialidad 2: Actualizar Nombre
UPDATE especialidad
SET nombre_especialidad = 'Cardiología Avanzada'
WHERE codigo_especialidad = 2;

-- Especialidad 3: Actualizar Nombre
UPDATE especialidad
SET nombre_especialidad = 'Pediatría y Neonatología'
WHERE codigo_especialidad = 3;

-- Especialidad 4: Actualizar Nombre
UPDATE especialidad
SET nombre_especialidad = 'Dermatología Clínica'
WHERE codigo_especialidad = 4;

-- Especialidad 5: Actualizar Nombre
UPDATE especialidad
SET nombre_especialidad = 'Servicios Ortopédicos y Trauma'
WHERE codigo_especialidad = 5;


--hospital


-- Hospital 1: Actualizar Nombre
UPDATE hospital
SET nombre_hospital = 'Hospital San Juan Mayor'
WHERE codigo_hospital = 1;

-- Hospital 2: Actualizar Código de Ciudad
UPDATE hospital
SET codigo_ciudad = 3
WHERE codigo_hospital = 2;

-- Hospital 3: Actualizar Cantidad de Plantas
UPDATE hospital
SET cantidad_plantas = 7
WHERE codigo_hospital = 3;

-- Hospital 4: Actualizar Nombre
UPDATE hospital
SET nombre_hospital = 'Clínica del Norte S.A.S.'
WHERE codigo_hospital = 4;

-- Hospital 5: Actualizar Código (Clave Primaria)
-- ATENCIÓN: Esto requiere que no haya FKs que apunten al código 6, o que tengan ON UPDATE CASCADE.
UPDATE hospital
SET codigo_hospital = 60
WHERE codigo_hospital = 6;


--hospitalizacion


-- Hospitalización 1: Actualizar Cédula del Paciente
UPDATE hospitalizacion
SET cedula_paciente = '10002'
WHERE id_hospitalizacion = 1;

-- Hospitalización 2: Actualizar Código del Médico
UPDATE hospitalizacion
SET codigo_medico = 4
WHERE id_hospitalizacion = 2;

-- Hospitalización 3: Actualizar Código del Hospital
UPDATE hospitalizacion
SET codigo_hospital = 1
WHERE id_hospitalizacion = 3;

-- Hospitalización 4: Actualizar Fecha de Ingreso/Atención
UPDATE hospitalizacion
SET fecha_atencion = '2023-11-08'
WHERE id_hospitalizacion = 4;

-- Hospitalización 5: Actualizar Motivo de Hospitalización
UPDATE hospitalizacion
SET motivo_hospitalizacion = 'Deshidratación y Fallo Renal Agudo'
WHERE id_hospitalizacion = 5;







-- INSTRUCCIONES DELETE 

-- Paciente 10006
-- Eliminar registros de visitas asociados a las tarjetas del paciente 10006
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente = '10006'
);

-- Eliminar medicamentos asociados a tratamientos del paciente 10006
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE cedula_paciente = '10006'
        )
    )
);

-- Eliminar tratamientos asociados a diagnósticos del paciente 10006
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE cedula_paciente = '10006'
    )
);

-- Eliminar diagnósticos asociados a hospitalizaciones del paciente 10006
DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE cedula_paciente = '10006'
);

-- Eliminar hospitalizaciones del paciente 10006
DELETE FROM hospitalizacion
WHERE cedula_paciente = '10006';

-- Eliminar asignación de cama del paciente 10006
DELETE FROM paciente_cama
WHERE cedula_paciente = '10006';

-- Eliminar tarjetas asignadas al paciente 10006
DELETE FROM tarjeta_asignada
WHERE cedula_paciente = '10006';

-- Eliminar al paciente 10006
DELETE FROM paciente
WHERE cedula_paciente = '10006';

------------------------------

-- Paciente 10001
-- Eliminar registros de visitas asociados a las tarjetas del paciente 10001
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente = '10001'
);

-- Eliminar medicamentos asociados a tratamientos del paciente 10001
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE cedula_paciente = '10001'
        )
    )
);

-- Eliminar tratamientos asociados a diagnósticos del paciente 10001
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE cedula_paciente = '10001'
    )
);

-- Eliminar diagnósticos asociados a hospitalizaciones del paciente 10001
DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE cedula_paciente = '10001'
);

-- Eliminar hospitalizaciones del paciente 10001
DELETE FROM hospitalizacion
WHERE cedula_paciente = '10001';

-- Eliminar asignación de cama del paciente 10001
DELETE FROM paciente_cama
WHERE cedula_paciente = '10001';

-- Eliminar tarjetas asignadas al paciente 10001
DELETE FROM tarjeta_asignada
WHERE cedula_paciente = '10001';

-- Eliminar al paciente 10001
DELETE FROM paciente
WHERE cedula_paciente = '10001';

------------------------------

-- Paciente 10004
-- Eliminar registros de visitas asociados a las tarjetas del paciente 10004
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente = '10004'
);

-- Eliminar medicamentos asociados a tratamientos del paciente 10004
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE cedula_paciente = '10004'
        )
    )
);

-- Eliminar tratamientos asociados a diagnósticos del paciente 10004
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE cedula_paciente = '10004'
    )
);

-- Eliminar diagnósticos asociados a hospitalizaciones del paciente 10004
DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE cedula_paciente = '10004'
);

-- Eliminar hospitalizaciones del paciente 10004
DELETE FROM hospitalizacion
WHERE cedula_paciente = '10004';

-- Eliminar asignación de cama del paciente 10004
DELETE FROM paciente_cama
WHERE cedula_paciente = '10004';

-- Eliminar tarjetas asignadas al paciente 10004
DELETE FROM tarjeta_asignada
WHERE cedula_paciente = '10004';

-- Eliminar al paciente 10004
DELETE FROM paciente
WHERE cedula_paciente = '10004';

------------------------------

-- Paciente 10002
-- Eliminar registros de visitas asociados a las tarjetas del paciente 10002
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente = '10002'
);

-- Eliminar medicamentos asociados a tratamientos del paciente 10002
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE cedula_paciente = '10002'
        )
    )
);

-- Eliminar tratamientos asociados a diagnósticos del paciente 10002
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE cedula_paciente = '10002'
    )
);

-- Eliminar diagnósticos asociados a hospitalizaciones del paciente 10002
DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE cedula_paciente = '10002'
);

-- Eliminar hospitalizaciones del paciente 10002
DELETE FROM hospitalizacion
WHERE cedula_paciente = '10002';

-- Eliminar asignación de cama del paciente 10002
DELETE FROM paciente_cama
WHERE cedula_paciente = '10002';

-- Eliminar tarjetas asignadas al paciente 10002
DELETE FROM tarjeta_asignada
WHERE cedula_paciente = '10002';

-- Eliminar al paciente 10002
DELETE FROM paciente
WHERE cedula_paciente = '10002';

------------------------------

-- Paciente 10003
-- Eliminar registros de visitas asociados a las tarjetas del paciente 10003
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente = '10003'
);

-- Eliminar medicamentos asociados a tratamientos del paciente 10003
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE cedula_paciente = '10003'
        )
    )
);

-- Eliminar tratamientos asociados a diagnósticos del paciente 10003
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE cedula_paciente = '10003'
    )
);

-- Eliminar diagnósticos asociados a hospitalizaciones del paciente 10003
DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE cedula_paciente = '10003'
);

-- Eliminar hospitalizaciones del paciente 10003
DELETE FROM hospitalizacion
WHERE cedula_paciente = '10003';

-- Eliminar asignación de cama del paciente 10003
DELETE FROM paciente_cama
WHERE cedula_paciente = '10003';

-- Eliminar tarjetas asignadas al paciente 10003
DELETE FROM tarjeta_asignada
WHERE cedula_paciente = '10003';

-- Eliminar al paciente 10003
DELETE FROM paciente
WHERE cedula_paciente = '10003';

------------------------------

-- Medico 1
-- Eliminar hospitalizaciones asociadas al médico 1
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE codigo_medico = 1
        )
    )
);

DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE codigo_medico = 1
    )
);

DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE codigo_medico = 1
);

DELETE FROM hospitalizacion
WHERE codigo_medico = 1;

-- Eliminar al médico 1
DELETE FROM medico
WHERE codigo_medico = 1;

------------------------------

-- Medico 2
-- Eliminar hospitalizaciones asociadas al médico 2
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE codigo_medico = 2
        )
    )
);

DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE codigo_medico = 2
    )
);

DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE codigo_medico = 2
);

DELETE FROM hospitalizacion
WHERE codigo_medico = 2;

-- Eliminar al médico 2
DELETE FROM medico
WHERE codigo_medico = 2;

------------------------------

-- Medico 3
-- Eliminar hospitalizaciones asociadas al médico 3
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE codigo_medico = 3
        )
    )
);

DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE codigo_medico = 3
    )
);

DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE codigo_medico = 3
);

DELETE FROM hospitalizacion
WHERE codigo_medico = 3;

-- Eliminar al médico 3
DELETE FROM medico
WHERE codigo_medico = 3;

------------------------------

-- Medico 4
-- Eliminar hospitalizaciones asociadas al médico 4
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE codigo_medico = 4
        )
    )
);

DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE codigo_medico = 4
    )
);

DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE codigo_medico = 4
);

DELETE FROM hospitalizacion
WHERE codigo_medico = 4;

-- Eliminar al médico 4
DELETE FROM medico
WHERE codigo_medico = 4;

------------------------------

-- Medico 5
-- Eliminar hospitalizaciones asociadas al médico 5
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE codigo_medico = 5
        )
    )
);

DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE codigo_medico = 5
    )
);

DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE codigo_medico = 5
);

DELETE FROM hospitalizacion
WHERE codigo_medico = 5;

-- Eliminar al médico 5
DELETE FROM medico
WHERE codigo_medico = 5;

------------------------------

-- Especialidad 1
-- Actualizar médicos asociados a la especialidad 1
UPDATE medico
SET codigo_especialidad = NULL
WHERE codigo_especialidad = 1;

-- Eliminar la especialidad 1
DELETE FROM especialidad
WHERE codigo_especialidad = 1;

------------------------------

-- Especialidad 2
-- Actualizar médicos asociados a la especialidad 2
UPDATE medico
SET codigo_especialidad = NULL
WHERE codigo_especialidad = 2;

-- Eliminar la especialidad 2
DELETE FROM especialidad
WHERE codigo_especialidad = 2;

------------------------------

-- Especialidad 3
-- Actualizar médicos asociados a la especialidad 3
UPDATE medico
SET codigo_especialidad = NULL
WHERE codigo_especialidad = 3;

-- Eliminar la especialidad 3
DELETE FROM especialidad
WHERE codigo_especialidad = 3;

------------------------------

-- Especialidad 4
-- Actualizar médicos asociados a la especialidad 4
UPDATE medico
SET codigo_especialidad = NULL
WHERE codigo_especialidad = 4;

-- Eliminar la especialidad 4
DELETE FROM especialidad
WHERE codigo_especialidad = 4;

------------------------------

-- Especialidad 5
-- Actualizar médicos asociados a la especialidad 5
UPDATE medico
SET codigo_especialidad = NULL
WHERE codigo_especialidad = 5;

-- Eliminar la especialidad 5
DELETE FROM especialidad
WHERE codigo_especialidad = 5;

------------------------------

-- Hospital 1
-- Eliminar registros de visitas asociados a las tarjetas de pacientes en el hospital 1
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente IN (
        SELECT cedula_paciente
        FROM hospitalizacion
        WHERE codigo_hospital = 1
    )
);

-- Eliminar medicamentos asociados a tratamientos de pacientes en el hospital 1
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE codigo_hospital = 1
        )
    )
);

-- Eliminar tratamientos asociados a diagnósticos de pacientes en el hospital 1
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE codigo_hospital = 1
    )
);

-- Eliminar diagnósticos asociados a hospitalizaciones de pacientes en el hospital 1
DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE codigo_hospital = 1
);

-- Eliminar hospitalizaciones de pacientes en el hospital 1
DELETE FROM hospitalizacion
WHERE codigo_hospital = 1;

-- Eliminar asignaciones de cama de pacientes en el hospital 1
DELETE FROM paciente_cama
WHERE id_cama IN (
    SELECT id_cama
    FROM cama
    WHERE id_cuarto IN (
        SELECT id_cuarto
        FROM cuarto
        WHERE id_planta IN (
            SELECT id_planta
            FROM planta
            WHERE codigo_hospital = 1
        )
    )
);

-- Eliminar camas en cuartos del hospital 1
DELETE FROM cama
WHERE id_cuarto IN (
    SELECT id_cuarto
    FROM cuarto
    WHERE id_planta IN (
        SELECT id_planta
        FROM planta
        WHERE codigo_hospital = 1
    )
);

-- Eliminar cuartos en plantas del hospital 1
DELETE FROM cuarto
WHERE id_planta IN (
    SELECT id_planta
    FROM planta
    WHERE codigo_hospital = 1
);

-- Eliminar plantas del hospital 1
DELETE FROM planta
WHERE codigo_hospital = 1;

-- Eliminar tarjetas asignadas a pacientes en el hospital 1
DELETE FROM tarjeta_asignada
WHERE cedula_paciente IN (
    SELECT cedula_paciente
    FROM hospitalizacion
    WHERE codigo_hospital = 1
);

-- Eliminar al hospital 1
DELETE FROM hospital
WHERE codigo_hospital = 1;

------------------------------

-- Hospital 2
-- Eliminar registros de visitas asociados a las tarjetas de pacientes en el hospital 2
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente IN (
        SELECT cedula_paciente
        FROM hospitalizacion
        WHERE codigo_hospital = 2
    )
);

-- Eliminar medicamentos asociados a tratamientos de pacientes en el hospital 2
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE codigo_hospital = 2
        )
    )
);

-- Eliminar tratamientos asociados a diagnósticos de pacientes en el hospital 2
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE codigo_hospital = 2
    )
);

-- Eliminar diagnósticos asociados a hospitalizaciones de pacientes en el hospital 2
DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE codigo_hospital = 2
);

-- Eliminar hospitalizaciones de pacientes en el hospital 2
DELETE FROM hospitalizacion
WHERE codigo_hospital = 2;

-- Eliminar asignaciones de cama de pacientes en el hospital 2
DELETE FROM paciente_cama
WHERE id_cama IN (
    SELECT id_cama
    FROM cama
    WHERE id_cuarto IN (
        SELECT id_cuarto
        FROM cuarto
        WHERE id_planta IN (
            SELECT id_planta
            FROM planta
            WHERE codigo_hospital = 2
        )
    )
);

-- Eliminar camas en cuartos del hospital 2
DELETE FROM cama
WHERE id_cuarto IN (
    SELECT id_cuarto
    FROM cuarto
    WHERE id_planta IN (
        SELECT id_planta
        FROM planta
        WHERE codigo_hospital = 2
    )
);

-- Eliminar cuartos en plantas del hospital 2
DELETE FROM cuarto
WHERE id_planta IN (
    SELECT id_planta
    FROM planta
    WHERE codigo_hospital = 2
);

-- Eliminar plantas del hospital 2
DELETE FROM planta
WHERE codigo_hospital = 2;

-- Eliminar tarjetas asignadas a pacientes en el hospital 2
DELETE FROM tarjeta_asignada
WHERE cedula_paciente IN (
    SELECT cedula_paciente
    FROM hospitalizacion
    WHERE codigo_hospital = 2
);

-- Eliminar al hospital 2
DELETE FROM hospital
WHERE codigo_hospital = 2;

------------------------------

-- Hospital 3
-- Eliminar registros de visitas asociados a las tarjetas de pacientes en el hospital 3
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente IN (
        SELECT cedula_paciente
        FROM hospitalizacion
        WHERE codigo_hospital = 3
    )
);

-- Eliminar medicamentos asociados a tratamientos de pacientes en el hospital 3
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE codigo_hospital = 3
        )
    )
);

-- Eliminar tratamientos asociados a diagnósticos de pacientes en el hospital 3
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE codigo_hospital = 3
    )
);

-- Eliminar diagnósticos asociados a hospitalizaciones de pacientes en el hospital 3
DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE codigo_hospital = 3
);

-- Eliminar hospitalizaciones de pacientes en el hospital 3
DELETE FROM hospitalizacion
WHERE codigo_hospital = 3;

-- Eliminar asignaciones de cama de pacientes en el hospital 3
DELETE FROM paciente_cama
WHERE id_cama IN (
    SELECT id_cama
    FROM cama
    WHERE id_cuarto IN (
        SELECT id_cuarto
        FROM cuarto
        WHERE id_planta IN (
            SELECT id_planta
            FROM planta
            WHERE codigo_hospital = 3
        )
    )
);

-- Eliminar camas en cuartos del hospital 3
DELETE FROM cama
WHERE id_cuarto IN (
    SELECT id_cuarto
    FROM cuarto
    WHERE id_planta IN (
        SELECT id_planta
        FROM planta
        WHERE codigo_hospital = 3
    )
);

-- Eliminar cuartos en plantas del hospital 3
DELETE FROM cuarto
WHERE id_planta IN (
    SELECT id_planta
    FROM planta
    WHERE codigo_hospital = 3
);

-- Eliminar plantas del hospital 3
DELETE FROM planta
WHERE codigo_hospital = 3;

-- Eliminar tarjetas asignadas a pacientes en el hospital 3
DELETE FROM tarjeta_asignada
WHERE cedula_paciente IN (
    SELECT cedula_paciente
    FROM hospitalizacion
    WHERE codigo_hospital = 3
);

-- Eliminar al hospital 3
DELETE FROM hospital
WHERE codigo_hospital = 3;


------------------------------

-- Hospital 4
-- Eliminar registros de visitas asociados a las tarjetas de pacientes en el hospital 4
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente IN (
        SELECT cedula_paciente
        FROM hospitalizacion
        WHERE codigo_hospital = 4
    )
);

-- Eliminar medicamentos asociados a tratamientos de pacientes en el hospital 4
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE codigo_hospital = 4
        )
    )
);

-- Eliminar tratamientos asociados a diagnósticos de pacientes en el hospital 4
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE codigo_hospital = 4
    )
);

-- Eliminar diagnósticos asociados a hospitalizaciones de pacientes en el hospital 4
DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE codigo_hospital = 4
);

-- Eliminar hospitalizaciones de pacientes en el hospital 4
DELETE FROM hospitalizacion
WHERE codigo_hospital = 4;

-- Eliminar asignaciones de cama de pacientes en el hospital 4
DELETE FROM paciente_cama
WHERE id_cama IN (
    SELECT id_cama
    FROM cama
    WHERE id_cuarto IN (
        SELECT id_cuarto
        FROM cuarto
        WHERE id_planta IN (
            SELECT id_planta
            FROM planta
            WHERE codigo_hospital = 4
        )
    )
);

-- Eliminar camas en cuartos del hospital 4
DELETE FROM cama
WHERE id_cuarto IN (
    SELECT id_cuarto
    FROM cuarto
    WHERE id_planta IN (
        SELECT id_planta
        FROM planta
        WHERE codigo_hospital = 4
    )
);

-- Eliminar cuartos en plantas del hospital 4
DELETE FROM cuarto
WHERE id_planta IN (
    SELECT id_planta
    FROM planta
    WHERE codigo_hospital = 4
);

-- Eliminar plantas del hospital 4
DELETE FROM planta
WHERE codigo_hospital = 4;

-- Eliminar tarjetas asignadas a pacientes en el hospital 4
DELETE FROM tarjeta_asignada
WHERE cedula_paciente IN (
    SELECT cedula_paciente
    FROM hospitalizacion
    WHERE codigo_hospital = 4
);

-- Eliminar al hospital 4
DELETE FROM hospital
WHERE codigo_hospital = 4;



------------------------------

-- Hospital 5
-- Eliminar registros de visitas asociados a las tarjetas de pacientes en el hospital 5
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente IN (
        SELECT cedula_paciente
        FROM hospitalizacion
        WHERE codigo_hospital = 5
    )
);

-- Eliminar medicamentos asociados a tratamientos de pacientes en el hospital 5
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion IN (
            SELECT id_hospitalizacion
            FROM hospitalizacion
            WHERE codigo_hospital = 5
        )
    )
);

-- Eliminar tratamientos asociados a diagnósticos de pacientes en el hospital 5
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion IN (
        SELECT id_hospitalizacion
        FROM hospitalizacion
        WHERE codigo_hospital = 5
    )
);

-- Eliminar diagnósticos asociados a hospitalizaciones de pacientes en el hospital 5
DELETE FROM diagnostico
WHERE id_hospitalizacion IN (
    SELECT id_hospitalizacion
    FROM hospitalizacion
    WHERE codigo_hospital = 5
);

-- Eliminar hospitalizaciones de pacientes en el hospital 5
DELETE FROM hospitalizacion
WHERE codigo_hospital = 5;

-- Eliminar asignaciones de cama de pacientes en el hospital 5
DELETE FROM paciente_cama
WHERE id_cama IN (
    SELECT id_cama
    FROM cama
    WHERE id_cuarto IN (
        SELECT id_cuarto
        FROM cuarto
        WHERE id_planta IN (
            SELECT id_planta
            FROM planta
            WHERE codigo_hospital = 5
        )
    )
);

-- Eliminar camas en cuartos del hospital 5
DELETE FROM cama
WHERE id_cuarto IN (
    SELECT id_cuarto
    FROM cuarto
    WHERE id_planta IN (
        SELECT id_planta
        FROM planta
        WHERE codigo_hospital = 5
    )
);

-- Eliminar cuartos en plantas del hospital 5
DELETE FROM cuarto
WHERE id_planta IN (
    SELECT id_planta
    FROM planta
    WHERE codigo_hospital = 5
);

-- Eliminar plantas del hospital 5
DELETE FROM planta
WHERE codigo_hospital = 5;

-- Eliminar tarjetas asignadas a pacientes en el hospital 5
DELETE FROM tarjeta_asignada
WHERE cedula_paciente IN (
    SELECT cedula_paciente
    FROM hospitalizacion
    WHERE codigo_hospital = 5
);

-- Eliminar al hospital 5
DELETE FROM hospital
WHERE codigo_hospital = 5;

------------------------------

-- Hospitalización 1
-- Eliminar registros de visitas asociados a las tarjetas de la hospitalización 1
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente IN (
        SELECT cedula_paciente
        FROM hospitalizacion
        WHERE id_hospitalizacion = 1
    )
);

-- Eliminar medicamentos asociados a tratamientos de la hospitalización 1
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion = 1
    )
);

-- Eliminar tratamientos asociados a diagnósticos de la hospitalización 1
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion = 1
);

-- Eliminar diagnósticos asociados a la hospitalización 1
DELETE FROM diagnostico
WHERE id_hospitalizacion = 1;

-- Eliminar la hospitalización 1
DELETE FROM hospitalizacion
WHERE id_hospitalizacion = 1;

------------------------------

-- Hospitalización 2
-- Eliminar registros de visitas asociados a las tarjetas de la hospitalización 2
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente IN (
        SELECT cedula_paciente
        FROM hospitalizacion
        WHERE id_hospitalizacion = 2
    )
);

-- Eliminar medicamentos asociados a tratamientos de la hospitalización 2
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion = 2
    )
);

-- Eliminar tratamientos asociados a diagnósticos de la hospitalización 2
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion = 2
);

-- Eliminar diagnósticos asociados a la hospitalización 2
DELETE FROM diagnostico
WHERE id_hospitalizacion = 2;

-- Eliminar la hospitalización 2
DELETE FROM hospitalizacion
WHERE id_hospitalizacion = 2;

------------------------------

-- Hospitalización 3
-- Eliminar registros de visitas asociados a las tarjetas de la hospitalización 3
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente IN (
        SELECT cedula_paciente
        FROM hospitalizacion
        WHERE id_hospitalizacion = 3
    )
);

-- Eliminar medicamentos asociados a tratamientos de la hospitalización 3
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion = 3
    )
);

-- Eliminar tratamientos asociados a diagnósticos de la hospitalización 3
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion = 3
);

-- Eliminar diagnósticos asociados a la hospitalización 3
DELETE FROM diagnostico
WHERE id_hospitalizacion = 3;

-- Eliminar la hospitalización 3
DELETE FROM hospitalizacion
WHERE id_hospitalizacion = 3;

------------------------------

-- Hospitalización 4
-- Eliminar registros de visitas asociados a las tarjetas de la hospitalización 4
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente IN (
        SELECT cedula_paciente
        FROM hospitalizacion
        WHERE id_hospitalizacion = 4
    )
);

-- Eliminar medicamentos asociados a tratamientos de la hospitalización 4
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion = 4
    )
);

-- Eliminar tratamientos asociados a diagnósticos de la hospitalización 4
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion = 4
);

-- Eliminar diagnósticos asociados a la hospitalización 4
DELETE FROM diagnostico
WHERE id_hospitalizacion = 4;

-- Eliminar la hospitalización 4
DELETE FROM hospitalizacion
WHERE id_hospitalizacion = 4;

------------------------------

-- Hospitalización 5
-- Eliminar registros de visitas asociados a las tarjetas de la hospitalización 5
DELETE FROM registro_visita
WHERE nro_tarjeta IN (
    SELECT nro_tarjeta
    FROM tarjeta_asignada
    WHERE cedula_paciente IN (
        SELECT cedula_paciente
        FROM hospitalizacion
        WHERE id_hospitalizacion = 5
    )
);

-- Eliminar medicamentos asociados a tratamientos de la hospitalización 5
DELETE FROM medicamento_tratamiento
WHERE id_tratamiento IN (
    SELECT id_tratamiento
    FROM tratamiento
    WHERE id_diagnostico IN (
        SELECT id_diagnostico
        FROM diagnostico
        WHERE id_hospitalizacion = 5
    )
);

-- Eliminar tratamientos asociados a diagnósticos de la hospitalización 5
DELETE FROM tratamiento
WHERE id_diagnostico IN (
    SELECT id_diagnostico
    FROM diagnostico
    WHERE id_hospitalizacion = 5
);

-- Eliminar diagnósticos asociados a la hospitalización 5
DELETE FROM diagnostico
WHERE id_hospitalizacion = 5;

-- Eliminar la hospitalización 5
DELETE FROM hospitalizacion
WHERE id_hospitalizacion = 5;