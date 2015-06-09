-------------
--Procedure 1
-------------
create or replace PROCEDURE PROCEDURE_CLIENTE
( V_CLIENTE_ID IN NUMBER
, V_NOMBRE IN VARCHAR2
, V_AP_PAT IN VARCHAR2
, V_AP_MAT IN VARCHAR2
, V_RFC IN VARCHAR2
, V_EMAIL IN VARCHAR2
, V_DIRECCION IN VARCHAR2
) AS
BEGIN
  INSERT INTO CLIENTE(cliente_id, nombre, apellido_paterno, 
  apellido_materno, rfc, email, direccion)
  VALUES(v_cliente_id, v_nombre, v_ap_pat, v_ap_mat, v_rfc, v_email, v_direccion);
  commit;
END PROCEDURE_CLIENTE;

-------------
--Procedure 2
-------------
create or replace PROCEDURE PROCEDURE_COTIZACION
(V_ID IN NUMBER
, v_fecha_cotizacion IN DATE
, v_anio_auto IN VARCHAR2
, v_edad_inicial_conductor IN NUMBER
, v_edad_final_conductor IN NUMBER
, v_tipo_seguro_id IN NUMBER
, v_marca_autos_id IN NUMBER
, v_modelo_autos_id IN NUMBER
, v_estado_republica_id IN NUMBER
, V_codigo_postal IN VARCHAR2
) AS
BEGIN
  INSERT INTO cotizacion(cotizacion_id, fecha_cotizacion, anio_auto, 
  edad_inicial_conductor, edad_final_conductor, tipo_seguro_id, marca_auto_id, 
  modelo_auto_id, estado_republica_id, codigo_postal)
  VALUES(V_ID, TO_DATE(v_fecha_cotizacion,'DD/MM/YYYY'), v_anio_auto, v_edad_inicial_conductor, v_edad_final_conductor, v_tipo_seguro_id, 
  v_marca_autos_id, v_modelo_autos_id, v_estado_republica_id,v_codigo_postal);
  commit;
END PROCEDURE_COTIZACION;

-------------
--Procedure 3
-------------
create or replace PROCEDURE PROCEDURE_POLIZA
( V_POLIZA_ID IN NUMBER
, V_FOLIO IN VARCHAR2
, V_FECHA_HORA_INICIO IN DATE
, V_FECHA_FIN IN DATE
, V_NUMERO_PLACAS IN VARCHAR2
, V_NUMERO_SERIE IN VARCHAR2
, V_SINIESTROS_OCURRIDOS IN NUMBER
, V_CLIENTE_ID IN NUMBER
, V_POLIZA_ANTERIOR_ID IN NUMBER
) AS
BEGIN
  INSERT INTO poliza(poliza_id, folio, fecha_hora_inicio, fecha_fin, numero_placas, numero_serie, siniestros_ocurridos, cliente_id, poliza_anterior_id)
  VALUES(v_poliza_id, v_folio,TO_DATE(v_fecha_hora_inicio,'DD/MM/YYYY'), TO_DATE(v_fecha_fin,'DD/MM/YYYY'), v_numero_placas, v_numero_serie, v_siniestros_ocurridos, v_cliente_id, v_poliza_anterior_id);
  commit;
END PROCEDURE_POLIZA;

-------------
--Procedure 4
-------------
create or replace PROCEDURE PROCEDURE_TARJETA
( V_TARJETA_CLIENTE_ID IN NUMBER
, V_NUMERO_TARJETA IN VARCHAR2
, V_MES_EXPIRACION IN VARCHAR2
, V_ANIO_EXPIRACION IN VARCHAR2
, V_NUMERO_SEGURIDAD IN VARCHAR2
) AS
BEGIN
  INSERT INTO tarjeta_cliente(tarjeta_cliente_id, numero_tarjeta, mes_expiracion, anio_expiracion, numero_seguridad)
  VALUES(v_tarjeta_cliente_id, v_numero_tarjeta, v_mes_expiracion, v_anio_expiracion, v_numero_seguridad);
  commit;
END PROCEDURE_TARJETA;

-------------------------------------
--Script anonimo para proceso negocio
-------------------------------------
DECLARE
V_COTI_ID NUMBER(5,0);
V_PRECIO NUMBER(4,0) :=0;

