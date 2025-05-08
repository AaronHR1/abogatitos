SET NAMES 'UTF8MB4';
DROP DATABASE IF EXISTS abogatitos;
CREATE DATABASE IF NOT EXISTS abogatitos DEFAULT CHARACTER SET 'UTF8MB4';
USE abogatitos;

SHOW TABLES;



CREATE TABLE estado(
id_edo 			SMALLINT  AUTO_INCREMENT,
descripcion		VARCHAR(15) NOT NULL,
PRIMARY KEY (id_edo)
);

CREATE TABLE cliente(
dni 				VARCHAR(18) NOT NULL,
nombre 			VARCHAR(20) NOT NULL,
ap_mno 			VARCHAR(20),
ap_pno 			VARCHAR(20) NOT NULL,
correo 			VARCHAR(30) NOT NULL UNIQUE,
telefono 		VARCHAR(13) NOT NULL UNIQUE,
direccion 		VARCHAR(100) NOT NULL,
PRIMARY KEY (dni)
);

CREATE TABLE abogado(
cedula			VARCHAR(18) NOT NULL,
nombre			VARCHAR(20) NOT NULL,
ap_mno 			VARCHAR(20),
ap_pno 			VARCHAR(20) NOT NULL,
correo 			VARCHAR(30) NOT NULL UNIQUE,
telefono 		VARCHAR(13) NOT NULL UNIQUE,
direccion 		VARCHAR(100) NOT NULL,
PRIMARY KEY (cedula)
);

CREATE TABLE procurador(
cedula			VARCHAR(18) NOT NULL,
nombre			VARCHAR(20) NOT NULL,
ap_mno 			VARCHAR(20),
ap_pno 			VARCHAR(20) NOT NULL,
correo 			VARCHAR(30) NOT NULL UNIQUE,
telefono 		VARCHAR(13) NOT NULL UNIQUE,
direccion 		VARCHAR(100) NOT NULL,
PRIMARY KEY (cedula)
);

CREATE TABLE expediente(
no_ete 			VARCHAR(12) NOT NULL,
dni_cte 			VARCHAR(18) NOT NULL,
edo_actual		SMALLINT NOT NULL,
descripcion 	VARCHAR(100) NOT NULL,
cedula_ado		VARCHAR(18) NOT NULL,
cedula_pdor		VARCHAR(18) NOT NULL,
PRIMARY KEY (no_ete),
CONSTRAINT fk_EXPEDIENTE_CLIENTE FOREIGN KEY (dni_cte) REFERENCES cliente(dni),
CONSTRAINT fk_EXPEDIENTE_ESTADO FOREIGN KEY (edo_actual) REFERENCES estado(id_edo),
CONSTRAINT fk_EXPEDIENTE_ABOGADO FOREIGN KEY (cedula_ado) REFERENCES abogado(cedula),
CONSTRAINT fk_EXPEDIENTE_PROCURADOR FOREIGN KEY (cedula_pdor) REFERENCES procurador(cedula)
);

CREATE TABLE ete_edo(
id_edo 			SMALLINT,
no_ete			VARCHAR(12) NOT NULL,
fecha_inicio 	DATETIME NOT NULL,
fecha_fin 		DATETIME DEFAULT NULL,
PRIMARY KEY (id_edo,no_ete,fecha_inicio),
CONSTRAINT fk_ETE_EDO_ESTADO FOREIGN KEY(id_edo) REFERENCES estado(id_edo),
CONSTRAINT fk_ETE_EDO_EXPEDIENTE FOREIGN KEY(no_ete) REFERENCES expediente(no_ete)
);

CREATE TABLE ete_ado(
cedula 			VARCHAR(18),
no_ete			VARCHAR(12) NOT NULL,
fecha_inicio 	DATETIME NOT NULL,
fecha_fin 		DATETIME DEFAULT NULL,
PRIMARY KEY (cedula,no_ete,fecha_inicio),
CONSTRAINT fk_ETE_ADO_ABOGADO FOREIGN KEY(cedula) REFERENCES abogado(cedula),
CONSTRAINT fk_ETE_ADO_EXPEDIENTE FOREIGN KEY(no_ete) REFERENCES expediente(no_ete)
);

CREATE TABLE ete_pdor(
cedula			VARCHAR(18),
no_ete			VARCHAR(12) NOT NULL,
fecha_inicio 	DATETIME NOT NULL,
fecha_fin 		DATETIME DEFAULT NULL,
PRIMARY KEY (cedula,no_ete,fecha_inicio),
CONSTRAINT fk_ETE_PDOR_PROCURADOR FOREIGN KEY(cedula) REFERENCES procurador(cedula),
CONSTRAINT fk_ETE_PDOR_EXPEDIENTE FOREIGN KEY(no_ete) REFERENCES expediente(no_ete)
);
