-----
--DML
-----

--Catalogos
INSERT INTO TIPO_SEGURO(TIPO_SEGURO_ID, CLAVE, DESCRIPCION) VALUES(1, 'CA', 'Cobertura amplia');
INSERT INTO TIPO_SEGURO(TIPO_SEGURO_ID, CLAVE, DESCRIPCION) VALUES(2, 'CB', 'Cobertura básica');
INSERT INTO TIPO_SEGURO(TIPO_SEGURO_ID, CLAVE, DESCRIPCION) VALUES(3, 'CP', 'Cobertura plus');

INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(1, 'AGU', 'Aguascalientes');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(2, 'BC', 'Baja California');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(3, 'BCS', 'Baja California Sur');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(4, 'CAM', 'Campeche');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(5, 'COA', 'Coahuila');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(6, 'COL', 'Colima');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(7, 'CHIA', 'Chiapas');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(8, 'CHIH', 'Chihuahua');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(9, 'DF', 'Distrito Federal');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(10, 'DUR', 'Durango');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(11, 'GUAN', 'Guanajuato');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(12, 'GUERR', 'Guerrero');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(13, 'HID', 'Hidalgo');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(14, 'JAL', 'Jalisco');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(15, 'EMX', 'Estado de México');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(16, 'MICH', 'Michoacán');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(17, 'MOR', 'Morelos');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(18, 'NAY', 'Nayarit');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(19, 'NL', 'Nuevo León');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(20, 'OAX', 'Oaxaca');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(21, 'PUE', 'Puebla');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(22, 'QUER', 'Querétaro');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(23, 'QR', 'Quintana Roo');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(24, 'SLP', 'San Luis Potosí');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(25, 'SIN', 'Sinaloa');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(26, 'SON', 'Sonora');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(27, 'TAB', 'Tabasco');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(28, 'TAM', 'Tamaulipas');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(29, 'TLAX', 'Tlaxcala');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(30, 'VER', 'Veracruz');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(31, 'YUC', 'Yucatán');
INSERT INTO ESTADO_REPUBLICA(ESTADO_REPUBLICA_ID, CLAVE, DESCRIPCION) VALUES(32, 'ZAC', 'Zacatecas');

INSERT INTO MARCA_AUTO(MARCA_AUTO_ID, CLAVE, DESCRIPCION) VALUES(1, 'CHE', 'Chevrolet');
INSERT INTO MARCA_AUTO(MARCA_AUTO_ID, CLAVE, DESCRIPCION) VALUES(2, 'VW', 'Volwswagen');
INSERT INTO MARCA_AUTO(MARCA_AUTO_ID, CLAVE, DESCRIPCION) VALUES(3, 'MB', 'Mercedez Benz');
INSERT INTO MARCA_AUTO(MARCA_AUTO_ID, CLAVE, DESCRIPCION) VALUES(4, 'AU', 'Audi');
INSERT INTO MARCA_AUTO(MARCA_AUTO_ID, CLAVE, DESCRIPCION) VALUES(5, 'NI', 'Nissan');
INSERT INTO MARCA_AUTO(MARCA_AUTO_ID, CLAVE, DESCRIPCION) VALUES(6, 'PE', 'Peugeot');
INSERT INTO MARCA_AUTO(MARCA_AUTO_ID, CLAVE, DESCRIPCION) VALUES(7, 'BM', 'BMW');
INSERT INTO MARCA_AUTO(MARCA_AUTO_ID, CLAVE, DESCRIPCION) VALUES(8, 'HO', 'Honda');
INSERT INTO MARCA_AUTO(MARCA_AUTO_ID, CLAVE, DESCRIPCION) VALUES(9, 'FO', 'Ford');
INSERT INTO MARCA_AUTO(MARCA_AUTO_ID, CLAVE, DESCRIPCION) VALUES(10, 'MA', 'Mazda');

INSERT INTO MODELO_AUTO(MODELO_AUTO_ID, CLAVE, DESCRIPCION) VALUES(1, 'CR', 'Cruze');
INSERT INTO MODELO_AUTO(MODELO_AUTO_ID, CLAVE, DESCRIPCION) VALUES(2, 'GL', 'GOlf');
INSERT INTO MODELO_AUTO(MODELO_AUTO_ID, CLAVE, DESCRIPCION) VALUES(3, 'A2', 'A250');
INSERT INTO MODELO_AUTO(MODELO_AUTO_ID, CLAVE, DESCRIPCION) VALUES(4, 'A1', 'A1');
INSERT INTO MODELO_AUTO(MODELO_AUTO_ID, CLAVE, DESCRIPCION) VALUES(5, 'MX', 'Maxima');
INSERT INTO MODELO_AUTO(MODELO_AUTO_ID, CLAVE, DESCRIPCION) VALUES(6, '20', '208');
INSERT INTO MODELO_AUTO(MODELO_AUTO_ID, CLAVE, DESCRIPCION) VALUES(7, '2i', '250i');
INSERT INTO MODELO_AUTO(MODELO_AUTO_ID, CLAVE, DESCRIPCION) VALUES(8, 'CI', 'Civic');
INSERT INTO MODELO_AUTO(MODELO_AUTO_ID, CLAVE, DESCRIPCION) VALUES(9, 'Fi', 'Fiesta');
INSERT INTO MODELO_AUTO(MODELO_AUTO_ID, CLAVE, DESCRIPCION) VALUES(10, 'M3', 'Mazda 3');

