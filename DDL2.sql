--Tablas sin dependencias:
CREATE TABLE ESTATUS_VIAJE(
	ESTATUS_VIAJE_ID NUMBER(2,0) CONSTRAINT estatus_viaje_pk PRIMARY KEY,
	CLAVE VARCHAR2(20) NOT NULL,
	ACTIVO NUMBER(1,0) NOT NULL
);

CREATE TABLE LUGAR(
	LUGAR_ID NUMBER(10,0) CONSTRAINT lugar_pk PRIMARY KEY,
	NOMBRE VARCHAR2(100) NOT NULL,
	DESCRIPCION VARCHAR2(500)
);

CREATE TABLE PASAJERO(
	PASAJERO_ID NUMBER(10,0) CONSTRAINT pasajero_pk PRIMARY KEY,
	NOMBRE VARCHAR2(50) NOT NULL,
	APELLIDO_PATERNO VARCHAR2(50) NOT NULL,
	APELLIDO_MATERNO VARCHAR2(50),
	EDAD NUMBER(3,0),
	TELEFONO VARCHAR2(18), 
	NUM_IDENTIFICACION VARCHAR2(18) NOT NULL
);

CREATE TABLE MEDIO_TRANSPORTE(
	MEDIO_TRANSPORTE_ID NUMBER(10,0) CONSTRAINT medio_transporte_pk PRIMARY KEY,
	TIPO_MEDIO_TRANSPORTE CHAR(1) NOT NULL,
	CAPACIDAD NUMBER(3,0) NOT NULL,
	CLASE CHAR(1) NOT NULL
);

--Tablas con llaves foraneas:
CREATE TABLE HISTORICO_STATUS_VIAJE(
	HISTORICO_STATUS_VIAJE_ID NUMBER(10,0) CONSTRAINT historico_status_viaje_pk PRIMARY KEY,
	FECHA_STATUS DATE NOT NULL,
	VIAJE_ID NUMBER(10,0) NOT NULL CONSTRAINT viaje_historico_fk REFERENCES VIAJE(VIAJE_ID),
	ESTATUS_VIAJE_ID NUMBER(2,0) NOT NULL CONSTRAINT estatus_historico_fk REFERENCES ESTATUS_VIAJE(ESTATUS_VIAJE_ID)
);


CREATE TABLE VIAJE_DETALLE(
	VIAJE_DETALLE_ID NUMBER(18,0) CONSTRAINT viaje_detalle_pk PRIMARY KEY,
	NUMERO_ASIENTO VARCHAR2(3) NOT NULL,
	VIAJE_ID NUMBER(10,0) NOT NULL CONSTRAINT viaje_detalle_fk REFERENCES VIAJE(VIAJE_ID),
	PASAJERO_ID NUMBER(10,0) NOT NULL CONSTRAINT pasajero_detalle_fk REFERENCES  PASAJERO(PASAJERO_ID)
);

CREATE TABLE VIAJE(
	VIAJE_ID NUMBER(10,0) CONSTRAINT viaje_pk PRIMARY KEY,
	FECHA_SALIDA DATE NOT NULL,
	ORIGEN_ID NUMBER(10,0) NOT NULL CONSTRAINT origen_fk REFERENCES LUGAR(LUGAR_ID),
	DESTINO_ID NUMBER(10,0) NOT NULL CONSTRAINT destino_fk REFERENCES LUGAR(LUGAR_ID),
	MEDIO_TRANSPORTE_ID NUMBER(10,0) CONSTRAINT transporte_viaje_fk REFERENCES MEDIO_TRANSPORTE(MEDIO_TRANSPORTE_ID),
	ESTATUS_VIAJE_ID NUMBER(2,0) CONSTRAINT estatus_viaje_fk REFERENCES ESTATUS_VIAJE(ESTATUS_VIAJE_ID),
	FECHA_STATUS DATE NOT NULL
);

CREATE TABLE MEDIO_TERRESTRE(
	MEDIO_TRANSPORTE_ID NUMBER(10,0) CONSTRAINT medio_terrestre_pk PRIMARY KEY,
	MATRICULA NUMBER(5,0),
	LINEA_TERRESTRE VARCHAR2(100) NOT NULL,
	CONSTRAINT transporte_terrestre_fk FOREIGN KEY(MEDIO_TRANSPORTE_ID) REFERENCES MEDIO_TRANSPORTE(MEDIO_TRANSPORTE_ID)
);

CREATE TABLE MEDIO_AEREO(
	MEDIO_TRANSPORTE_ID NUMBER(10,0) CONSTRAINT medio_areo_pk PRIMARY KEY,
	AEROLINEA VARCHAR2(50) NOT NULL,
	NUMERO_AVION VARCHAR2(6) NOT NULL,
	CONSTRAINT transporte_aereo_fk FOREIGN KEY(MEDIO_TRANSPORTE_ID) REFERENCES MEDIO_TRANSPORTE(MEDIO_TRANSPORTE_ID)
);

ALTER TABLE MEDIO_TERRESTRE DROP CONSTRAINT transporte_terrestre_fk;
ALTER TABLE MEDIO_AEREO DROP CONSTRAINT transporte_aereo_fk;

ALTER TABLE MEDIO_TERRESTRE ADD CONSTRAINT transporte_terrestre_fk FOREIGN KEY (MEDIO_TRANSPORTE_ID) REFERENCES MEDIO_TRANSPORTE(MEDIO_TRANSPORTE_ID);
ALTER TABLE MEDIO_AEREO ADD CONSTRAINT transporte_aereo_fk FOREIGN KEY (MEDIO_TRANSPORTE_ID) REFERENCES MEDIO_TRANSPORTE(MEDIO_TRANSPORTE_ID);

--Secuencias
CREATE SEQUENCE VIAJE_DETALLE_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 20
MINVALUE 1
NOCYCLE;

CREATE SEQUENCE HISTORICO_STATUS_VIAJE_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 20
MINVALUE 1
NOCYCLE;

--Error:
ALTER TABLE ESTATUS_VIAJE
MODIFY ESTATUS_VIAJE_ID NUMBER(2,0);

--Commit:
COMMIT;