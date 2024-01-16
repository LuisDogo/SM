//  Creación de Hospitales
CREATE
    (h1:Hospital{nombre:"Hospital general de Ticoman",direccion:"Cerrada Plan de San Luis 7, La Purísima Ticoman, Gustavo A. Madero, 07330 Ciudad de México, CDMX",capacidad:30}),
    (h2:Hospital{nombre:"Hospital general de Cuautepec",direccion:"La Pastora, Gustavo A. Madero, 07290 Ciudad de México, CDMX",capacidad:60}),
    (h3:Hospital{nombre:"Hospital Santiago Apóstol",direccion:"Av Cuautepec 32, Jorge Negrete, Gustavo A. Madero, 07280 Ciudad de México, CDMX",capacidad:15})

//  Creación de Doctores
//  La T en datetime separa la fecha de la hora

CREATE
    (d1:DOCTOR{numCedula: 55719623, nombre: "Lisa", aPat: "Minci", aMat: "Mondstadt", rfc: "MIML850609PJ0", especialidad: "Médico familiar"}),
    (d2:DOCTOR{numCedula: 12345678, nombre: "Juan", aPat: "Gómez", aMat: "Pérez", rfc: "JUGP123456ABC", especialidad: "Endocrinología"}),
    (d3:DOCTOR{numCedula: 23456789, nombre: "Ana", aPat: "Martínez", aMat: "López", rfc: "AMLK987654XYZ", especialidad: "Cardiología"}),
    (d4:DOCTOR{numCedula: 66329240, nombre: "Carlos", aPat: "Hernández", aMat: "Ruíz", rfc: "CHRL123456DEF", especialidad: "Reumatología"}),
    (d5:DOCTOR{numCedula: 49883794, nombre: "Sofía", aPat: "Rodríguez", aMat: "García", rfc: "SARG876543JKL", especialidad: "Neumología"}),
    (d6:DOCTOR{numCedula: 57343259, nombre: "Pedro", aPat: "López", aMat: "Gómez", rfc: "PLGJ234567MNO", especialidad: "Psiquiatría"}),
    (d7:DOCTOR{numCedula: 67890123, nombre: "Laura", aPat: "Fernández", aMat: "Díaz", rfc: "LFMD654321PQR", especialidad: "Oncología"}),
    (d8:DOCTOR{numCedula: 78901234, nombre: "Ricardo", aPat: "Gutiérrez", aMat: "Sánchez", rfc: "RGSP987654ABC", especialidad: "Médico familiar"}),
    (d9:DOCTOR{numCedula: 89012345, nombre: "María", aPat: "Ramírez", aMat: "Núñez", rfc: "MRNN876543DEF", especialidad: "Neurología"}),
    (d10:DOCTOR{numCedula: 90123456, nombre: "Javier", aPat: "Cabrera", aMat: "Lara", rfc: "JCLR123456GHI", especialidad: "Gastroenterología"}),
    (d11:DOCTOR{numCedula: 11223344, nombre: "Silvia", aPat: "García", aMat: "Hernández", rfc: "SGHG987654JKL", especialidad: "Psiquiatría"}),
    (d12:DOCTOR{numCedula: 22334455, nombre: "Martín", aPat: "Fuentes", aMat: "Santos", rfc: "MFSM876543PQR", especialidad: "Alergología"}),
    (d13:DOCTOR{numCedula: 33445566, nombre: "Lorena", aPat: "Salazar", aMat: "Ortega", rfc: "LSOO654321ABC", especialidad: "Nefrología"}),
    (d14:DOCTOR{numCedula: 44556677, nombre: "Rafael", aPat: "González", aMat: "Ríos", rfc: "RGRR987654DEF", especialidad: "Pediatría"}),
    (d15:DOCTOR{numCedula: 55667788, nombre: "Isabel", aPat: "Vega", aMat: "Soto", rfc: "IVSS123456GHI", especialidad: "Médico familiar"}),
    (d16:DOCTOR{numCedula: 66778899, nombre: "Alejandro", aPat: "Méndez", aMat: "Torres", rfc: "AMTT876543JKL", especialidad: "Ortopedia"}),
    (d17:DOCTOR{numCedula: 77889900, nombre: "Elena", aPat: "Guerrero", aMat: "Guzmán", rfc: "EGGG987654ABC", especialidad: "Nutriología"}),
    (d18:DOCTOR{numCedula: 88990011, nombre: "José", aPat: "Ramos", aMat: "Reyes", rfc: "JRRR654321DEF", especialidad: "Reumatología"}),
    (d19:DOCTOR{numCedula: 99001122, nombre: "Natalia", aPat: "Pérez", aMat: "López", rfc: "NPLL123456MNO", especialidad: "Psiquiatría"}),
    (d20:DOCTOR{numCedula: 00112233, nombre: "Gabriel", aPat: "Moreno", aMat: "Vargas", rfc: "GMVV987654PQR", especialidad: "Alergología"})