INSERT INTO ESTADO_SINIESTRO(ESTADO_SINIESTRO_ID, CLAVE, DESCRIPCION) VALUES(1, 'REGISTRADO', 'El siniestro ha sido reportado por un cliente');
INSERT INTO ESTADO_SINIESTRO(ESTADO_SINIESTRO_ID, CLAVE, DESCRIPCION) VALUES(2, 'ATENDIDO', 'El ajustador ha llegado al lugar del siniestro, se han determinado las condiciones del tratamiento del daño');
INSERT INTO ESTADO_SINIESTRO(ESTADO_SINIESTRO_ID, CLAVE, DESCRIPCION) VALUES(3, 'EN PROCESO', 'Los daños causados están siendo reparados');
INSERT INTO ESTADO_SINIESTRO(ESTADO_SINIESTRO_ID, CLAVE, DESCRIPCION) VALUES(4, 'CONCLUIDO', 'Se han reparado los daños, todos los involucrados están de acuerdo con la reparación de los daños');
INSERT INTO ESTADO_SINIESTRO(ESTADO_SINIESTRO_ID, CLAVE, DESCRIPCION) VALUES(5, 'CANCELADO', 'El siniestro puede ser cancelado en cualquier momento');

INSERT INTO ASEGURADORA(ASEGURADORA_ID, CLAVE, DESCRIPCION) VALUES(1, 'QA', 'Qualitas');
INSERT INTO ASEGURADORA(ASEGURADORA_ID, CLAVE, DESCRIPCION) VALUES(2, 'GNP', 'GNP');
INSERT INTO ASEGURADORA(ASEGURADORA_ID, CLAVE, DESCRIPCION) VALUES(3, 'HDI', 'HDI');
INSERT INTO ASEGURADORA(ASEGURADORA_ID, CLAVE, DESCRIPCION) VALUES(4, 'MP', 'MAPFRE');
INSERT INTO ASEGURADORA(ASEGURADORA_ID, CLAVE, DESCRIPCION) VALUES(5, 'AXA', 'AXA');
INSERT INTO ASEGURADORA(ASEGURADORA_ID, CLAVE, DESCRIPCION) VALUES(6, 'BBBVA', 'BANCOMER');
INSERT INTO ASEGURADORA(ASEGURADORA_ID, CLAVE, DESCRIPCION) VALUES(7, 'SNTD', 'SANTADER SERFIN');
INSERT INTO ASEGURADORA(ASEGURADORA_ID, CLAVE, DESCRIPCION) VALUES(8, 'ALL', 'ALLIANZ');
INSERT INTO ASEGURADORA(ASEGURADORA_ID, CLAVE, DESCRIPCION) VALUES(9, 'ZUR', 'ZURICH');
INSERT INTO ASEGURADORA(ASEGURADORA_ID, CLAVE, DESCRIPCION) VALUES(10, 'HSBC', 'HSBC');

INSERT INTO HOSPITAL(HOSPITAL_ID, NOMBRE, DIRECCION) VALUES(1, 'Sanatorio Durango', 'DURANGO 296, ROMA, MEXICO, C.P. 06700, DF');
INSERT INTO HOSPITAL(HOSPITAL_ID, NOMBRE, DIRECCION) VALUES(2, 'Medica Salverry', 'SALAVERRY 914, LINDAVISTA NORTE, GUSTAVO A. MADERO, C.P. 07300, DF');
INSERT INTO HOSPITAL(HOSPITAL_ID, NOMBRE, DIRECCION) VALUES(3, 'Sanatorio Jesus', 'SUCRE 148, MODERNA, MEXICO, C.P. 03510, DF');
INSERT INTO HOSPITAL(HOSPITAL_ID, NOMBRE, DIRECCION) VALUES(4, 'Centro Médico Dalinde', 'TUXPAN 25, ROMA SUR, CUAUHTEMOC, C.P. 06760, DF');
INSERT INTO HOSPITAL(HOSPITAL_ID, NOMBRE, DIRECCION) VALUES(5, 'Sedna', 'PERIFERICO SUR 5246, PEDREGAL DE CARRASCO, COYOACAN, C.P. 04700, DF');
INSERT INTO HOSPITAL(HOSPITAL_ID, NOMBRE, DIRECCION) VALUES(6, 'Medica Sur', 'PUENTE DE PIEDRA 150, TORIELLO GUERRA, TLALPAN, C.P. 14050, DF');
INSERT INTO HOSPITAL(HOSPITAL_ID, NOMBRE, DIRECCION) VALUES(7, 'Hospiral San Angel Inn', 'MEXICO 2, TIZAPAN, MEXICO, C.P. 01090, DF');
INSERT INTO HOSPITAL(HOSPITAL_ID, NOMBRE, DIRECCION) VALUES(8, 'Boutique Riobamba', 'RIO BAMBA 927, LINDAVISTA, GUSTAVO A. MADERO, C.P. 07300, DF');
INSERT INTO HOSPITAL(HOSPITAL_ID, NOMBRE, DIRECCION) VALUES(9, 'Centro Médico ABC', 'SUR 136 Nº 116, LAS AMERICAS, MEXICO, C.P. 01120, DF');
INSERT INTO HOSPITAL(HOSPITAL_ID, NOMBRE, DIRECCION) VALUES(10, 'Polanco', 'CARR FED. MEXICO CUAUTLA 1 16, HACIENDA LAS PALMAS I Y II, IXTAPALUCA, C.P. 56535, MEX');

