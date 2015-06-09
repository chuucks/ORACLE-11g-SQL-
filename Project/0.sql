----------------------------
--DCL
----------------------------

--Creacion de usuario
CREATE USER final
	IDENTIFIED BY final
;

--Asignación de permisos
GRANT
	CREATE SESSION,
	CREATE TABLE,
	CREATE SYNONYM,
	CREATE PROCEDURE,
	CREATE TRIGGER, 
	CREATE SEQUENCE, 
	SELECT ANY TABLE,
	INSERT ANY TABLE,
	UPDATE ANY TABLE
	TO final
;

--Permisos para la insercion a tablas
ALTER USER final QUOTA UNLIMITED ON USERS;
GRANT UNLIMITED TABLESPACE TO final;

--Comfirmación
COMMIT;

--Conexión como el usuario creado
CONN final / final