// Afiliar Doctor a Hospital

MATCH (h:Hospital), (d:Doctor)
WHERE h.nombre="Hospital general de Ticoman" AND d.numCedula=55719623
CREATE (d)-[t:TRABAJA_EN {inicio: date("2000-01-10"), salarioMX: 35000.00, horario: "Lunes a Domingo de 6:00 a 13:00"}]->(h)

MATCH (h:Hospital), (d:Doctor)
WHERE h.nombre="Hospital general de Ticoman" AND d.numCedula=12345678
CREATE (d)-[t2:TRABAJA_EN {inicio: date("2000-01-15"), salarioMX: 32000.00, horario: "Lunes a Domingo de 6:00 a 13:00"}]->(h)

// Creación de Pacientes

CREATE
    (p1:Paciente{nP:"Luis Daniel",aPat:"Moreno",aMat:"Santamría",tel:5576831468,fNac:date("2003-07-21"),correo:"luisdanielmorenos@gmail.com",sexo:"M",nss:18210347128,curp:"MOSL030721HDFRNSA9"}),
    (p2:Paciente{nP:"Ana",aPat:"Diaz",aMat:"Sosa",tel:1281691534,fNac:date("1983-03-13"),correo:"anadiazs@gmail.com",sexo:"F",nss:92223664412,curp:"MJGU670109HMCOCO11"}),
    (p3:Paciente{nP:"Víctor",aPat:"Torres",aMat:"Lopez",tel:7186433739,fNac:date("1993-03-11"),correo:"victortorresl@gmail.com",sexo:"H",nss:42908572399,curp:"AWYB710215HASBNI47"}),
    (p4:Paciente{nP:"Sergio",aPat:"Aguirre",aMat:"Medina",tel:7085460715,fNac:date("1986-05-12"),correo:"sergioaguirrem@gmail.com",sexo:"H",nss:29399725834,curp:"VBXA260111HBSFIP71"}),
    (p5:Paciente{nP:"Daniela",aPat:"Armendariz",aMat:"Correa",tel:3296861977,fNac:date("1976-11-13"),correo:"danielaarmendarizc@gmail.com",sexo:"M",nss:12185844290,curp:"VRLJ050626MCHKLS83"}),
    (p6:Paciente{nP:"Esteban",aPat:"Oñoro",aMat:"Juarez",tel:2852043424,fNac:date("1979-08-11"),correo:null,sexo:"H",nss:39970821185,curp:"SADE811224MPLTVE69"}),
    (p7:Paciente{nP:"Xavier",aPat:"Saucedo",aMat:"Anayansi",tel:7023395293,fNac:date("1983-09-09"),correo:null,sexo:"H",nss:57871379077,curp:"XTYB891023MQTNLR57"}),
    (p8:Paciente{nP:"Sofía",aPat:"Cortiz",aMat:"Dominguez",tel:4720463949,fNac:date("1984-02-12"),correo:"sofiacortizd@gmail.com",sexo:"M",nss:38032627641,curp:"VBDZ480205MCSZOB55"}),
    (p9:Paciente{nP:"Ximena",aPat:"Trucha",aMat:"Cabrebra",tel:2208658378,fNac:date("1991-03-21"),correo:"ximetruchac@gmail.com",sexo:"M",nss:81506782357,curp:"DIRJ610914HGTFKH93"}),
    (p10:Paciente{nP:"Simon",aPat:"Ortuño",aMat:"Medrano",tel:7888165216,fNac:date("1991-07-15"),correo:null,sexo:"H",nss:88075030512,curp:"ZWUX820517MGRVHD14"}),
    (p11:Paciente{nP:"Tito",aPat:"Fuentes",aMat:"Zamora",tel:1957439418,fNac:date("1992-01-13"),correo:"titofuentesz@gmail.com",sexo:"H",nss:85145513537,curp:"GTQD820716HCHLYO62"}),
    (p12:Paciente{nP:"Fernando",aPat:"Corral",aMat:"Chavez",tel:7792050731,fNac:date("1992-06-30"),correo:"fernandocorralc@gmail.com",sexo:"H",nss:43245787583,curp:"VNIA180125MPLZFZ59"}),
    (p13:Paciente{nP:"Knives",aPat:"Chaou",aMat:"Wrong",tel:5307593769,fNac:date("1992-07-01"),correo:"kniveschauw@gmail.com",sexo:"M",nss:74933179601,curp:"TMOE901215MMCBDL25"}),
    (p14:Paciente{nP:"Edgar",aPat:"Wright",aMat:"Prudente",tel:8526768010,fNac:date("1993-02-23"),correo:"edgarwrightp@gmail.com",sexo:"H",nss:36949911112,curp:"QYCQ960325HQRNEW99"}),
    (p15:Paciente{nP:"Gabriela",aPat:"Sariñana",aMat:"Tulipan",tel:5910459187,fNac:date("1993-03-27"),correo:"gabrielasariñanat@gmail.com",sexo:"M",nss:76755356355,curp:"KZEA560501MOCATW84"}),
    (p16:Paciente{nP:"Carolina",aPat:"Corral",aMat:"Mongchan",tel:8973966016,fNac:date("1994-11-13"),correo:"carolinacorralm@gmail.com",sexo:"M",nss:53284248708,curp:"PSKU201124MTSZDM91"}),
    (p17:Paciente{nP:"Iliana",aPat:"Gonzalez",aMat:"Cruz",tel:8764685439,fNac:date("1980-02-20"),correo:"ilianagonzalezc@gmail.com",sexo:"M",nss:19405663957,curp:"CDFZ631213HHGTTJ51"}),
    (p18:Paciente{nP:"Viviana",aPat:"Kiriko",aMat:"Wilson",tel:4025984951,fNac:date("1981-04-14"),correo:null,sexo:"M",nss:14432289102,curp:"CXJB420110HMCMWR30"}),
    (p19:Paciente{nP:"Luz Elena",aPat:"Jurado",aMat:"García",tel:5460442182,fNac:date("1979-03-03"),correo:null,sexo:"M",nss:82915103463,curp:"KVHA740219MSPZQV60"}),
    (p20:Paciente{nP:"Tartaglia",aPat:"Childe",aMat:"Millet",tel:9072492668,fNac:date("1983-03-30"),correo:null,sexo:"H",nss:99422662018,curp:"CVJB490928MVZUIY25"}),
    (p21:Paciente{nP:"Alejandra",aPat:"Cohen",aMat:"Sanchez",tel:7429747005,fNac:date("1997-07-07"),correo:null,sexo:"M",nss:16719494394,curp:"ZNRL840514MMSDCB29"}),
    (p22:Paciente{nP:"Gonzalo",aPat:"Vega",aMat:"Gil",tel:8544264849,fNac:date("1999-09-09"),correo:"gonzalovegag@gmail.com",sexo:"H",nss:48627416726,curp:"LCED940325HVZKVH16"}),
    (p23:Paciente{nP:"Benjamin",aPat:"Casillas",aMat:"Saiz",tel:9589026807,fNac:date("2000-01-10"),correo:"benjamincasillass@gmail.com",sexo:"H",nss:11766223242,curp:"UFIU871224HQTOQW12"}),
    (p24:Paciente{nP:"Carlos",aPat:"Méndez",aMat:"Cortés",tel:6108903799,fNac:date("2001-10-01"),correo:null,sexo:"H",nss:66994158487,curp:"DSQW420920HCCGMV59"}),
    (p25:Paciente{nP:"Maria",aPat:"Aguirre",aMat:"Cano",tel:4493045831,fNac:date("2002-02-20"),correo:"mariaaguirrec@gmail.com",sexo:"M",nss:98410427823,curp:"HKAC630707HTLEPJ90"}),
    (p26:Paciente{nP:"Marcela",aPat:"Braun",aMat:"Guevara",tel:8081535824,fNac:date("2003-03-03"),correo:"marcelabraung@gmail.com",sexo:"M",nss:17814411464,curp:"BYQM490410HTCZBK64"}),
    (p27:Paciente{nP:"Paulina",aPat:"Goméz",aMat:"Laso",tel:3897189379,fNac:date("2004-04-04"),correo:"paulinagomezl@gmail.com",sexo:"M",nss:12688293167,curp:"CIXX140323MDGVTT89"}),
    (p28:Paciente{nP:"Irma",aPat:"Beatriz",aMat:"Pardo",tel:8241880347,fNac:date("2005-05-05"),correo:"irmabeatrizpardo@gmail.com",sexo:"M",nss:66223473241,curp:"TXYY261020MSPRCF93"}),
    (p29:Paciente{nP:"Antonio",aPat:"Casas",aMat:"Zúñiga",tel:2971576230,fNac:date("2006-06-06"),correo:null,sexo:"H",nss:57162679314,curp:"SUUT470428HSPAHN34"}),
    (p30:Paciente{nP:"Melina",aPat:"Bernal",aMat:"Sánchez",tel:9216933594,fNac:date("2007-07-07"),correo:"melinabernals@gmail.com",sexo:"M",nss:16754595547,curp:"HWXM301111MSLPFF55"})

