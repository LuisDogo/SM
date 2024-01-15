//  Creación de Hospitales
CREATE
    (h1:HOSPITAL{nombre:"Hospital general de Ticoman",direccion:"Cerrada Plan de San Luis 7, La Purísima Ticoman, Gustavo A. Madero, 07330 Ciudad de México, CDMX",capacidad:30}),
    (h2:HOSPITAL{nombre:"Hospital general de Cuautepec",direccion:"La Pastora, Gustavo A. Madero, 07290 Ciudad de México, CDMX",capacidad:60}),
    (h3:HOSPITAL{nombre:"Hospital Santiago Apóstol",direccion:"Av Cuautepec 32, Jorge Negrete, Gustavo A. Madero, 07280 Ciudad de México, CDMX",capacidad:15})

// Creación de Doctores

//la T en datetime separa la fecha de la hora

CREATE
    (d1:DOCTOR{numCedula:55719623,nombre:"Lisa",aPat:"Minci",aMat:"Mondstadt",rfc:"MIML850609PJ0",especialidad:"Cardiología"}),
    (d2:DOCTOR{numCedula:24960302,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d3:DOCTOR{numCedula:35002950,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d4:DOCTOR{numCedula:66329240,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d5:DOCTOR{numCedula:49883794,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d6:DOCTOR{numCedula:57343259,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d7:DOCTOR{numCedula:81048343,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d8:DOCTOR{numCedula:38688973,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d9:DOCTOR{numCedula:80873591,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d10:DOCTOR{numCedula:54200612,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d11:DOCTOR{numCedula:51469913,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d12:DOCTOR{numCedula:54430105,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d13:DOCTOR{numCedula:46978917,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d14:DOCTOR{numCedula:38081146,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d15:DOCTOR{numCedula:97263006,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d16:DOCTOR{numCedula:81146077,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d17:DOCTOR{numCedula:50960404,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d18:DOCTOR{numCedula:29556273,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d19:DOCTOR{numCedula:68481172,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d20:DOCTOR{numCedula:11976017,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d21:DOCTOR{numCedula:80649614,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d22:DOCTOR{numCedula:51397923,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d23:DOCTOR{numCedula:25780249,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d24:DOCTOR{numCedula:12980042,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d25:DOCTOR{numCedula:28275468,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d26:DOCTOR{numCedula:27743062,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d27:DOCTOR{numCedula:19704219,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d28:DOCTOR{numCedula:44191013,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d29:DOCTOR{numCedula:65311189,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),
    (d30:DOCTOR{numCedula:42926549,nombre:"",aPat:"",aMat:"",rfc:"",especialidad:""}),

// Afiliar DOCTOR a HOSPITAL