Match (p:Paciente{sexo:"M"})-[:REALIZA]->(c:Cita)<-[:ATIENDE]-(d:Doctor{numCedula:12345678})
RETURN COUNT(p)