// Creación de Citas

CREATE (:Cita {folio: 1, motivo: "Consulta médica", fechaHoraElaboracion: datetime('2010-05-20T18:45:00'), estatus: "Programada"});
CREATE (:Cita {folio: 2, motivo: "Dentista", fechaHoraElaboracion: datetime('2009-11-22T15:30:00'), estatus: "Programada"});
CREATE (:Cita {folio: 3, motivo: "dentista", fechaHoraElaboracion: datetime('2010-07-14T10:15:00'), estatus: "Programada"});
CREATE (:Cita {folio: 4, motivo: "Consulta médica", fechaHoraElaboracion: datetime('2008-09-30T21:00:00'), estatus: "Programada"});
CREATE (:Cita {folio: 5, motivo: "Examen médico", fechaHoraElaboracion: datetime('2011-03-01T08:30:00'), estatus: "Programada"});
CREATE (:Cita {folio: 6, motivo: "Cita con el terapeuta", fechaHoraElaboracion: datetime('2012-08-05T11:45:00'), estatus: "Programada"});
CREATE (:Cita {folio: 7, motivo: "dentista", fechaHoraElaboracion: datetime('2010-10-12T17:15:00'), estatus: "Programada"});
CREATE (:Cita {folio: 8, motivo: "Cita familiar", fechaHoraElaboracion: datetime('2009-03-19T14:30:00'), estatus: "Programada"});
CREATE (:Cita {folio: 9, motivo: "Cita con el psicólogo", fechaHoraElaboracion: datetime('2011-07-07T12:00:00'), estatus: "Programada"});
CREATE (:Cita {folio: 10, motivo: "Cita con el terapeuta", fechaHoraElaboracion: datetime('2012-05-10T09:15:00'), estatus: "Programada"});
CREATE (:Cita {folio: 11, motivo: "Fractura", fechaHoraElaboracion: datetime('2011-08-18T14:30:00'), estatus: "Programada"});
CREATE (:Cita {folio: 12, motivo: "Cita médica de seguimiento", fechaHoraElaboracion: datetime('2010-02-25T10:00:00'), estatus: "Programada"});
CREATE (:Cita {folio: 13, motivo: "Entrega de informe", fechaHoraElaboracion: datetime('2008-12-10T16:15:00'), estatus: "Programada"});
CREATE (:Cita {folio: 14, motivo: "Dentista", fechaHoraElaboracion: datetime('2012-01-02T09:45:00'), estatus: "Programada"});
CREATE (:Cita {folio: 15, motivo: "Dolor de garganta", fechaHoraElaboracion: datetime('2012-09-13T14:00:00'), estatus: "Programada"});
CREATE (:Cita {folio: 16, motivo: "Fractura", fechaHoraElaboracion: datetime('2008-08-28T10:30:00'), estatus: "Programada"});
CREATE (:Cita {folio: 17, motivo: "Dolor de estomago", fechaHoraElaboracion: datetime('2011-12-24T17:00:00'), estatus: "Programada"});
CREATE (:Cita {folio: 18, motivo: "Cita con el terapeuta", fechaHoraElaboracion: datetime('2007-08-09T13:45:00'), estatus: "Programada"});
CREATE (:Cita {folio: 19, motivo: "Fractura", fechaHoraElaboracion: datetime('2010-11-30T16:00:00'), estatus: "Programada"});
CREATE (:Cita {folio: 20, motivo: "Consulta psicológica", fechaHoraElaboracion: datetime('2012-06-28T08:15:00'), estatus: "Programada"});
CREATE (:Cita {folio: 21, motivo: "Cita familiar", fechaHoraElaboracion: datetime('2008-12-03T14:30:00'), estatus: "Programada"});
CREATE (:Cita {folio: 22, motivo: "Cita familiar", fechaHoraElaboracion: datetime('2011-04-16T09:00:00'), estatus: "Programada"});
CREATE (:Cita {folio: 23, motivo: "Cita familiar", fechaHoraElaboracion: datetime('2009-09-21T11:15:00'), estatus: "Programada"});
CREATE (:Cita {folio: 24, motivo: "Dentista", fechaHoraElaboracion: datetime('2012-10-07T15:45:00'), estatus: "Programada"});
CREATE (:Cita {folio: 25, motivo: "Cita con el nutricionista", fechaHoraElaboracion: datetime('2008-05-14T08:00:00'), estatus: "Programada"});
CREATE (:Cita {folio: 26, motivo: "Cita con el nutricionista", fechaHoraElaboracion: datetime('2011-01-29T13:30:00'), estatus: "Programada"});
CREATE (:Cita {folio: 27, motivo: "Cita familiar", fechaHoraElaboracion: datetime('2009-06-07T10:45:00'), estatus: "Programada"});
CREATE (:Cita {folio: 28, motivo: "Dentista", fechaHoraElaboracion: datetime('2010-04-05T14:15:00'), estatus: "Programada"});
CREATE (:Cita {folio: 29, motivo: "Fractura", fechaHoraElaboracion: datetime('2012-07-19T09:30:00'), estatus: "Programada"});
CREATE (:Cita {folio: 30, motivo: "Quemadura", fechaHoraElaboracion: datetime('2008-09-09T12:45:00'), estatus: "Programada"});

