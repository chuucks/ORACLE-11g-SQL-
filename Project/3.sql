-----
--SQL
-----

--1. Natural Join
---------------------------------------------------------------------------------------
--Seleccionar la información del cliente y sus polizas con sus respectivas cotizaciones
---------------------------------------------------------------------------------------
--Sintaxis anterior
SELECT NOMBRE, APELLIDO_PATERNO, RFC, CODIGO_POSTAL, FOLIO, NUMERO_PLACAS, NUMERO_SERIE, COSTO AS COSTO_POLIZA FROM CLIENTE c, POLIZA p, COTIZACION t 
WHERE c.CLIENTE_ID=p.CLIENTE_ID AND p.CLIENTE_ID=t.CLIENTE_ID;
--Sintaxis estandar
SELECT NOMBRE, APELLIDO_PATERNO, RFC, CODIGO_POSTAL, FOLIO, NUMERO_PLACAS, NUMERO_SERIE, COSTO FROM CLIENTE NATURAL JOIN POLIZA NATURAL JOIN COTIZACION;

--2. Inner Join
----------------------------------------------------------
--Seleccionar el carro de todos y cada uno de los clientes
----------------------------------------------------------
--Sintáxis anterior
SELECT NOMBRE, APELLIDO_PATERNO, ma.DESCRIPCION AS MARCA, mo.DESCRIPCION AS MODELO FROM CLIENTE c, COTIZACION p, MARCA_AUTO ma, MODELO_AUTO mo WHERE c.CLIENTE_ID=p.CLIENTE_ID AND p.MARCA_AUTO_ID=ma.MARCA_AUTO_ID AND mo.MODELO_AUTO_ID=p.MODELO_AUTO_ID;
-------------------------------------------------------------
--Seleccionar los datos del cliente y los datos de su tarjeta 
-------------------------------------------------------------
--Sintaxis estandar
SELECT NOMBRE, APELLIDO_PATERNO, NUMERO_TARJETA, NUMERO_SEGURIDAD FROM CLIENTE INNER JOIN TARJETA_CLIENTE USING(TARJETA_CLIENTE_ID);


--3. Outer Join
-------------------------------------------------------------------------------------------------------------
--Seleccionar la información del cliente y sus siniestros, incluyendo a los clientes que no tengan siniestros
-------------------------------------------------------------------------------------------------------------
--Sintaxis anterior
SELECT NOMBRE, APELLIDO_PATERNO, FOLIO, DESCRIPCION_DANIO, DESCRIPCION FROM CLIENTE c, POLIZA p, SINIESTRO s, ESTADO_SINIESTRO e 
WHERE c.CLIENTE_ID=p.CLIENTE_ID AND p.POLIZA_ID(+)=s.POLIZA_ID AND s.ESTADO_SINIESTRO_ID=e.ESTADO_SINIESTRO_ID;
--Sintaxis estandar
SELECT NOMBRE, APELLIDO_PATERNO, FOLIO, DESCRIPCION_DANIO, DESCRIPCION FROM CLIENTE c INNER JOIN POLIZA USING(CLIENTE_ID) RIGHT OUTER JOIN SINIESTRO USING(POLIZA_ID) 
INNER JOIN ESTADO_SINIESTRO USING(ESTADO_SINIESTRO_ID);

--4. Funciónes de agregación
---------------------------------------------------------------------------
--Seleccionar la información del cliente que tenga la poliza mas cara (MAX)
---------------------------------------------------------------------------
SELECT NOMBRE, APELLIDO_PATERNO, FOLIO, COSTO FROM CLIENTE c, POLIZA p, COTIZACION t WHERE c.CLIENTE_ID=p.POLIZA_ID AND c.CLIENTE_ID=t.CLIENTE_ID AND COSTO=(SELECT MAX(COSTO) FROM COTIZACION);
------------------------------------------------------------------------------
---Seleccionar la información del cliente que tenga la poliza mas barata (MIN)
------------------------------------------------------------------------------
SELECT NOMBRE, APELLIDO_PATERNO, FOLIO, COSTO FROM CLIENTE c, POLIZA p, COTIZACION t WHERE c.CLIENTE_ID=p.POLIZA_ID AND c.CLIENTE_ID=t.CLIENTE_ID AND COSTO=(SELECT MIN(COSTO) FROM COTIZACION)

--5. Subqueries
-----------------------------------------------------------------------------------------------------------------
--Mostrar los datos del cliente que tiene siniestros sociales y contar las personas afectadas de dicho siniestro
-----------------------------------------------------------------------------------------------------------------
SElECT cliente.NOMBRE, APELLIDO_PATERNO, FOLIO, hospital.NOMBRE AS HOSPITAL, consulta.PERSONAS AS NUMERO_AFECTADOS FROM CLIENTE cliente, POLIZA poliza, SINIESTRO siniestro, HOSPITAL hospital, 
(SELECT SINIESTRO_ID, COUNT(PERSONA_ID) AS PERSONAS FROM PERSONA GROUP BY SINIESTRO_ID) consulta
WHERE cliente.CLIENTE_ID=poliza.POLIZA_ID AND poliza.POLIZA_ID=siniestro.SINIESTRO_ID AND  siniestro.SINIESTRO_ID=hospital.HOSPITAL_ID AND ES_SOCIAL='T'
GROUP BY cliente.NOMBRE, APELLIDO_PATERNO, FOLIO, hospital.NOMBRE, consulta.PERSONAS;

-------------------------------------------------------------------------------------------------
--Mostrar los datos del cliente que tiene siniestros de colicion y contar los carros involucrados
-------------------------------------------------------------------------------------------------
SELECT cliente.NOMBRE, APELLIDO_PATERNO, FOLIO, colision.REPORTE_VIAL, consulta.AUTOS_INVOLUCRADOS
FROM CLIENTE cliente, POLIZA poliza, SINIESTRO siniestro, SINIESTRO_COLISION colision,
(SELECT SINIESTRO_ID, COUNT(SINIESTRO_ID) AS AUTOS_INVOLUCRADOS FROM AUTO_INVOLUCRADO GROUP BY SINIESTRO_ID) consulta
WHERE cliente.CLIENTE_ID=poliza.POLIZA_ID AND poliza.POLIZA_ID=siniestro.SINIESTRO_ID AND ES_COLISION='T'
GROUP BY cliente.NOMBRE, APELLIDO_PATERNO, FOLIO, colision.REPORTE_VIAL, consulta.AUTOS_INVOLUCRADOS;