--Registros necesarios para la tabla cliente
INSERT INTO TARJETA_CLIENTE(TARJETA_CLIENTE_ID, NUMERO_TARJETA, MES_EXPIRACION, ANIO_EXPIRACION, NUMERO_SEGURIDAD) VALUES(TARJETA_SEQ.NEXTVAL, '12345678', '12', '16', '123');
INSERT INTO TARJETA_CLIENTE(TARJETA_CLIENTE_ID, NUMERO_TARJETA, MES_EXPIRACION, ANIO_EXPIRACION, NUMERO_SEGURIDAD) VALUES(TARJETA_SEQ.NEXTVAL, '87654321', '10', '17', '876');
INSERT INTO TARJETA_CLIENTE(TARJETA_CLIENTE_ID, NUMERO_TARJETA, MES_EXPIRACION, ANIO_EXPIRACION, NUMERO_SEGURIDAD) VALUES(TARJETA_SEQ.NEXTVAL, '12387645', '09', '16', '182');
INSERT INTO TARJETA_CLIENTE(TARJETA_CLIENTE_ID, NUMERO_TARJETA, MES_EXPIRACION, ANIO_EXPIRACION, NUMERO_SEGURIDAD) VALUES(TARJETA_SEQ.NEXTVAL, '09876543', '11', '16', '098');
INSERT INTO TARJETA_CLIENTE(TARJETA_CLIENTE_ID, NUMERO_TARJETA, MES_EXPIRACION, ANIO_EXPIRACION, NUMERO_SEGURIDAD) VALUES(TARJETA_SEQ.NEXTVAL, '10293847', '12', '15', '192');
INSERT INTO TARJETA_CLIENTE(TARJETA_CLIENTE_ID, NUMERO_TARJETA, MES_EXPIRACION, ANIO_EXPIRACION, NUMERO_SEGURIDAD) VALUES(TARJETA_SEQ.NEXTVAL, '12093487', '08', '17', '120');
INSERT INTO TARJETA_CLIENTE(TARJETA_CLIENTE_ID, NUMERO_TARJETA, MES_EXPIRACION, ANIO_EXPIRACION, NUMERO_SEGURIDAD) VALUES(TARJETA_SEQ.NEXTVAL, '97867564', '01', '17', '234');
INSERT INTO TARJETA_CLIENTE(TARJETA_CLIENTE_ID, NUMERO_TARJETA, MES_EXPIRACION, ANIO_EXPIRACION, NUMERO_SEGURIDAD) VALUES(TARJETA_SEQ.NEXTVAL, '74629162', '04', '16', '412');
INSERT INTO TARJETA_CLIENTE(TARJETA_CLIENTE_ID, NUMERO_TARJETA, MES_EXPIRACION, ANIO_EXPIRACION, NUMERO_SEGURIDAD) VALUES(TARJETA_SEQ.NEXTVAL, '12253640', '07', '17', '378');
INSERT INTO TARJETA_CLIENTE(TARJETA_CLIENTE_ID, NUMERO_TARJETA, MES_EXPIRACION, ANIO_EXPIRACION, NUMERO_SEGURIDAD) VALUES(TARJETA_SEQ.NEXTVAL, '12709239', '11', '15', '234');

