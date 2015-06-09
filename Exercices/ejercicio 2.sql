--0
CREATE TABLE AUTOR(
	AUTOR_ID NUMBER(10,0) CONSTRAINT autor_pk PRIMARY KEY,
	NOMBRE VARCHAR2(30) NOT NULL
);

	CREATE TABLE ARTICULO(
		ARTICULO_ID NUMBER(10,0) CONSTRAINT articulo_id PRIMARY KEY,
		NOMBRE VARCHAR2(30) NOT NULL,
		DESCRIPCION VARCHAR2(30) NOT NULL,
		TIPO VARCHAR2(1) NOT NULL
	);

--Inciso A
CREATE TABLE ARTICULO_AUTOR(
	AUTOR_ID NUMERIC(10,0) NOT NULL CONSTRAINT autor_articulo_fk REFERENCES AUTOR(AUTOR_ID),
	ARTICULO_ID NUMERIC(10,0) NOT NULL CONSTRAINT articulo_autor_fk REFERENCES ARTICULO(ARTICULO_ID),
	CALIFICACION NUMERIC(3,1) NOT NULL CONSTRAINT calificacion_check CHECK(CALIFICACION>=5.0 AND CALIFICACION <=10.0),
	CONSTRAINT articulo_autor_pk PRIMARY KEY(AUTOR_ID, ARTICULO_ID)
);

CREATE TABLE REPORTAJE(
	ARTICULO_ID NUMERIC(10,0) NOT NULL CONSTRAINT reportaje_fk REFERENCES ARTICULO(ARTICULO_ID),
	CLAVE_AUTORIZACION VARCHAR2(19) NOT NULL,
	CONSTRAINT articulo_reportaje_pk PRIMARY KEY(ARTICULO_ID)
);

CREATE TABLE DOCUMENTAL(
	ARTICULO_ID NUMERIC(10,0) NOT NULL CONSTRAINT documental_fk REFERENCES ARTICULO(ARTICULO_ID),
	DOC_RECOMENDADO_ID NUMERIC(10,0) CONSTRAINT documento_fk REFERENCES DOCUMENTAL(ARTICULO_ID),
	LUGAR VARCHAR2(30) NOT NULL,
	CONSTRAINT articulo_documental_pk PRIMARY KEY(ARTICULO_ID),
	CONSTRAINT docuemento_unique UNIQUE(DOCUMENTO_RECOMENDADO_ID)
);

COMMIT;

--Inciso B
Existen 6 indices de tipo UNIQUE que se encuentran en las llaves foraneas y primarias más un indice de tipo UNIQUE en la tabla documental 
para la columna doc_recomendado_id, en total son 7 indices de tipo unique

--Inciso C
Solo se necesita un secuenciador, que sera el de la llave primaria de la tabla articulo ya que las demás llaves primarias y foraneas 
dependeran de esta secuencia también y de el id de la llave primaria de autor pero esta tabla es un catalogo precargado