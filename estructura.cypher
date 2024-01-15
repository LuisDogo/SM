//  Creación de Hospitales
CREATE
    (h1:HOSPITAL{nombre:"Hospital general de Ticoman",direccion:"Cerrada Plan de San Luis 7, La Purísima Ticoman, Gustavo A. Madero, 07330 Ciudad de México, CDMX",capacidad:30}),
    (h2:HOSPITAL{nombre:"Hospital general de Cuautepec",direccion:"La Pastora, Gustavo A. Madero, 07290 Ciudad de México, CDMX",capacidad:60}),
    (h3:HOSPITAL{nombre:"Hospital Santiago Apóstol",direccion:"Av Cuautepec 32, Jorge Negrete, Gustavo A. Madero, 07280 Ciudad de México, CDMX",capacidad:15})

//  Creación de Doctores
//  La T en datetime separa la fecha de la hora
CREATE
    (d1:DOCTOR{numCedula: 55719623, nombre: "Lisa", aPat: "Minci", aMat: "Mondstadt", rfc: "MIML850609PJ0", especialidad: "Cardiología"}),
    (d2:DOCTOR{numCedula: 12345678, nombre: "Juan", aPat: "Gómez", aMat: "Pérez", rfc: "JUGP123456ABC", especialidad: "Cardiología"}),
    (d3:DOCTOR{numCedula: 23456789, nombre: "Ana", aPat: "Martínez", aMat: "López", rfc: "AMLK987654XYZ", especialidad: "Pediatría"}),
    (d4:DOCTOR{numCedula: 66329240, nombre: "Carlos", aPat: "Hernández", aMat: "Ruíz", rfc: "CHRL123456DEF", especialidad: "Oftalmología"}),
    (d5:DOCTOR{numCedula: 49883794, nombre: "Sofía", aPat: "Rodríguez", aMat: "García", rfc: "SARG876543JKL", especialidad: "Neurología"}),
    (d6:DOCTOR{numCedula: 57343259, nombre: "Pedro", aPat: "López", aMat: "Gómez", rfc: "PLGJ234567MNO", especialidad: "Cirugía General"}),
    (d7:DOCTOR{numCedula: 67890123, nombre: "Laura", aPat: "Fernández", aMat: "Díaz", rfc: "LFMD654321PQR", especialidad: "Dermatología"}),
    (d8:DOCTOR{numCedula: 78901234, nombre: "Ricardo", aPat: "Gutiérrez", aMat: "Sánchez", rfc: "RGSP987654ABC", especialidad: "Ginecología"}),
    (d9:DOCTOR{numCedula: 89012345, nombre: "María", aPat: "Ramírez", aMat: "Núñez", rfc: "MRNN876543DEF", especialidad: "Endocrinología"}),
    (d10:DOCTOR{numCedula: 90123456, nombre: "Javier", aPat: "Cabrera", aMat: "Lara", rfc: "JCLR123456GHI", especialidad: "Ortopedia"}),
    (d11:DOCTOR{numCedula: 11223344, nombre: "Silvia", aPat: "García", aMat: "Hernández", rfc: "SGHG987654JKL", especialidad: "Urología"}),
    (d12:DOCTOR{numCedula: 22334455, nombre: "Martín", aPat: "Fuentes", aMat: "Santos", rfc: "MFSM876543PQR", especialidad: "Oncología"}),
    (d13:DOCTOR{numCedula: 33445566, nombre: "Lorena", aPat: "Salazar", aMat: "Ortega", rfc: "LSOO654321ABC", especialidad: "Psiquiatría"}),
    (d14:DOCTOR{numCedula: 44556677, nombre: "Rafael", aPat: "González", aMat: "Ríos", rfc: "RGRR987654DEF", especialidad: "Otorrinolaringología"}),
    (d15:DOCTOR{numCedula: 55667788, nombre: "Isabel", aPat: "Vega", aMat: "Soto", rfc: "IVSS123456GHI", especialidad: "Cardiología"}),
    (d16:DOCTOR{numCedula: 66778899, nombre: "Alejandro", aPat: "Méndez", aMat: "Torres", rfc: "AMTT876543JKL", especialidad: "Cirugía Plástica"}),
    (d17:DOCTOR{numCedula: 77889900, nombre: "Elena", aPat: "Guerrero", aMat: "Guzmán", rfc: "EGGG987654ABC", especialidad: "Neumología"}),
    (d18:DOCTOR{numCedula: 77889900, nombre: "Elena", aPat: "Guerrero", aMat: "Guzmán", rfc: "EGGG987654ABC", especialidad: "Neumología"}),
    (d19:DOCTOR{numCedula: 88990011, nombre: "José", aPat: "Ramos", aMat: "Reyes", rfc: "JRRR654321DEF", especialidad: "Reumatología"}),
    (d20:DOCTOR{numCedula: 99001122, nombre: "Natalia", aPat: "Pérez", aMat: "López", rfc: "NPLL123456MNO", especialidad: "Dermatología"})

// Afiliar DOCTOR a HOSPITAL
MATCH (h:HOSPITAL{nombre:"Hospital general de Ticoman"}), (d:DOCTOR{numCedula: 55719623}) CREATE (d)-[t:TRABAJA_EN {inicio: date("2000-01-10"), salarioMX: 35000.00, horario: "Lunes a Domingo de 6:00 a 13:00"}]->(h)
MATCH (h:HOSPITAL{nombre:"Hospital general de Ticoman"}), (d:DOCTOR{numCedula: 12345678}) CREATE (d)-[t:TRABAJA_EN {inicio: date("2000-01-15"), salarioMX: 32000.00, horario: "Lunes a Domingo de 6:00 a 13:00"}]->(h)