--Tablas principales
INSERT INTO CLIENTE(CLIENTE_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, RFC, EMAIL, DIRECCION, TARJETA_CLIENTE_ID) VALUES(CLIENTE_SEQ.NEXTVAL, 'Carlos', 'Sullivan', 'Trejo', 'CASTDFHL34', 'carlos@mail.com', 'Tlapan DF', 1);
INSERT INTO CLIENTE(CLIENTE_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, RFC, EMAIL, DIRECCION, TARJETA_CLIENTE_ID) VALUES(CLIENTE_SEQ.NEXTVAL, 'Susana', 'Lopez', 'Telles', 'SULTDFHL34', 'susana@mail.com', 'Iztapalapa DF', 2);
INSERT INTO CLIENTE(CLIENTE_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, RFC, EMAIL, DIRECCION, TARJETA_CLIENTE_ID) VALUES(CLIENTE_SEQ.NEXTVAL, 'Dainel', 'Bautista', 'Vargas', 'DAABVHDG12', 'daniel@mail.com', 'Coyoacan DF', 3);
INSERT INTO CLIENTE(CLIENTE_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, RFC, EMAIL, DIRECCION, TARJETA_CLIENTE_ID) VALUES(CLIENTE_SEQ.NEXTVAL, 'Michelle', 'Bello', 'Abonza', 'MIBA17DH13', 'michelle@mail.com', 'Benito Juarez DF', 4);
INSERT INTO CLIENTE(CLIENTE_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, RFC, EMAIL, DIRECCION, TARJETA_CLIENTE_ID) VALUES(CLIENTE_SEQ.NEXTVAL, 'Beatriz', 'Degadillo', 'Cárdenas', 'BEDC72HEQ0', 'beatriz@mail.com', 'Xochimilco DF', 5);
INSERT INTO CLIENTE(CLIENTE_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, RFC, EMAIL, DIRECCION, TARJETA_CLIENTE_ID) VALUES(CLIENTE_SEQ.NEXTVAL, 'Eduardo', 'Salazar', 'Lara', 'EDSLUE7F4H', 'eduardo@mail.com', 'Izatcalco DF', 6);
INSERT INTO CLIENTE(CLIENTE_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, RFC, EMAIL, DIRECCION, TARJETA_CLIENTE_ID) VALUES(CLIENTE_SEQ.NEXTVAL, 'Antonio', 'Santiago', 'Cruz', 'ANSC6DGE4Y', 'antonio@mail.com', 'Tlahuac DF', 7);
INSERT INTO CLIENTE(CLIENTE_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, RFC, EMAIL, DIRECCION, TARJETA_CLIENTE_ID) VALUES(CLIENTE_SEQ.NEXTVAL, 'Viridiana', 'Cornejo', 'Landa', 'VICLLHD3G7F', 'viridiana@mail.com', 'Milpa Alta DF', 8);
INSERT INTO CLIENTE(CLIENTE_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, RFC, EMAIL, DIRECCION, TARJETA_CLIENTE_ID) VALUES(CLIENTE_SEQ.NEXTVAL, 'Israel', 'Soto', 'Moya', 'ISSOSFOMO', 'israel@mail.com', 'Azcapotzalco DF', 9);
INSERT INTO CLIENTE(CLIENTE_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, RFC, EMAIL, DIRECCION, TARJETA_CLIENTE_ID) VALUES(CLIENTE_SEQ.NEXTVAL, 'Armando', 'Salas', 'Andrade', 'ARSANF74HR', 'armando@mail.com', 'Iztacalco DF', 10);

