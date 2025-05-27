--------------------------------------------------------------inserciones-------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

----------------------------------------------tabla estado--------------------------------------------------------
INSERT INTO estado (descripcion) VALUES 
('finalizado'),
('archivado'),
('en_tramite'),
('en_revision'),
('rechazado'),
('esperando_docs'),
('en_auditoria'),
('observaciones'),
('apelacion'),
('verificacion');

----------------------------------------------tabla cliente--------------------------------------------------------
INSERT INTO cliente (dni, nombre, ap_mno, ap_pno, correo, telefono, direccion) VALUES
('RORS851215MDFMJF78', 'Sofía', 'Rojas', 'Romero', 'sofia.rojas@gmail.com', '5551234567', 'Calle Sol 123, Colonia Luna, Ciudad de México, México.'),
('ABCD123456HDFRSL01', 'Luis', 'Hernandez', 'Garcia', 'luis.hernandez@gmail.com', '5541264507', 'Calle Sol 456, Colonia Luna, Ciudad de México, México.'),
('EFGH789012MNTSLR02', 'Andrea', 'Rodríguez', 'Martínez', 'andrea.rodriguez@gmail.com', '5559876543', 'Avenida del Bosque 789, Colonia Primavera, Monterrey, México.'),
('IJKL345678TPZMDN03', 'Fernando', 'López', 'Pérez', 'fernando.lopez@gmail.com', '5557654321', 'Calle Las Palmas 123, Barrio Centro, Guadalajara, México.'),
('MNOP901234CDXGTR04', 'Valeria', 'Álvarez', 'González', 'valeria.alvarez@gmail.com', '5552468102', 'Avenida Independencia 456, Colonia Juárez, Puebla, México.'),
('QRST567890PLMXNV05', 'Miguel', 'Ramírez', 'Torres', 'miguel.ramirez@gmail.com', '5559081723', 'Calle Hidalgo 789, Barrio Mirador, Querétaro, México.'),
('UVWX123456MRRCLR06', 'Camila', 'Vargas', 'Reyes', 'camila.vargas@gmail.com', '5553141592', 'Avenida Reforma 123, Colonia Centro, Mérida, México.'),
('YZAB789012DFRMDC07', 'Isabela', 'Díaz', 'Morales', 'isabela.diaz@gmail.com', '5556060708', 'Calle Los Ángeles 456, Colonia Bosques, León, México.'),
('CDEF345678CMXLRS08', 'Diego', 'Cruz', 'Herrera', 'diego.cruz@gmail.com', '5554242424', 'Avenida Las Torres 789, Colonia San Pedro, Toluca, México.'),
('GHIJ901234TMPFRS09', 'Sonia', 'Flores', 'Ramos', 'sonia.flores@gmail.com', '5558081313', 'Calle Alameda 234, Colonia Vista Hermosa, Tijuana, México.');

----------------------------------------------tabla abogado--------------------------------------------------------
INSERT INTO abogado (cedula, nombre, ap_mno, ap_pno, correo, telefono, direccion) VALUES
('231205678901234', 'Denise', 'Vargas', 'Rubio', 'denise.vargas@gmail.com', '5551264567', 'Calle Sol 123, Colonia Luna, Ciudad de México, México.'),
('251110345678901', 'Jorge', 'Martinez', 'Hernandez', 'jorge.martinez@gmail.com', '5557896543', 'Calle Oro 456, Colonia Estrellas, Puebla, México.'),
('241208567890123', 'Isabel', 'Ramirez', 'Gomez', 'isabel.ramirez@gmail.com', '5556785432', 'Avenida Jardín 789, Colonia Alegría, Guadalajara, México.'),
('221206987654321', 'Ricardo', 'Lopez', 'Torres', 'ricardo.lopez@gmail.com', '5551230987', 'Calle Zafiro 234, Barrio del Sol, Monterrey, México.'),
('201204123456789', 'María', 'Gonzalez', 'Alvarez', 'maria.gonzalez@gmail.com', '5558765432', 'Avenida Horizonte 345, Colonia Nueva Era, Querétaro, México.'),
('211209345678012', 'Fernando', 'Reyes', 'Cruz', 'fernando.reyes@gmail.com', '5554321987', 'Calle Marfil 678, Colonia Bosques, Toluca, México.'),
('191203456789123', 'Ana', 'Perez', 'Morales', 'ana.perez@gmail.com', '5555674321', 'Avenida Esmeralda 890, Barrio Lago Azul, Mérida, México.'),
('181202567890456', 'Luis', 'Herrera', 'Diaz', 'luis.herrera@gmail.com', '5553456789', 'Calle Rubí 567, Barrio Primavera, Tijuana, México.'),
('211210654321098', 'Sofia', 'Romero', 'Vargas', 'sofia.romero@gmail.com', '5551235678', 'Calle Perla 678, Colonia Vista Hermosa, Ciudad de México, México.'),
('231207765432109', 'Camilo', 'Morales', 'Rojas', 'camilo.morales@gmail.com', '5559871234', 'Avenida Cristal 123, Colonia Cumbre, León, México.');