--Variables para registrar cotizacion
v_fecha_cotizacion DATE := SYSDATE;
v_anio_auto VARCHAR2(4):= '&anio_auto';
v_edad_inicial_conductor NUMBER(3, 0):= &edad_inicial_conductor;
v_edad_final_conductor NUMBER(3, 0):= &edad_final_conductor;
v_tipo_seguro_id NUMBER(10, 0):= &tipo_seguro_id;
v_marca_autos_id NUMBER(10, 0) := &marca_autos_id;
v_modelo_autos_id NUMBER(10, 0) := &modelo_autos_id;
v_estado_republica_id NUMBER(10, 0) := &estado_republica_id;
V_codigo_postal varchar2(20) := &codigo_postal;

v_deseo_contratar VARCHAR2(1);
v_pagado VARCHAR2(1);

--Declaración del cursor
CURSOR infoEstados IS
SELECT ES.ESTADO_SINIESTRO_ID,ES.CLAVE,ES.DESCRIPCION
FROM estado_siniestro ES;
--variables del cursor
v_estado_siniestro_id ESTADO_SINIESTRO.ESTADO_SINIESTRO_ID%TYPE;
v_clave ESTADO_SINIESTRO.CLAVE%TYPE;
v_descripcion ESTADO_SINIESTRO.DESCRIPCION%TYPE;

--DECLARACION DE CURSOR 2
CURSOR infoMarcas IS
SELECT MA.DESCRIPCION, COUNT(S.SINIESTRO_ID) TOTAL_SINIESTROS, count(SM.siniestro_id) MATERIAL, COUNT(SS.siniestro_id) SOCIAL, COUNT(SC.siniestro_id) COLISION 
FROM marca_auto MA 
JOIN cotizacion C ON C.marca_auto_id = ma.marca_auto_id 
JOIN CLIENTE CL ON CL.cliente_id = c.cliente_id 
JOIN POLIZA P ON P.cliente_id = cl.cliente_id 
JOIN SINIESTRO S ON S.poliza_id = P.poliza_id 
LEFT OUTER JOIN siniestro_material SM ON sm.siniestro_id = s.siniestro_id 
LEFT OUTER JOIN siniestro_social SS ON SS.siniestro_id = S.siniestro_id 
LEFT OUTER JOIN siniestro_colision SC ON SC.siniestro_id = s.siniestro_id 
GROUP BY MA.descripcion;
--VARIABLES DEL CURSOR 2
V_DESCRIPCION2 MARCA_AUTO.DESCRIPCION%TYPE;
V_TOTAL_SINIESTROS NUMBER(10,0);
V_TOTAL_MATERIAL NUMBER(10,0);
V_TOTAL_SOCIAL NUMBER(10,0);
V_TOTAL_COLISION NUMBER(10,0);