INSERT INTO COTIZACION(COTIZACION_ID, FECHA_COTIZACION, ANIO_AUTO, EDAD_INICIAL_CONDUCTOR, EDAD_FINAL_CONDUCTOR, CODIGO_POSTAL, COSTO, TIPO_SEGURO_ID, MARCA_AUTO_ID, MODELO_AUTO_ID, ESTADO_REPUBLICA_ID, CLIENTE_ID) VALUES(COTIZACION_SEQ.NEXTVAL, TO_DATE('25/01/2015', 'DD/MM/YYYY'), '2010', 30, 31, '14296', 1000, 3, 1, 1, 9, 1);
INSERT INTO COTIZACION(COTIZACION_ID, FECHA_COTIZACION, ANIO_AUTO, EDAD_INICIAL_CONDUCTOR, EDAD_FINAL_CONDUCTOR, CODIGO_POSTAL, COSTO, TIPO_SEGURO_ID, MARCA_AUTO_ID, MODELO_AUTO_ID, ESTADO_REPUBLICA_ID, CLIENTE_ID) VALUES(COTIZACION_SEQ.NEXTVAL, TO_DATE('12/06/2014', 'DD/MM/YYYY'), '2015', 28, 29, '16251', 2000, 2, 2, 2, 9, 2);
INSERT INTO COTIZACION(COTIZACION_ID, FECHA_COTIZACION, ANIO_AUTO, EDAD_INICIAL_CONDUCTOR, EDAD_FINAL_CONDUCTOR, CODIGO_POSTAL, COSTO, TIPO_SEGURO_ID, MARCA_AUTO_ID, MODELO_AUTO_ID, ESTADO_REPUBLICA_ID, CLIENTE_ID) VALUES(COTIZACION_SEQ.NEXTVAL, TO_DATE('07/07/2011', 'DD/MM/YYYY'), '2009', 32, 33, '19038', 3000, 1, 3, 3, 9, 3);
INSERT INTO COTIZACION(COTIZACION_ID, FECHA_COTIZACION, ANIO_AUTO, EDAD_INICIAL_CONDUCTOR, EDAD_FINAL_CONDUCTOR, CODIGO_POSTAL, COSTO, TIPO_SEGURO_ID, MARCA_AUTO_ID, MODELO_AUTO_ID, ESTADO_REPUBLICA_ID, CLIENTE_ID) VALUES(COTIZACION_SEQ.NEXTVAL, TO_DATE('10/08/2012', 'DD/MM/YYYY'), '2010', 32, 33, '13812', 4000, 3, 4, 4, 9, 4);
INSERT INTO COTIZACION(COTIZACION_ID, FECHA_COTIZACION, ANIO_AUTO, EDAD_INICIAL_CONDUCTOR, EDAD_FINAL_CONDUCTOR, CODIGO_POSTAL, COSTO, TIPO_SEGURO_ID, MARCA_AUTO_ID, MODELO_AUTO_ID, ESTADO_REPUBLICA_ID, CLIENTE_ID) VALUES(COTIZACION_SEQ.NEXTVAL, TO_DATE('02/09/2013', 'DD/MM/YYYY'), '2011', 32, 33, '19065', 5000, 2, 5, 5, 9, 5);
INSERT INTO COTIZACION(COTIZACION_ID, FECHA_COTIZACION, ANIO_AUTO, EDAD_INICIAL_CONDUCTOR, EDAD_FINAL_CONDUCTOR, CODIGO_POSTAL, COSTO, TIPO_SEGURO_ID, MARCA_AUTO_ID, MODELO_AUTO_ID, ESTADO_REPUBLICA_ID, CLIENTE_ID) VALUES(COTIZACION_SEQ.NEXTVAL, TO_DATE('21/10/2014', 'DD/MM/YYYY'), '2012', 32, 33, '29568', 6000, 1, 6, 6, 9, 6);
INSERT INTO COTIZACION(COTIZACION_ID, FECHA_COTIZACION, ANIO_AUTO, EDAD_INICIAL_CONDUCTOR, EDAD_FINAL_CONDUCTOR, CODIGO_POSTAL, COSTO, TIPO_SEGURO_ID, MARCA_AUTO_ID, MODELO_AUTO_ID, ESTADO_REPUBLICA_ID, CLIENTE_ID) VALUES(COTIZACION_SEQ.NEXTVAL, TO_DATE('15/11/2015', 'DD/MM/YYYY'), '2013', 32, 33, '83615', 7000, 3, 7, 7, 9, 7);
INSERT INTO COTIZACION(COTIZACION_ID, FECHA_COTIZACION, ANIO_AUTO, EDAD_INICIAL_CONDUCTOR, EDAD_FINAL_CONDUCTOR, CODIGO_POSTAL, COSTO, TIPO_SEGURO_ID, MARCA_AUTO_ID, MODELO_AUTO_ID, ESTADO_REPUBLICA_ID, CLIENTE_ID) VALUES(COTIZACION_SEQ.NEXTVAL, TO_DATE('17/12/2014', 'DD/MM/YYYY'), '2014', 32, 33, '05836', 8000, 2, 8, 8, 9, 8);
INSERT INTO COTIZACION(COTIZACION_ID, FECHA_COTIZACION, ANIO_AUTO, EDAD_INICIAL_CONDUCTOR, EDAD_FINAL_CONDUCTOR, CODIGO_POSTAL, COSTO, TIPO_SEGURO_ID, MARCA_AUTO_ID, MODELO_AUTO_ID, ESTADO_REPUBLICA_ID, CLIENTE_ID) VALUES(COTIZACION_SEQ.NEXTVAL, TO_DATE('30/04/2015', 'DD/MM/YYYY'), '2015', 32, 33, '74536', 9000, 1, 9, 9, 9, 9);
INSERT INTO COTIZACION(COTIZACION_ID, FECHA_COTIZACION, ANIO_AUTO, EDAD_INICIAL_CONDUCTOR, EDAD_FINAL_CONDUCTOR, CODIGO_POSTAL, COSTO, TIPO_SEGURO_ID, MARCA_AUTO_ID, MODELO_AUTO_ID, ESTADO_REPUBLICA_ID, CLIENTE_ID) VALUES(COTIZACION_SEQ.NEXTVAL, TO_DATE('01/06/2015', 'DD/MM/YYYY'), '2016', 32, 33, '03829', 10000, 3, 10, 10, 9, 10);