----------------------------------------------tabla procurador--------------------------------------------------------
INSERT INTO procurador (cedula, nombre, ap_mno, ap_pno, correo, telefono, direccion) VALUES
('251214567890321', 'Julieta', 'Mendoza', 'Hernández', 'julieta.mendoza@gmail.com', '5556789123', 'Avenida Cedros 456, Colonia Estrella, Ciudad de México, México.'),
('231203876543219', 'Roberto', 'Gómez', 'Martínez', 'roberto.gomez@gmail.com', '5557894561', 'Calle Primavera 123, Colonia Diamante, Monterrey, México.'),
('221205432198765', 'Alejandra', 'Ruiz', 'Vargas', 'alejandra.ruiz@gmail.com', '5555678902', 'Calle Luna 678, Barrio del Sol, Guadalajara, México.'),
('241209321098654', 'Javier', 'Santos', 'Díaz', 'javier.santos@gmail.com', '5553456781', 'Avenida Río 234, Colonia Bosques, Puebla, México.'),
('211208789012345', 'Lucía', 'Delgado', 'Morales', 'lucia.delgado@gmail.com', '5554321098', 'Calle Esmeralda 567, Barrio Jardín, Toluca, México.'),
('191201654789032', 'Emilio', 'Trejo', 'Reyes', 'emilio.trejo@gmail.com', '5551234678', 'Calle Rubí 890, Colonia Independencia, Mérida, México.'),
('201204890123456', 'Daniela', 'Estrada', 'Castillo', 'daniela.estrada@gmail.com', '5555670981', 'Avenida Cristal 345, Barrio San Pedro, Cancún, México.'),
('111207098765432', 'Santiago', 'Villanueva', 'Rojas', 'santiago.villanueva@gmail.com', '5557890123', 'Calle Perla 678, Barrio Vista Hermosa, León, México.'),
('221206123456789', 'Elena', 'Acosta', 'Romero', 'elena.acosta@gmail.com', '5556784321', 'Avenida Horizonte 123, Colonia Alegría, Tijuana, México.'),
('241210543218976', 'César', 'Carvajal', 'Flores', 'cesar.carvajal@gmail.com', '5553456789', 'Calle Cedro 456, Barrio Lago Azul, Ciudad de México, México.');

----------------------------------------------tabla expediente--------------------------------------------------------
INSERT INTO expediente (no_ete, dni_cte, descripcion, cedula_ado, cedula_pdor) VALUES
('EXP001', 'RORS851215MDFMJF78', 'Divorcio express', '231205678901234', '251214567890321'),
('EXP002', 'EFGH789012MNTSLR02', 'Demanda laboral', '251110345678901', '231203876543219'),
('EXP003', 'IJKL345678TPZMDN03', 'Asesoría fiscal', '241208567890123', '221205432198765'),
('EXP004', 'MNOP901234CDXGTR04', 'Custodia de menores', '221206987654321', '241209321098654'),
('EXP005', 'QRST567890PLMXNV05', 'Herencia testamentaria', '201204123456789', '211208789012345'),
('EXP006', 'UVWX123456MRRCLR06', 'Robo con violencia', '211209345678012', '191201654789032'),
('EXP007', 'YZAB789012DFRMDC07', 'Pensión alimenticia', '191203456789123', '201204890123456'),
('EXP008', 'CDEF345678CMXLRS08', 'Fraude bancario', '181202567890456', '111207098765432'),
('EXP009', 'GHIJ901234TMPFRS09', 'Arrendamiento de local', '211210654321098', '221206123456789'),
('EXP010', 'ABCD123456HDFRSL01', 'Demanda civil', '231207765432109', '241210543218976');