BEGIN
  SELECT COTIZACION_SEQ.NEXTVAL INTO V_COTI_ID FROM DUAL;
  
  procedure_cotizacion(V_COTI_ID,v_fecha_cotizacion,v_anio_auto,v_edad_inicial_conductor,v_edad_final_conductor,
  v_tipo_seguro_id,v_marca_autos_id,v_modelo_autos_id,v_estado_republica_id,V_codigo_postal);
  --CALCULAMOS LA COTIZACION-------------------------------------------------------------------
   IF v_edad_final_conductor >= 18 AND v_edad_final_conductor < 30 THEN --RESPECTO A LA EDAD DEL CONDUCTOR
    V_PRECIO := V_PRECIO+300;
  ELSIF v_edad_final_conductor >= 30 AND v_edad_final_conductor < 60 THEN
    V_PRECIO := V_PRECIO+100;
  ELSIF v_edad_final_conductor >= 60 AND v_edad_final_conductor < 90 THEN
    V_PRECIO := V_PRECIO+200;
  ELSE
    dbms_output.put_line('NO PUEDES TIENES LA EDAD ADECUADA PARA EL SEGURO');
  END IF;
  
  IF v_marca_autos_id = 2 OR v_marca_autos_id = 9 OR v_modelo_autos_id = 7 THEN --RESPECTO A LA MARCA DEL AUTO
     V_PRECIO := V_PRECIO+300;
  ELSIF v_marca_autos_id = 5 OR v_marca_autos_id = 8 OR v_modelo_autos_id = 3 THEN
     V_PRECIO := V_PRECIO+100;
  ELSE 
     V_PRECIO := V_PRECIO+200;
  END IF;
  
   IF v_modelo_autos_id = 2 OR v_modelo_autos_id = 1 OR v_modelo_autos_id = 10 THEN --RESPECTO A EL MODELO DEL AUTO
     V_PRECIO := V_PRECIO+300;
  ELSIF v_modelo_autos_id = 9 OR v_modelo_autos_id = 5 OR v_modelo_autos_id = 3 THEN
     V_PRECIO := V_PRECIO+100;
  ELSE 
     V_PRECIO := V_PRECIO+200;
  END IF;
  
  IF v_anio_auto >= 1950 AND v_anio_auto < 1980 THEN --RESPECTO AL AÑO DEL AUTO
    V_PRECIO := V_PRECIO+300;
  ELSIF v_anio_auto >= 1980 AND v_anio_auto < 2000 THEN
    V_PRECIO := V_PRECIO+200;
  ELSIF v_anio_auto >= 2000 AND v_anio_auto < 2015 THEN
    V_PRECIO := V_PRECIO+100;
  ELSE
    dbms_output.put_line('TU AUTO NO ENTRA EN EL RANGO DE AÑOS');
  END IF;
  IF v_estado_republica_id = 9  THEN --RESPECTO A EL EDO DE LA REPUBLICA
     V_PRECIO := V_PRECIO+500;
  ELSE 
     V_PRECIO := V_PRECIO+200;
  END IF;
  IF v_tipo_seguro_id = 1 THEN --RESPECTO A EL TIPO DE SEGURO
     V_PRECIO := V_PRECIO+200;
  ELSIF v_tipo_seguro_id = 2 THEN
     V_PRECIO := V_PRECIO+100;
  ELSE 
     V_PRECIO := V_PRECIO+300;
  END IF;
  --FIN DE CALCULO DE LA COTIZACION--------------------------------------------------------------
  UPDATE COTIZACION SET COSTO = V_PRECIO WHERE COTIZACION_ID=V_COTI_ID; --AGREGAMOS LA COTIZACION CALCULADA
  --v_deseo_contratar :='&designation'; -- Esta sentencia significa v_deseo_contratar = 'S' p.ej.
  v_deseo_contratar :='S';--Evitamos que pregunte si quiere la poliza
  IF v_deseo_contratar = 'S' THEN
    --VAriables para registrar al cliente
    DECLARE --Anidamos otro bloque para poder pedir las nuevas variables de cliente
    V_CLIENTE_ID NUMBER(10,0);
    V_NOMBRE VARCHAR2(40);
    V_AP_PAT VARCHAR2(40);
    V_AP_MAT VARCHAR2(40);
    V_RFC VARCHAR2(12);
    V_EMAIL VARCHAR2(40);
    V_DIRECCION VARCHAR2(40);
    
    V_TARJETA_CLIENTE_ID NUMBER(10,0);
    V_NUMERO_TARJETA VARCHAR2(30);
    V_MES_EXPIRACION VARCHAR2(2);
    V_ANIO_EXPIRACION VARCHAR2(4);
    V_NUMERO_SEGURIDAD VARCHAR2(3);
    
    BEGIN
     V_NOMBRE := '&NOMBRE';--Al parecer el compilador lee primero los & antes de cualquier otra cosa del programa
    V_AP_PAT := '&AP_PAT'; --no afecta a la BD, solo visualmente al realizar la captura de datos del cliente.
    V_AP_MAT := '&AP_MAT';
    V_RFC := '&RFC';
    V_EMAIL := '&EMAIL';
    V_DIRECCION := '&DIRECCION';
    V_NUMERO_TARJETA := '&NUMERO_TARJETA';
    V_MES_EXPIRACION := '&MES_EXPIRACION';
    V_ANIO_EXPIRACION := '&ANIO_EXPIRACION';
    V_NUMERO_SEGURIDAD := '&NUMERO_SEGURIDAD';
    
        SELECT CLIENTE_SEQ.NEXTVAL INTO v_cliente_id FROM DUAL;
        SELECT TARJETA_SEQ.NEXTVAL INTO v_tarjeta_cliente_id FROM DUAL;
        
        procedure_cliente(v_cliente_id,v_nombre,v_ap_pat,v_ap_mat, v_rfc, v_email, v_direccion);
        UPDATE COTIZACION SET CLIENTE_ID = v_cliente_id WHERE cotizacion_id = V_COTI_ID; --AGREGAMOS EL CLIENTE A LA COTIZACION
        procedure_tarjeta(v_tarjeta_cliente_id,v_numero_tarjeta,v_mes_expiracion,v_anio_expiracion,v_numero_seguridad);
        UPDATE CLIENTE SET TARJETA_CLIENTE_ID = v_tarjeta_cliente_id WHERE CLIENTE_ID = v_CLIENTE_ID; --AGREGAMOS LA TARJETA AL CLIENTE
        
          --v_pagado :='&designation'; -- Esta sentencia significa v_pago= 'S' p.ej.
          v_pagado :='S';
          IF v_pagado = 'S' THEN
            --VAriables para registrar al cliente
            DECLARE --Anidamos otro bloque para poder REALIZAR LA POLIZA
            
            V_POLIZA_ID NUMBER(10,0);
            V_FOLIO VARCHAR2(13) := '&FOLIO';
            V_FECHA_HORA_INICIO DATE := SYSDATE;
            V_FECHA_FIN DATE := SYSDATE+365;
            V_NUMERO_PLACAS VARCHAR2(10) := '&NUMERO_PLACAS';
            V_NUMERO_SERIE VARCHAR2(40) := '&NUMERO_SERIE';
            --V_SINIESTROS_OCURRIDOS NUMBER(10,0) := &SINIESTROS_OCURRIDOS;
            --V_CLIENTE_ID NUMBER(10,0);
            V_POLIZA_ANTERIOR_ID NUMBER(10,0);
            BEGIN
              dbms_output.put_line('Se generara tu poliza...');
              SELECT POLIZA_SEQ.NEXTVAL INTO v_poliza_id FROM DUAL;
              PROCEDURE_POLIZA(v_poliza_id, v_folio, v_fecha_hora_inicio, v_fecha_fin, v_numero_placas, v_numero_serie,0,
              v_cliente_id, v_poliza_anterior_id);
              dbms_output.put_line('FELICIDADES! ');
              dbms_output.put_line('El costo de tu seguro es de '|| v_precio ||' pesos');
              
              OPEN infoEstados;
              --FETCH datosProfesor INTO v_nombre,v_ap_pat,v_ap_mat,v_asignatura,v_num_cursos;
              dbms_output.put_line('Recuerda, a la hora de un siniestro estos son los diferentes estados por los que pasara: ');
              dbms_output.put_line('Estado siniestro id, clave, descripcion');
              LOOP
              FETCH infoEstados INTO v_estado_siniestro_id,v_clave,v_descripcion;
              EXIT WHEN infoEstados%NOTFOUND;
              dbms_output.put_line(v_estado_siniestro_id||' , '||v_clave||' , '||v_descripcion);
              END LOOP;
              CLOSE infoEstados;
              
              OPEN infoMarcas;
              dbms_output.put_line('INFORMACION SOBRE LOS SINIESTROS QUE HAN TENIDO LOS DIFERENTES TIPOS DE MARCAS');
              dbms_output.put_line('DESCRIPCION TOTAL_SINIESTROS  MATERIAL  SOCIAL  COLISION');
              LOOP
              FETCH infoMarcas INTO V_DESCRIPCION2,V_TOTAL_SINIESTROS,V_TOTAL_MATERIAL,V_TOTAL_SOCIAL,V_TOTAL_COLISION;
              EXIT WHEN infoMarcas%NOTFOUND;
              dbms_output.put_line(V_DESCRIPCION2||CHR(9)||V_TOTAL_SINIESTROS||CHR(9)||V_TOTAL_MATERIAL||
              CHR(9)||V_TOTAL_SOCIAL||CHR(9)||V_TOTAL_COLISION);
              END LOOP;
              CLOSE infoMarcas;
              
            END;
          ELSE
            dbms_output.put_line('El pago no se ha podido realizar, vuelve despues');
            DELETE FROM COTIZACION WHERE COTIZACION_ID = V_COTI_ID; --Si el pago no es aceptado, se elimina su cotizacion y sus datos personales
            DELETE FROM cliente WHERE CLIENTE_ID = v_CLIENTE_ID;
            DELETE FROM TARJETA_CLIENTE WHERE TARJETA_CLIENTE_ID = V_TARJETA_CLIENTE_ID;
          END IF;
    END;
    
  ELSE --EN CASO DE QUE NO ACEPTA LA COTIZACION
    dbms_output.put_line('Es una lastima... Regresa cuando quieras.');
    DELETE FROM COTIZACION WHERE COTIZACION_ID = V_COTI_ID; --Si el interesado no acepta la cotizacion, se elimina su cotizacion y no es registrado
  END IF;
END;