INSERT INTO POLIZA(POLIZA_ID, FOLIO, FECHA_HORA_INICIO, FECHA_FIN, NUMERO_PLACAS, NUMERO_SERIE, SINIESTROS_OCURRIDOS, CLIENTE_ID, POLIZA_ANTERIOR_ID) VALUES(POLIZA_SEQ.NEXTVAL, '0000000000001',  TO_DATE('2015/01/26 10:00:00','YYYY/MM/DD HH24:MI:SS'), TO_DATE('2016/01/26','YYYY/MM/DD'), 'XFG-123', 'HATE63GD5E', 2, 1, NULL);
INSERT INTO POLIZA(POLIZA_ID, FOLIO, FECHA_HORA_INICIO, FECHA_FIN, NUMERO_PLACAS, NUMERO_SERIE, SINIESTROS_OCURRIDOS, CLIENTE_ID, POLIZA_ANTERIOR_ID) VALUES(POLIZA_SEQ.NEXTVAL, '0000000000002',  TO_DATE('2014/06/13 12:00:00','YYYY/MM/DD HH24:MI:SS'), TO_DATE('2015/06/13','YYYY/MM/DD'), 'XAS-321', 'AHYW273YE7', 1, 2, NULL);
INSERT INTO POLIZA(POLIZA_ID, FOLIO, FECHA_HORA_INICIO, FECHA_FIN, NUMERO_PLACAS, NUMERO_SERIE, SINIESTROS_OCURRIDOS, CLIENTE_ID, POLIZA_ANTERIOR_ID) VALUES(POLIZA_SEQ.NEXTVAL, '0000000000003',  TO_DATE('2011/07/08 23:00:00','YYYY/MM/DD HH24:MI:SS'), TO_DATE('2012/07/08','YYYY/MM/DD'), 'DES-543', '0387FH34ES', 1, 3, NULL);
INSERT INTO POLIZA(POLIZA_ID, FOLIO, FECHA_HORA_INICIO, FECHA_FIN, NUMERO_PLACAS, NUMERO_SERIE, SINIESTROS_OCURRIDOS, CLIENTE_ID, POLIZA_ANTERIOR_ID) VALUES(POLIZA_SEQ.NEXTVAL, '0000000000004',  TO_DATE('2012/08/11 06:00:00','YYYY/MM/DD HH24:MI:SS'), TO_DATE('2013/08/11','YYYY/MM/DD'), 'FRE-634', '9I83YDGE64', 1, 4, NULL);
INSERT INTO POLIZA(POLIZA_ID, FOLIO, FECHA_HORA_INICIO, FECHA_FIN, NUMERO_PLACAS, NUMERO_SERIE, SINIESTROS_OCURRIDOS, CLIENTE_ID, POLIZA_ANTERIOR_ID) VALUES(POLIZA_SEQ.NEXTVAL, '0000000000005',  TO_DATE('2013/09/03 09:00:00','YYYY/MM/DD HH24:MI:SS'), TO_DATE('2014/09/03','YYYY/MM/DD'), 'RGD-293', '01I8H3DYE3', 1, 5, NULL);
INSERT INTO POLIZA(POLIZA_ID, FOLIO, FECHA_HORA_INICIO, FECHA_FIN, NUMERO_PLACAS, NUMERO_SERIE, SINIESTROS_OCURRIDOS, CLIENTE_ID, POLIZA_ANTERIOR_ID) VALUES(POLIZA_SEQ.NEXTVAL, '0000000000006',  TO_DATE('2014/10/22 11:00:00','YYYY/MM/DD HH24:MI:SS'), TO_DATE('2015/10/22','YYYY/MM/DD'), 'ERD-098', '9364YEHDBC', 1, 6, NULL);
INSERT INTO POLIZA(POLIZA_ID, FOLIO, FECHA_HORA_INICIO, FECHA_FIN, NUMERO_PLACAS, NUMERO_SERIE, SINIESTROS_OCURRIDOS, CLIENTE_ID, POLIZA_ANTERIOR_ID) VALUES(POLIZA_SEQ.NEXTVAL, '0000000000007',  TO_DATE('2015/11/16 18:00:00','YYYY/MM/DD HH24:MI:SS'), TO_DATE('2016/11/16','YYYY/MM/DD'), 'WER-309', '0183YEHNC7', 1, 7, NULL);
INSERT INTO POLIZA(POLIZA_ID, FOLIO, FECHA_HORA_INICIO, FECHA_FIN, NUMERO_PLACAS, NUMERO_SERIE, SINIESTROS_OCURRIDOS, CLIENTE_ID, POLIZA_ANTERIOR_ID) VALUES(POLIZA_SEQ.NEXTVAL, '0000000000008',  TO_DATE('2014/12/18 20:00:00','YYYY/MM/DD HH24:MI:SS'), TO_DATE('2015/12/18','YYYY/MM/DD'), 'XDR-101', '83645DGCBE', 1, 8, NULL);
INSERT INTO POLIZA(POLIZA_ID, FOLIO, FECHA_HORA_INICIO, FECHA_FIN, NUMERO_PLACAS, NUMERO_SERIE, SINIESTROS_OCURRIDOS, CLIENTE_ID, POLIZA_ANTERIOR_ID) VALUES(POLIZA_SEQ.NEXTVAL, '0000000000009',  TO_DATE('2015/04/29 14:00:00','YYYY/MM/DD HH24:MI:SS'), TO_DATE('2016/04/30','YYYY/MM/DD'), 'ZDE-145', '8364HDTC12', 1, 9, NULL);
INSERT INTO POLIZA(POLIZA_ID, FOLIO, FECHA_HORA_INICIO, FECHA_FIN, NUMERO_PLACAS, NUMERO_SERIE, SINIESTROS_OCURRIDOS, CLIENTE_ID, POLIZA_ANTERIOR_ID) VALUES(POLIZA_SEQ.NEXTVAL, '0000000000010',  TO_DATE('2015/04/02 19:00:00','YYYY/MM/DD HH24:MI:SS'), TO_DATE('2016/04/02','YYYY/MM/DD'), 'ADE-857', '83645DGCN3', 0, 10, NULL);

