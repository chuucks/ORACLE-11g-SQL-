--Sentencias con los elementos básicos necesarioss para el lenguaje SQL

-----
--DDL
-----
--Tablas
CREATE TABLE <nombre_tabla> (
	<nombre_columna>
		<tipo_dato> [tamaño] 
		[NULL| NOT NULL]
		DEFAULT <valor_default> 
		CONSTRAINT <definicion_constraint>		

	CONSTRAINT 	<definicion_constraint>
);

--Constraints
CONSTRAINT <definicion_constraint>

	--Definición
	UNIQUE
	CHECK(<nombre_columna> [IN (<parametros>) | <validacion_aritmetica>])

	--Definicion sobre columnas
	PRIMARY KEY
	REFERENCES <nombre_tabla>(<nombre_columna>) [ON DELETE [NO ACTION | CASCADE | SET NULL]]
	
	--Definición sobre tabla	
	PRIMARY KEY(<nombre_columnas>)
	FOREIGN KEY(<nombre_columna>) REFERENCES <nombre_tabla>(<nombre_columna>) [ON DELETE [NO ACTION | CASCADE | SET NULL]]	

--Secuencias
CREATE SEQUENCE <nombre_secuencia>
	START WITH <valor_minimo+1>
	INCREMENT BY <incremento>
	[MAXVALUE <valor_maximo>|NOMAXVALUE] 
	[MINVALUE <valor_minimo>|NOMINVALUE]
	[CYCLE|NOCYCLE]
	[ORDER|NOORDER]
;

--Indices
CREATE [UNIQUE|BITMAP] INDEX <nombre_indice> ON <nombre_tabla> (<nombre_columna>);

--Vistas
CREATE VIEW <nombre_vista>(
	<nombre_columnas>)
	AS <query>
;

--Sinónimos
CREATE SYNONYM <nombre_synonymo> FOR <nombre_objeto>

-----
--DDL
-----
--Modificar tablas
ALTER TABLE <nombre_tabla> 
	ADD <nombre_columna> <definicion_columna>		
	|
	MODIFY <nombre_columna> <definicion_columna>
	|
	DROP COLUMN <nombre_columnas> [CASCADE CONSTRAINTS]
	|
	MODIFY CONSTRAINT <nombre_constraint> <definicion_constraint>
	|
	ADD [PRIMARY KEY(<nombre_columna>)|UNIQUE(<nombre_columna>)|CONSTRAINT<nombre_constraint><definicion_constraint>]
	|
	DROP [PRIMARY KEY|UNIQUE] <nombre_columna> [CASCADE]
	|
	RENAME TO <nuevo_nombre>
;

--Modificar objetos
ALTER INDEX <nombre_indice>
	RENAME TO <nuevo_nombre>
;

ALTER VIEW <nombre_vista>
	ADD CONSTRAINT <definicion_constraint>	
	|
	DROP [CONSTRAINT <nombre_constraint>|PRIMARY KEY]
;

ALTER SEQUENCE <nombre_secuencia>
	<definicion_secuencia>

--Eliminar objetos
DROP TABLE <nombre_tabla> [CASCADE CONSTRAINTS];

DROP INDEX <nombre_indice>;

DROP VIEW <nombre_vista> [CASCADE CONSTRAINTS];

DROP SEQUENCE <nombre_secuencia> [CASCADE];

-----
--DML
-----
--Insercion tablas
INSERT INTO <nombre_tabla>[(<nombre_columnas>)] [VALUES(<valor>|<expresion>|<query>|NULL|DEFAULT)|<sentencia_select>];

--Fechas
TO_DATE('1980/01/10 10:40:00','YYYY/MM/DD HH24:MI:SS')
TO_CHAR(<fecha>)
SYSDATE

--Mas/menos un día	
SYSDATE+1

--Eliminacion registros
DELETE FROM <nombre_tabla> [WHERE <predicado>];
TRUNCATE TABLE <nombre_tabla>;

-----
--DQL
-----
--Select
SELECT [DISTINCT] <nombre_columnas>|*|<query> [AS <alias>] 
FROM <nombre_tabla> [<alias>] WHERE <predicado> 
GROUP BY <nombre_columna> HAVING <predicado> 
ORDER BY <nombre_columnas> [ASC|DESC];

--Registros sin tabla
FROM DUAL;

--Alias de tablas
<alias>.<nombre_columna>

--Union
<sentencia_select> <where> <predicado_1>
UNION
<sentencia_select> <where> <predicado_2>

--Intersect
<sentencia_select> <where> <predicado_1>
INTERSECT
<sentencia_select> <where> <predicado_2>

--Minus
<sentencia_select> <where> <predicado_1>
MINUS
<sentencia_select> <where> <predicado_2>

--Product
<sentencia_select>
CROSS JOIN
<sentencia_select>

--Inner join
<sentencia_select> FROM <tablas> <alias> WHERE <condiciones>
<sentencia_select> FROM <tabla_1> [INNER|NATURAL] JOIN <tabla_2> [ON <condiciones>|USING <nombre_columnas>]

--Outer join
<sentencia_select> FROM <tablas> <alias> WHERE <condiciones>(+)
<sentencia_select> FROM <tabla_1> [LEFT|RIGHT|FULL] OUTER JOIN <tabla_2> [ON <condiciones>|USING <nombre_columnas>]

--Operadores lógicos
ALL(<parametros>)
<predicado> AND <predicado>
ANY(<parametros>) SOME(<parametros>)
BETWEEN <parametro> AND <parametro>
EXIST <query>
IN(<parametros>)
<nombre_columna> LIKE '[%][_][cadena'
NOT
OR
[IS NULL|IS NOT NULL]

--Funciones de agregación
COUNT(<parametro>)
MIN(<parametro>)
MAX(<parametro>)
AVG(<parametro>)

--Group by
SELECT <nombre_columnas>
FROM <nombre_tablas>
[WHERE <predicado>]
[GROUP BY <nombre_columnas>]
[HAVING <predicado>]
[ORDER BY <nombre_columnas> [ASC|DESC]]

--Select subqueries
SELECT <nombre_columnas>|*|<query> [AS <alias>], (<sentencia_select>) FROM <nombre_tabla> [<alias>] WHERE <predicado>

--From subqueries
SELECT <nombre_columnas>|*|<query> [AS <alias>] FROM <nombre_tabla> [<alias>], (<sentencia_select>) WHERE <predicado>

--Where subqueries 
SELECT <nombre_columnas>|*|<query> [AS <alias>] FROM <nombre_tabla> [<alias>] WHERE <predicado> AND (<sentencia_select>)

--Correlated subqueries
--Igual que los where subqueries pero el resultado del querie interno depende del querie externo