// Creación de Expedientes

CREATE (:Expediente {numExp: 1, fCreacion: datetime('2010-05-20T18:47:00'), estatura: 175.5, pesoKG: 70.3, tipoSangre: "A+"});
CREATE (:Expediente {numExp: 2, fCreacion: datetime('2009-11-22T15:32:00'), estatura: 162.0, pesoKG: 55.8, tipoSangre: "B-"});
CREATE (:Expediente {numExp: 3, fCreacion: datetime('2010-07-14T10:18:00'), estatura: 180.2, pesoKG: 80.1, tipoSangre: "O+"});
CREATE (:Expediente {numExp: 4, fCreacion: datetime('2008-09-30T21:04:00'), estatura: 170.7, pesoKG: 68.5, tipoSangre: "AB+"});
CREATE (:Expediente {numExp: 5, fCreacion: datetime('2011-03-01T08:33:00'), estatura: 160.9, pesoKG: 52.6, tipoSangre: "A-"});
CREATE (:Expediente {numExp: 6, fCreacion: datetime('2012-08-05T11:49:00'), estatura: 178.0, pesoKG: 75.9, tipoSangre: "B+"});
CREATE (:Expediente {numExp: 7, fCreacion: datetime('2010-10-12T17:18:00'), estatura: 163.5, pesoKG: 58.7, tipoSangre: "O-"});
CREATE (:Expediente {numExp: 8, fCreacion: datetime('2009-03-19T14:32:00'), estatura: 172.3, pesoKG: 71.8, tipoSangre: "A+"});
CREATE (:Expediente {numExp: 9, fCreacion: datetime('2011-07-07T12:03:00'), estatura: 176.8, pesoKG: 69.2, tipoSangre: "B-"});
CREATE (:Expediente {numExp: 10, fCreacion: datetime('2012-05-10T09:18:00'), estatura: 165.2, pesoKG: 56.4, tipoSangre: "O+"});
CREATE (:Expediente {numExp: 11, fCreacion: datetime('2011-08-18T14:33:00'), estatura: 168.4, pesoKG: 63.7, tipoSangre: "A-"});
CREATE (:Expediente {numExp: 12, fCreacion: datetime('2010-02-25T10:05:00'), estatura: 175.1, pesoKG: 72.4, tipoSangre: "B+"});
CREATE (:Expediente {numExp: 13, fCreacion: datetime('2008-12-10T16:18:00'), estatura: 167.8, pesoKG: 61.2, tipoSangre: "O-"});
CREATE (:Expediente {numExp: 14, fCreacion: datetime('2012-01-02T09:48:00'), estatura: 182.3, pesoKG: 79.6, tipoSangre: "AB+"});
CREATE (:Expediente {numExp: 15, fCreacion: datetime('2012-09-13T14:03:00'), estatura: 159.6, pesoKG: 54.1, tipoSangre: "A+"});
CREATE (:Expediente {numExp: 16, fCreacion: datetime('2008-08-28T10:34:00'), estatura: 176.7, pesoKG: 68.9, tipoSangre: "B-"});
CREATE (:Expediente {numExp: 17, fCreacion: datetime('2011-12-24T17:04:00'), estatura: 170.5, pesoKG: 70.0, tipoSangre: "O+"});
CREATE (:Expediente {numExp: 18, fCreacion: datetime('2007-08-09T13:48:00'), estatura: 163.9, pesoKG: 59.8, tipoSangre: "AB-"});
CREATE (:Expediente {numExp: 19, fCreacion: datetime('2010-11-30T16:04:00'), estatura: 178.8, pesoKG: 76.3, tipoSangre: "A-"});
CREATE (:Expediente {numExp: 20, fCreacion: datetime('2012-06-28T08:19:00'), estatura: 166.0, pesoKG: 62.5, tipoSangre: "B+"});
CREATE (:Expediente {numExp: 21, fCreacion: datetime('2008-12-03T14:32:00'), estatura: 172.7, pesoKG: 68.7, tipoSangre: "O+"});
CREATE (:Expediente {numExp: 22, fCreacion: datetime('2011-04-16T09:05:00'), estatura: 167.5, pesoKG: 63.2, tipoSangre: "A-"});
CREATE (:Expediente {numExp: 23, fCreacion: datetime('2009-09-21T11:20:00'), estatura: 180.0, pesoKG: 75.0, tipoSangre: "B+"});
CREATE (:Expediente {numExp: 24, fCreacion: datetime('2012-10-07T15:50:00'), estatura: 164.8, pesoKG: 60.5, tipoSangre: "AB-"});
CREATE (:Expediente {numExp: 25, fCreacion: datetime('2008-05-14T08:04:00'), estatura: 169.3, pesoKG: 66.4, tipoSangre: "A+"});
CREATE (:Expediente {numExp: 26, fCreacion: datetime('2011-01-29T13:35:00'), estatura: 175.4, pesoKG: 70.9, tipoSangre: "O-"});
CREATE (:Expediente {numExp: 27, fCreacion: datetime('2009-06-07T10:50:00'), estatura: 163.2, pesoKG: 57.8, tipoSangre: "B-"});
CREATE (:Expediente {numExp: 28, fCreacion: datetime('2010-04-05T14:20:00'), estatura: 179.1, pesoKG: 73.6, tipoSangre: "A+"});
CREATE (:Expediente {numExp: 29, fCreacion: datetime('2012-07-19T09:35:00'), estatura: 171.6, pesoKG: 69.3, tipoSangre: "B+"});
CREATE (:Expediente {numExp: 30, fCreacion: datetime('2008-09-09T12:50:00'), estatura: 166.7, pesoKG: 62.7, tipoSangre: "O+"});