INSERT INTO SINIESTRO VALUES(SINIESTRO_SEQ.NEXTVAL, TO_DATE('2015/02/26','YYYY/MM/DD'), 'T', 'F', 'F', TO_DATE('2015/02/26 18:00:00','YYYY/MM/DD HH24:MI:SS'), 'Tlaplan DF', 'Daños materiales', NULL, 1, 4);
INSERT INTO SINIESTRO VALUES(SINIESTRO_SEQ.NEXTVAL, TO_DATE('2015/02/26','YYYY/MM/DD'), 'T', 'F', 'F', TO_DATE('2015/02/26 18:00:00','YYYY/MM/DD HH24:MI:SS'), 'Iztapalapa DF', 'Daños materiales', NULL, 1, 4);
INSERT INTO SINIESTRO VALUES(SINIESTRO_SEQ.NEXTVAL, TO_DATE('2015/02/26','YYYY/MM/DD'), 'F', 'T', 'F', TO_DATE('2015/02/26 18:00:00','YYYY/MM/DD HH24:MI:SS'), 'Cuahutemoc DF', 'Daños sociales', NULL,2, 4);
INSERT INTO SINIESTRO VALUES(SINIESTRO_SEQ.NEXTVAL, TO_DATE('2015/02/26','YYYY/MM/DD'), 'F', 'F', 'T', TO_DATE('2015/02/26 18:00:00','YYYY/MM/DD HH24:MI:SS'), 'Benito Juarez DF', 'Choque automovilistico', NULL,3, 4);
INSERT INTO SINIESTRO VALUES(SINIESTRO_SEQ.NEXTVAL, TO_DATE('2015/02/26','YYYY/MM/DD'), 'T', 'F', 'F', TO_DATE('2015/02/26 18:00:00','YYYY/MM/DD HH24:MI:SS'), 'Del Valle DF', 'Daños materiales', NULL,4, 4);
INSERT INTO SINIESTRO VALUES(SINIESTRO_SEQ.NEXTVAL, TO_DATE('2015/02/26','YYYY/MM/DD'), 'F', 'T', 'F', TO_DATE('2015/02/26 18:00:00','YYYY/MM/DD HH24:MI:SS'), 'Tlahuac DF', 'Daños sociales', NULL,5, 4);
INSERT INTO SINIESTRO VALUES(SINIESTRO_SEQ.NEXTVAL, TO_DATE('2015/02/26','YYYY/MM/DD'), 'F', 'F', 'T', TO_DATE('2015/02/26 18:00:00','YYYY/MM/DD HH24:MI:SS'), 'Reforma DF', 'Choque automovilistico', NULL,6, 4);
INSERT INTO SINIESTRO VALUES(SINIESTRO_SEQ.NEXTVAL, TO_DATE('2015/02/26','YYYY/MM/DD'), 'T', 'F', 'F', TO_DATE('2015/02/26 18:00:00','YYYY/MM/DD HH24:MI:SS'), 'Periferico DF', 'Daños materiales', NULL,7, 4);
INSERT INTO SINIESTRO VALUES(SINIESTRO_SEQ.NEXTVAL, TO_DATE('2015/02/26','YYYY/MM/DD'), 'F', 'T', 'F', TO_DATE('2015/02/26 18:00:00','YYYY/MM/DD HH24:MI:SS'), 'Milpa Alta DF', 'Daños sociales', NULL, 8, 4);
INSERT INTO SINIESTRO VALUES(SINIESTRO_SEQ.NEXTVAL, TO_DATE('2015/02/26','YYYY/MM/DD'), 'F', 'F', 'T', TO_DATE('2015/02/26 18:00:00','YYYY/MM/DD HH24:MI:SS'), 'Insurgentes DF', 'Daños automovilistico', NULL,9, 4);

--Subtipos
INSERT INTO SINIESTRO_MATERIAL VALUES(1, 'T', 'Daños materiales', NULL);
INSERT INTO SINIESTRO_MATERIAL VALUES(2, 'F', 'Daños materiales', NULL);
INSERT INTO SINIESTRO_MATERIAL VALUES(5, 'F', 'Daños materiales', NULL);
INSERT INTO SINIESTRO_MATERIAL VALUES(8, 'T', 'Daños materiales', NULL);

INSERT INTO SINIESTRO_SOCIAL VALUES(3, 'T', 1);
INSERT INTO SINIESTRO_SOCIAL VALUES(6, 'F', 2);
INSERT INTO SINIESTRO_SOCIAL VALUES(9, 'T', 3);

INSERT INTO SINIESTRO_COLISION VALUES(4, 'Coque automovilistico por alta velocidad', 'T');
INSERT INTO SINIESTRO_COLISION VALUES(7, 'Coque automovilistico por alta velocidad', 'F');
INSERT INTO SINIESTRO_COLISION VALUES(10, 'Coque automovilistico por alta velocidad', 'T');

