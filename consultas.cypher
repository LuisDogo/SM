// Historial médico del paciente: Recuperar el historial médico completo de un paciente.

// Pacientes atendidos por un médico: Obtener las citas programadas de un paciente en específico para saber por qué médico fueron atendidos.

// Pacientes de un hospital: Obtener a los pacientes con ciertas caracteísticas con cita en un cierto hospital. 

// Citas generadas en un día: Obtener las citas de los pacientes que se generaron en un determinado tiempo o en una fecha específica.

// Citas programadas de un hospital: Obtener todas las citas que se van a atender en un determinado tiempo o en una fecha específica.

// Hacer un ranking de los casos más comunes entre los pacientes de un hospital.

// Hacer un ranking de los casos más comunes entre los pacientes de un doctor.

// Hacer un ranking de la especialidad de doctor más común en un hospital.

// Cuál es el salario más bajo y más alto de un hospital (sacar el rango salarial).

// Cantidad de hombres y mujeres registrad@s en un hospital.



// Cantidad de hombres y mujeres con una cita registrada por doctor.

Match (p:Paciente{sexo:"M"})-[:REALIZA]->(c:Cita)<-[:ATIENDE]-(d:Doctor{numCedula:12345678})
RETURN COUNT(p)

// Cantidad de hombres y mujeres con una cita registrada por doctor.

Match (p:Paciente{sexo:"F"})-[:REALIZA]->(c:Cita)<-[:ATIENDE]-(d:Doctor{numCedula:12345678})
RETURN COUNT(p)