// Creación de Casos

CREATE (c1:Caso {nombre: "Diabetes", atamiento: "Insulina"});
CREATE (c2:Caso {nombre: "Hipertensión", tratamiento: "Antihipertensivos"});
CREATE (c3:Caso {nombre: "Artritis", ratamiento: "Antiinflamatorios"});
CREATE (c4:Caso {nombre: "Asma", tratamiento: "Inhaladores"});
CREATE (c5:Caso {nombre: "Depresión", tratamiento: "Antidepresivos"});
CREATE (c6:Caso {nombre: "Cáncer de Mama", tratamiento: "Quimioterapia"});
CREATE (c7:Caso {nombre: "EPOC", fDiagnostico: tratamiento: "Broncodilatadores"});
CREATE (c8:Caso {nombre: "Alzheimer", tratamiento: "Medicamentos específicos"});
CREATE (c9:Caso {nombre: "Dolor de Espalda", tratamiento: "Terapia Física"});
CREATE (c10:Caso {nombre: "Migraña", tratamiento: "Analgésicos"});
CREATE (c11:Caso {nombre: "Gripe", tratamiento: "Antivirales"});
CREATE (c12:Caso {nombre: "Osteoporosis", tratamiento: "Suplementos de Calcio"});
CREATE (c13:Caso {nombre: "Enfermedad Renal Crónica", tratamiento: "Diálisis"});
CREATE (c14:Caso {nombre: "Hipotiroidismo", tratamiento: "Hormona Tiroidea"});
CREATE (c15:Caso {nombre: "Enfermedad de Parkinson", tratamiento: "Medicamentos Dopaminérgicos"});
CREATE (c16:Caso {nombre: "Síndrome del Intestino Irritable", tratamiento: "Cambios en la dieta"});
CREATE (c17:Caso {nombre: "Ansiedad", fDiagnostico: tratamiento: "Terapia Cognitivo-Conductual"});
CREATE (c18:Caso {nombre: "Esquizofrenia", tratamiento: "Antipsicóticos"});
CREATE (c19:Caso {nombre: "Enfermedad de Crohn", tratamiento: "Antiinflamatorios"});
CREATE (c20:Caso {nombre: "Alergia al Polen", tratamiento: "Antihistamínicos"});
CREATE (c21:Caso {nombre: "Hipopotasemia", tratamiento: "Suplemento de Potasio"});
CREATE (c22:Caso {nombre: "Enfermedad de Lyme", tratamiento: "Antibióticos"});
CREATE (c23:Caso {nombre: "Síndrome de Down", tratamiento: "Terapia de Estimulación"});
CREATE (c4:Caso {nombre: "Fibromialgia", tratamiento: "Analgesia y Terapia Física"});
CREATE (c25:Caso {nombre: "Epilepsia", tratamiento: "Antiepilépticos"});
CREATE (c26:Caso {nombre: "Insuficiencia Cardíaca", tratamiento: "Inhibidores de la ECA"});
CREATE (c27:Caso {nombre: "Anemia", tratamiento: "Suplemento de Hierro"});
CREATE (c28:Caso {nombre: "Esclerosis Múltiple", tratamiento: "Inmunomoduladores"});
CREATE (c29:Caso {nombre: "Enfermedad de Huntington", tratamiento: "Terapia de Soporte"});
CREATE (c30:Caso {nombre: "Gastritis", tratamiento: "Antiácidos y Cambios en la Dieta"});

// Creación (doctor)-[:atiende]->(cita)

MATCH (d:Doctor), (c:Cita)
WHERE d.numCedula=  AND c.folio=
CREATE (d)-[a:Atiende]->(h)

// Creación (paciente)-[:TIENE]->(expediente)


