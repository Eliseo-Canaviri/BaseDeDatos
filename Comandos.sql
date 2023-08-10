 Exame de 2do Parcial 
 /*Canaviri*/
           comandos sql;
mysql -u root // para entrar a MariaDB
1.- create database nombre_base_datos;
2.- use nombre_base_datos;
3.- create table nombre_de_tabla;
4.- describe nombre_de_tabla;  // para ver atributos de la tabla 
5.- select * from editorial; //pra ver si hay datos registrados ne la tabla
6.- INSERT INTO editorial (cod_editorial, nombre, direccion, telefono) VALUES ('123', 'Elite', 'casa', 12345678);
7.- INSERT INTO editorial VALUES ('1235', 'Elite', 'casa', 12345678);
8.- DROP TABLE nombre_de_tabla; // para eliminar tabla
9.- DELETE FROM editorial WHERE cod_editorial = el_codigo/el_id; //para elimar dato de la tabla
	en cmd : poner la ruta cd C:\xampp\mysql\bin 
10.- mysqldump -h localhost -u root uno >C:\uno\usu.sql //para exportar
11.- mysql -h localhost -u root dos <C:\uno\usu.sql // para impor

creacion de base de datos de tecnologia 
    //tabla lector
	create TABLE lector(
    ci_lector varchar (15) PRIMARY KEY,
    nombres varchar (30) not null,
    paterno varchar (30) not null,
    materno varchar (30) not null,
    ocupacion varchar (30) not null,
    carrera varchar (30) not null,
    year_estudio int (30) not null);

	/// tabla editorial
	create TABLE editorial(
    cod_editorial char (20) PRIMARY KEY,
    nombre char(50),
    direccion char (50),
    telefono int (20));

	///// autor
	create TABLE autor(
    cod_autor char (20) PRIMARY KEY,
    nombre char(50) not null,
    paterno char(30) not null,
    materno char (50),
    email char (20)not null);

	//////tabla bibliotecario
	create TABLE bibliotecario(
    ci_biblitecario char (15) not null PRIMARY KEY ,
    nombres char(50) not null,
    paterno char(30) not null,
    materno char (50));

	/////// tabla especialidad
	create TABLE especialidad(
    cod_especialidad char (15) not null PRIMARY KEY ,
    nombres char(50) not null);
	
	////// tabla prestamo
	create TABLE prestamo(
    num_prestamo int (20) not null PRIMARY KEY ,
    fecha_prestamo date  not null,
    fecha_devolucion date  not null,
    observacion text  (90),
    ci_biblitecario char(15),
    ci_lector varchar (15),
    FOREIGN KEY(ci_biblitecario) REFERENCES bibliotecario(ci_biblitecario),
    FOREIGN KEY(ci_lector) REFERENCES lector(ci_lector));
	
	//// tabla lector
	create TABLE libros(
    cod_libro char (20) not null PRIMARY KEY ,
    pre_registro char   ,
    titulo text  (90)not null,
    paginas int (11) not null,
    num_prestamo int(15),
    cod_editorial char (20),
    cod_especialidad char (20),
    cod_autor char (20),
    FOREIGN KEY(num_prestamo) REFERENCES prestamo(num_prestamo),
    FOREIGN KEY(cod_editorial) REFERENCES editorial(cod_editorial),
	FOREIGN KEY(cod_especialidad) REFERENCES especialidad(cod_especialidad),
    FOREIGN KEY(cod_autor) REFERENCES autor(cod_autor));