--Tablas complementaias
INSERT INTO PERSONA(PERSONA_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, DESCRIPCION_DANIO, SINIESTRO_ID) VALUES(PERSONA_SEQ.NEXTVAL, 'Juan', 'Perez', NULL, NULL, 3);
INSERT INTO PERSONA(PERSONA_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, DESCRIPCION_DANIO, SINIESTRO_ID) VALUES(PERSONA_SEQ.NEXTVAL, 'Alberto', 'Rosas', NULL, NULL, 3);
INSERT INTO PERSONA(PERSONA_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, DESCRIPCION_DANIO, SINIESTRO_ID) VALUES(PERSONA_SEQ.NEXTVAL, 'Jorge', 'Benitez', NULL, NULL, 3);
INSERT INTO PERSONA(PERSONA_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, DESCRIPCION_DANIO, SINIESTRO_ID) VALUES(PERSONA_SEQ.NEXTVAL, 'Daniel', 'Castro', NULL, NULL, 6);
INSERT INTO PERSONA(PERSONA_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, DESCRIPCION_DANIO, SINIESTRO_ID) VALUES(PERSONA_SEQ.NEXTVAL, 'Maria', 'Del Valle', NULL, NULL, 6);
INSERT INTO PERSONA(PERSONA_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, DESCRIPCION_DANIO, SINIESTRO_ID) VALUES(PERSONA_SEQ.NEXTVAL, 'Josefa', 'Ortiz', NULL, NULL, 6);
INSERT INTO PERSONA(PERSONA_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, DESCRIPCION_DANIO, SINIESTRO_ID) VALUES(PERSONA_SEQ.NEXTVAL, 'Karina', 'Beltran', NULL, NULL, 6);
INSERT INTO PERSONA(PERSONA_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, DESCRIPCION_DANIO, SINIESTRO_ID) VALUES(PERSONA_SEQ.NEXTVAL, 'Carlos', 'Anaya', NULL, NULL, 6);
INSERT INTO PERSONA(PERSONA_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, DESCRIPCION_DANIO, SINIESTRO_ID) VALUES(PERSONA_SEQ.NEXTVAL, 'Aurora', 'Vargas', NULL, NULL, 9);
INSERT INTO PERSONA(PERSONA_ID, NOMBRE, APELLIDO_PATERNO, APELLIDO_MATERNO, DESCRIPCION_DANIO, SINIESTRO_ID) VALUES(PERSONA_SEQ.NEXTVAL, 'Asuncion', 'Marzano', NULL, NULL, 9);

INSERT INTO AUTO_INVOLUCRADO(AUTO_INVOLUCRADO_ID, NUMERO_SERIE, SINIESTRO_ID, ASEGURADORA_ID, MARCA_AUTO_ID, MODELO_AUTO_ID) VALUES(AUTO_SEQ.NEXTVAL, 'AH26FDETG36484', 4, 2, 4, 8);
INSERT INTO AUTO_INVOLUCRADO(AUTO_INVOLUCRADO_ID, NUMERO_SERIE, SINIESTRO_ID, ASEGURADORA_ID, MARCA_AUTO_ID, MODELO_AUTO_ID) VALUES(AUTO_SEQ.NEXTVAL, 'HDYE736EDFC5Q1', 4, 2, 4, 8);
INSERT INTO AUTO_INVOLUCRADO(AUTO_INVOLUCRADO_ID, NUMERO_SERIE, SINIESTRO_ID, ASEGURADORA_ID, MARCA_AUTO_ID, MODELO_AUTO_ID) VALUES(AUTO_SEQ.NEXTVAL, '9473HDTYCHRBQY', 4, 2, 4, 8);
INSERT INTO AUTO_INVOLUCRADO(AUTO_INVOLUCRADO_ID, NUMERO_SERIE, SINIESTRO_ID, ASEGURADORA_ID, MARCA_AUTO_ID, MODELO_AUTO_ID) VALUES(AUTO_SEQ.NEXTVAL, '0584GDYR64HCW2', 7, 2, 4, 8);
INSERT INTO AUTO_INVOLUCRADO(AUTO_INVOLUCRADO_ID, NUMERO_SERIE, SINIESTRO_ID, ASEGURADORA_ID, MARCA_AUTO_ID, MODELO_AUTO_ID) VALUES(AUTO_SEQ.NEXTVAL, '02937F37EYDCDE', 7, 2, 4, 8);
INSERT INTO AUTO_INVOLUCRADO(AUTO_INVOLUCRADO_ID, NUMERO_SERIE, SINIESTRO_ID, ASEGURADORA_ID, MARCA_AUTO_ID, MODELO_AUTO_ID) VALUES(AUTO_SEQ.NEXTVAL, '73HDYETCGE3SW2', 7, 2, 4, 8);
INSERT INTO AUTO_INVOLUCRADO(AUTO_INVOLUCRADO_ID, NUMERO_SERIE, SINIESTRO_ID, ASEGURADORA_ID, MARCA_AUTO_ID, MODELO_AUTO_ID) VALUES(AUTO_SEQ.NEXTVAL, '048J46CHDGET06', 10, 2, 4, 8);
INSERT INTO AUTO_INVOLUCRADO(AUTO_INVOLUCRADO_ID, NUMERO_SERIE, SINIESTRO_ID, ASEGURADORA_ID, MARCA_AUTO_ID, MODELO_AUTO_ID) VALUES(AUTO_SEQ.NEXTVAL, '0487DHEYCHEYE6', 10, 2, 4, 8);
INSERT INTO AUTO_INVOLUCRADO(AUTO_INVOLUCRADO_ID, NUMERO_SERIE, SINIESTRO_ID, ASEGURADORA_ID, MARCA_AUTO_ID, MODELO_AUTO_ID) VALUES(AUTO_SEQ.NEXTVAL, '7HEY63THEHEB21', 10, 2, 4, 8);
INSERT INTO AUTO_INVOLUCRADO(AUTO_INVOLUCRADO_ID, NUMERO_SERIE, SINIESTRO_ID, ASEGURADORA_ID, MARCA_AUTO_ID, MODELO_AUTO_ID) VALUES(AUTO_SEQ.NEXTVAL, 'MCNDHEY3651YBX', 10, 2, 4, 8);

--La inserción al historico se hace desde la programación, para un mejor control, cubriendo con la parte de programar la solucion a un requerimiento del caso de estudio en un trigger

--Comfirmación
COMMIT;