----------------------------------------------tabla ete_edo-------------------------------------------------------
INSERT INTO ete_edo (id_edo, no_ete, fecha_inicio, fecha_cambio) VALUES
(1, 'EXP001', '2023-01-15 09:00:00', '2023-04-20 10:00:00'),
(2, 'EXP002', '2022-03-10 10:30:00', '2022-12-10 12:00:00'),
(3, 'EXP003', '2024-05-05 08:00:00', NULL),
(1, 'EXP004', '2022-10-01 11:00:00', '2023-02-15 15:00:00'),
(2, 'EXP005', '2021-06-20 13:00:00', NULL),
(3, 'EXP006', '2023-09-10 14:00:00', NULL),
(1, 'EXP007', '2022-11-12 09:30:00', NULL),
(2, 'EXP008', '2021-02-01 10:00:00', NULL),
(3, 'EXP009', '2024-01-18 16:00:00', NULL),
(1, 'EXP010', '2023-07-22 08:15:00', '2023-12-01 10:45:00'),
(2, 'EXP010', '2023-12-01 10:45:00', NULL),
(2, 'EXP001', '2023-04-20 10:00:00', NULL),
(3, 'EXP002', '2022-12-10 12:00:00', NULL),
(2, 'EXP004', '2023-02-15 15:00:00', NULL);

----------------------------------------------tabla ete_ado-------------------------------------------------------
INSERT INTO ete_ado (cedula, no_ete, fecha_inicio, fecha_cambio) VALUES
('231205678901234', 'EXP001', '2023-01-15 09:00:00', '2023-04-20 10:00:00'),
('251110345678901', 'EXP002', '2022-03-10 10:30:00', '2022-12-10 12:00:00'),
('241208567890123', 'EXP003', '2024-05-05 08:00:00', NULL),
('221206987654321', 'EXP004', '2022-10-01 11:00:00', '2023-02-15 15:00:00'),
('201204123456789', 'EXP005', '2021-06-20 13:00:00', NULL),
('211209345678012', 'EXP006', '2023-09-10 14:00:00', NULL),
('191203456789123', 'EXP007', '2022-11-12 09:30:00', NULL),
('181202567890456', 'EXP008', '2021-02-01 10:00:00', '2021-06-15 10:30:00'),
('211210654321098', 'EXP009', '2024-01-18 16:00:00', NULL),
('231207765432109', 'EXP010', '2023-07-22 08:15:00', '2023-12-01 10:45:00'),
('231205678901234', 'EXP010', '2023-12-01 10:45:00', NULL),
('251110345678901', 'EXP001', '2023-04-20 10:00:00', NULL),
('241208567890123', 'EXP002', '2022-12-10 12:00:00', NULL),
('201204123456789', 'EXP004', '2023-02-15 15:00:00', NULL);

----------------------------------------------tabla ete_pdor-------------------------------------------------------
INSERT INTO ete_pdor (cedula, no_ete, fecha_inicio, fecha_cambio) VALUES
('251214567890321', 'EXP001', '2023-01-15 09:00:00', '2023-04-20 10:00:00'),
('231203876543219', 'EXP002', '2022-03-10 10:30:00', '2022-12-10 12:00:00'),
('221205432198765', 'EXP003', '2024-05-05 08:00:00', NULL),
('241209321098654', 'EXP004', '2022-10-01 11:00:00', '2023-02-15 15:00:00'),
('211208789012345', 'EXP005', '2021-06-20 13:00:00', NULL),
('191201654789032', 'EXP006', '2023-09-10 14:00:00', NULL),
('201204890123456', 'EXP007', '2022-11-12 09:30:00', NULL),
('111207098765432', 'EXP008', '2021-02-01 10:00:00', NULL),
('221206123456789', 'EXP009', '2024-01-18 16:00:00', NULL),
('241210543218976', 'EXP010', '2023-07-22 08:15:00', '2023-12-01 10:45:00'),
('201204890123456', 'EXP010', '2023-12-01 10:45:00', NULL),
('231203876543219', 'EXP001', '2023-04-20 10:00:00', NULL),
('221205432198765', 'EXP002', '2022-12-10 12:00:00', NULL),
('211208789012345', 'EXP004', '2023-02-15 15:00:00', NULL);