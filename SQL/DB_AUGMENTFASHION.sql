CREATE DATABASE IF NOT EXISTS DB_AUGMENTFASHION
DEFAULT CHARACTER SET utf8
COLLATE utf8_spanish_ci;

USE DB_AUGMENTFASHION;
-- -----------------------CATALOGOS------------------------- 

-- --------CATALOGO DE TIPOS DE ROPAS---------- 
CREATE TABLE CAT_TIPOS_ROPAS(
    NID_TIPO_ROPA INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CTIPO_ROPA VARCHAR(50) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_TIPO_ROPA PRIMARY KEY(NID_TIPO_ROPA),
    CONSTRAINT UQ_CTIPO_ROPA UNIQUE KEY CTIPO_ROPA(CTIPO_ROPA)
);

-- --------CATALOGO DE TIPOS DE MODAS---------- 
CREATE TABLE CAT_MODAS(
    NID_MODA INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CMODA VARCHAR(50) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_MODA PRIMARY KEY(NID_MODA),
    CONSTRAINT UQ_CMODA UNIQUE KEY CMATERIAL(CMODA)
);

-- --------CATALOGO DE COLORES---------- 
CREATE TABLE CAT_COLORES(
    NID_COLOR INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CCOLOR VARCHAR(50) NOT NULL,
    NRED INT(3) NOT NULL,
    NGREEN INT(3) NOT NULL,
    NBLUE INT(3) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_COLOR PRIMARY KEY(NID_COLOR),
    CONSTRAINT UQ_CCOLOR UNIQUE KEY CCOLOR(CCOLOR)
);

-- --------CATALOGO DE MATERIALES---------- 
CREATE TABLE CAT_MATERIALES(
    NID_MATERIAL INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CMATERIAL VARCHAR(50) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_MATERIAL PRIMARY KEY(NID_MATERIAL),
    CONSTRAINT UQ_CMATERIAL UNIQUE KEY CMATERIAL(CMATERIAL)
);

-- --------CATALOGO DE TIPOS DE USUARIOS---------- 
CREATE TABLE CAT_TIPO_USUARIOS(
    NID_TIPO_USUARIO INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CTIPO_USUARIO VARCHAR(50) NOT NULL,
	CONSTRAINT PK_NID_TIPO_USUARIO PRIMARY KEY(NID_TIPO_USUARIO),
    CONSTRAINT UQ_CTIPO_USUARIO UNIQUE KEY CTIPO_USUARIO(CTIPO_USUARIO)
);

-- --------CATALOGO DE CALLES---------- 
CREATE TABLE CAT_CALLES(
    NID_CALLE INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CCALLE VARCHAR(50) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_CALLE PRIMARY KEY(NID_CALLE),
    CONSTRAINT UQ_CCALLE UNIQUE KEY CCALLE(CCALLE)
);

-- --------CATALOGO DE COLONIAS---------- 
CREATE TABLE CAT_COLONIAS(
    NID_COLONIA INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CCOLONIA VARCHAR(50) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_COLONIA PRIMARY KEY(NID_COLONIA),
    CONSTRAINT UQ_CCOLONIA UNIQUE KEY CCOLONIA(CCOLONIA)
);

-- --------CATALOGO DE DELEGACIONES O MUNICIPIOS---------- 
CREATE TABLE CAT_DELEGACIONES_MUNICIPIOS(
    NID_DELEGACION_MUNICIPIO INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CDELEGACION_MUNICIPIO VARCHAR(50) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_DELEGACION_MUNICIPIO PRIMARY KEY(NID_DELEGACION_MUNICIPIO),
    CONSTRAINT UQ_DELEGACION_MUNICIPIO UNIQUE KEY CDELEGACION_MUNICIPIO(CDELEGACION_MUNICIPIO)
);

-- --------CATALOGO DE ESTADOS---------- 
CREATE TABLE CAT_ESTADOS(
    NID_ESTADO INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CESTADO VARCHAR(50) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_ESTADO PRIMARY KEY(NID_ESTADO),
    CONSTRAINT UQ_CESTADO UNIQUE KEY CESTADO(CESTADO)
);

-- --------CATALOGO DE PAISES---------- 
CREATE TABLE CAT_PAISES(
    NID_PAIS INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CPAIS VARCHAR(50) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_PAIS PRIMARY KEY(NID_PAIS),
    CONSTRAINT UQ_CPAIS UNIQUE KEY CPAIS(CPAIS)
);

-- --------CATALOGO DE CODIGOS POSTALES---------- 
CREATE TABLE CAT_CODIGOS_POSTALES(
    NID_CODIGO_POSTAL INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CCODIGO_POSTAL VARCHAR(50) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_CODIGO_POSTAL PRIMARY KEY(NID_CODIGO_POSTAL),
    CONSTRAINT UQ_CCODIGO_POSTAL UNIQUE KEY CPAIS(CCODIGO_POSTAL)
);

-- --------CATALOGO DE FORMAS DE PAGO---------- 
CREATE TABLE CAT_FORMAS_PAGO(
    NID_FORMAS_PAGO INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CFORMAS_PAGO VARCHAR(50) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_FORMAS_PAGO PRIMARY KEY(NID_FORMAS_PAGO),
    CONSTRAINT UQ_CFORMAS_PAGO UNIQUE KEY CFORMAS_PAGO(CFORMAS_PAGO)
);

-- ------------------TABLA DE ROPAS CON DESCRIPCION--------------------
CREATE TABLE TBL_ROPAS(
    NID_ROPA INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CROPA VARCHAR(50) NOT NULL,
    CDESCRIPCION TEXT NOT NULL,
    FPRECIO FLOAT NOT NULL,
    NID_TIPO_ROPA INT(10) UNSIGNED NOT NULL,
    NID_MODA INT(10) UNSIGNED NOT NULL,
    NID_COLOR INT(10) UNSIGNED NOT NULL,
    NID_MATERIAL INT(10) UNSIGNED NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
	DFECHA_ALTA DATE NOT NULL,
	DFECHA_BAJA DATE DEFAULT NULL,
	CONSTRAINT PK_NID_ROPA PRIMARY KEY(NID_ROPA),
    CONSTRAINT FK_TBL_ROP_CAT_TIP_ROP FOREIGN KEY (NID_TIPO_ROPA) REFERENCES CAT_TIPOS_ROPAS(NID_TIPO_ROPA),
    CONSTRAINT FK_TBL_ROP_CAT_MOD FOREIGN KEY (NID_MODA) REFERENCES CAT_MODAS(NID_MODA),
    CONSTRAINT FK_TBL_ROP_CAT_COL FOREIGN KEY (NID_COLOR) REFERENCES CAT_COLORES(NID_COLOR),
    CONSTRAINT FK_TBL_ROP_CAT_MAT FOREIGN KEY (NID_MATERIAL) REFERENCES CAT_MATERIALES(NID_MATERIAL)
);

CREATE TABLE TBL_DIRECCIONES(
    NID_DIRECCION INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    NID_PAIS INT(10) UNSIGNED NOT NULL,
    NID_ESTADO INT(10) UNSIGNED NOT NULL,
    NID_DELEGACION_MUNICIPIO INT(10) UNSIGNED NOT NULL,
    NID_CODIGO_POSTAL INT(10) UNSIGNED NOT NULL,
    NID_COLONIA INT(10) UNSIGNED NOT NULL,
    NID_CALLE INT(10) UNSIGNED NOT NULL,
    CMANZANA VARCHAR(5) NOT NULL,
    CLOTE VARCHAR(5) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
    DFECHA_ALTA DATE NOT NULL,
    DFECHA_BAJA DATE DEFAULT NULL,
    CONSTRAINT PK_NID_DIRECCION PRIMARY KEY(NID_DIRECCION),
    CONSTRAINT FK_TBL_DIR_CAT_PAIS FOREIGN KEY (NID_PAIS) REFERENCES CAT_PAISES(NID_PAIS),
    CONSTRAINT FK_TBL_DIR_CAT_EST FOREIGN KEY (NID_ESTADO) REFERENCES CAT_ESTADOS(NID_ESTADO),
    CONSTRAINT FK_TBL_DIR_CAT_DEL_MUN FOREIGN KEY (NID_DELEGACION_MUNICIPIO) REFERENCES CAT_DELEGACIONES_MUNICIPIOS(NID_DELEGACION_MUNICIPIO),
    CONSTRAINT FK_TBL_DIR_CAT_COD_POS FOREIGN KEY (NID_CODIGO_POSTAL) REFERENCES CAT_CODIGOS_POSTALES(NID_CODIGO_POSTAL),
    CONSTRAINT FX_TBL_DIR_CAT_COL FOREIGN KEY (NID_COLONIA) REFERENCES CAT_COLONIAS(NID_COLONIA),
    CONSTRAINT FK_TBL_DIR_CAT_CALLE FOREIGN KEY (NID_CALLE) REFERENCES CAT_CALLES(NID_CALLE)
);

CREATE TABLE TBL_PAGOS(
    NID_PAGO INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CPAGO VARCHAR(50) NOT NULL,
    NID_FORMAS_PAGO INT(10) UNSIGNED NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
    DFECHA_ALTA DATE NOT NULL,
    DFECHA_BAJA DATE DEFAULT NULL,
    CONSTRAINT PK_NID_PAGO PRIMARY KEY(NID_PAGO),
    CONSTRAINT FK_TBL_PAG_CAT_FOR_PAG FOREIGN KEY (NID_FORMAS_PAGO) REFERENCES CAT_FORMAS_PAGO(NID_FORMAS_PAGO)
);

CREATE TABLE TBL_USUARIOS(
    NID_USUARIO INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    CNOMBRE_USUARIO VARCHAR(50) NOT NULL,
    CAPELLIDOS_USUARIO VARCHAR(50) NOT NULL,
    CCORREO VARCHAR(50),
    CNICKNAME VARCHAR(50) NOT NULL,
    CPASSWORD VARCHAR(50) NOT NULL,
    NEDAD INT(3) NOT NULL,
    CGENERO VARCHAR(1) NOT NULL,
    NID_TIPO_USUARIO INT(10) UNSIGNED NOT NULL,
    NID_DIRECCION INT(10) UNSIGNED NOT NULL,
    NID_PAGO INT(10) UNSIGNED NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
    DFECHA_ALTA DATE NOT NULL,
    DFECHA_BAJA DATE DEFAULT NULL,
    CONSTRAINT PK_NID_USUARIO PRIMARY KEY(NID_USUARIO),
    CONSTRAINT FK_TBL_USR_CAT_TIP_USR FOREIGN KEY (NID_TIPO_USUARIO) REFERENCES CAT_TIPO_USUARIOS(NID_TIPO_USUARIO),
    CONSTRAINT FK_TBL_USR_TBL_DIR FOREIGN KEY (NID_DIRECCION) REFERENCES TBL_DIRECCIONES(NID_DIRECCION),
    CONSTRAINT FK_TBL_USR_TBL_PAG FOREIGN KEY (NID_PAGO) REFERENCES TBL_PAGOS(NID_PAGO)
);

CREATE TABLE TBL_INVENTARIO(
    NID_INVENTARIO INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    NID_ROPA INT(10) UNSIGNED NOT NULL,
    CTALLA VARCHAR(5) NOT NULL,
    NCANTIDAD INT(10) NOT NULL,
    BHABILITADO BOOLEAN NOT NULL,
    DFECHA_ALTA DATE NOT NULL,
    DFECHA_BAJA DATE DEFAULT NULL,
    CONSTRAINT PK_NID_INVENTARIO PRIMARY KEY(NID_INVENTARIO),
    CONSTRAINT FK_TBL_INV_TBL_ROP FOREIGN KEY (NID_ROPA) REFERENCES TBL_ROPAS(NID_ROPA)
);

CREATE TABLE TBL_COMPRAS(
    NID_COMPRA INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    NID_USUARIO INT(10) UNSIGNED NOT NULL,
    FPRECIO_TOTAL FLOAT NOT NULL,
    DFECHA DATE NOT NULL,
    CONSTRAINT PK_NID_COMPRA PRIMARY KEY(NID_COMPRA),
    CONSTRAINT FK_TBL_COM_TBL_USR FOREIGN KEY (NID_USUARIO) REFERENCES TBL_USUARIOS(NID_USUARIO)
);

CREATE TABLE TBL_PRODUCTOS_VENDIDOS(
    NID_PRODUCTO_VENDIDO INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    NID_COMPRA INT(10) UNSIGNED NOT NULL,
    NID_INVENTARIO INT(10) UNSIGNED NOT NULL,
    NCANTIDAD INT(10) NOT NULL,
    CONSTRAINT PK_NID_PRODUCTO_VENDIDO PRIMARY KEY(NID_PRODUCTO_VENDIDO),
    CONSTRAINT FK_TBL_PRO_VEN_TBL_COM FOREIGN KEY (NID_COMPRA) REFERENCES TBL_COMPRAS(NID_COMPRA),
    CONSTRAINT FK_TBL_PRO_VEN_TBL_INV FOREIGN KEY (NID_INVENTARIO) REFERENCES TBL_INVENTARIO(NID_INVENTARIO)
);

-- Creacion de Procedimientos --
DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_TIPO_ROPA(
    IN pcNombre VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_TIPOS_ROPAS WHERE CTIPO_ROPA = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_TIPO_ROPA FROM CAT_TIPOS_ROPAS WHERE CTIPO_ROPA = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_TIPOS_ROPAS(CTIPO_ROPA,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,1,NOW());
        SET pcValor = CONVERT((SELECT NID_TIPO_ROPA FROM CAT_TIPOS_ROPAS WHERE CTIPO_ROPA = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;


DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_MODA(
    IN pcNombre VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_MODAS WHERE CMODA = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_MODA FROM CAT_MODAS WHERE CMODA = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_MODAS(CMODA,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,1,NOW());
        SET pcValor = CONVERT((SELECT NID_MODA FROM CAT_MODAS WHERE CMODA = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_COLORES(
    IN pcNombre VARCHAR(50),
    IN pcRed INT,
    IN pcGreen INT,
    IN pcBlue INT,
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_COLORES WHERE CCOLOR = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_COLOR FROM CAT_COLORES WHERE CCOLOR = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,pcRed,pcGreen,pcBlue,1,NOW());
        SET pcValor = CONVERT((SELECT NID_COLOR FROM CAT_COLORES WHERE CCOLOR = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_MATERIAL(
    IN pcNombre VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_MATERIALES WHERE CMATERIAL = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_MATERIAL FROM CAT_MATERIALES WHERE CMATERIAL = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_MATERIALES(CMATERIAL,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,1,NOW());
        SET pcValor = CONVERT((SELECT NID_MATERIAL FROM CAT_MATERIALES WHERE CMATERIAL = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_TIPO_USUARIO(
    IN pcNombre VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_TIPO_USUARIOS WHERE CTIPO_USUARIO = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_TIPO_USUARIO FROM CAT_TIPO_USUARIOS WHERE CTIPO_USUARIO = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_TIPO_USUARIOS(CTIPO_USUARIO,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre);
        SET pcValor = CONVERT((SELECT NID_TIPO_USUARIO FROM CAT_TIPO_USUARIOS WHERE CTIPO_USUARIO = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_CALLE(
    IN pcNombre VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_CALLES WHERE CCALLE = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_CALLE FROM CAT_CALLES WHERE CCALLE = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_CALLES(CCALLE,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,1,NOW());
        SET pcValor = CONVERT((SELECT NID_CALLE FROM CAT_CALLES WHERE CCALLE = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_COLONIA(
    IN pcNombre VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_COLONIAS WHERE CCOLONIA = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_COLONIA FROM CAT_COLONIAS WHERE CCOLONIA = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_COLONIAS(CCOLONIA,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,1,NOW());
        SET pcValor = CONVERT((SELECT NID_COLONIA FROM CAT_COLONIAS WHERE CCOLONIA = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_DELEGACION_MUNICIPIO(
    IN pcNombre VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_DELEGACIONES_MUNICIPIOS WHERE CDELEGACION_MUNICIPIO = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_DELEGACION_MUNICIPIO FROM CAT_DELEGACIONES_MUNICIPIOS WHERE CDELEGACION_MUNICIPIO = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_DELEGACIONES_MUNICIPIOS(CDELEGACION_MUNICIPIO,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,1,NOW());
        SET pcValor = CONVERT((SELECT NID_DELEGACION_MUNICIPIO FROM CAT_DELEGACIONES_MUNICIPIOS WHERE CDELEGACION_MUNICIPIO = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_ESTADO(
    IN pcNombre VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_ESTADOS WHERE CESTADO = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_ESTADO FROM CAT_ESTADOS WHERE CESTADO = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_ESTADOS(CESTADO,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,1,NOW());
        SET pcValor = CONVERT((SELECT NID_ESTADO FROM CAT_ESTADOS WHERE CESTADO = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_PAIS(
    IN pcNombre VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_PAISES WHERE CPAIS = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_PAIS FROM CAT_PAISES WHERE CPAIS = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_PAISES(CPAIS,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,1,NOW());
        SET pcValor = CONVERT((SELECT NID_PAIS FROM CAT_PAISES WHERE CPAIS = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_CODIGO_POSTAL(
    IN pcNombre VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_CODIGOS_POSTALES WHERE CCODIGO_POSTAL = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_CODIGO_POSTAL FROM CAT_CODIGOS_POSTALES WHERE CCODIGO_POSTAL = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_CODIGOS_POSTALES(CCODIGO_POSTAL,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,1,NOW());
        SET pcValor = CONVERT((SELECT NID_CODIGO_POSTAL FROM CAT_CODIGOS_POSTALES WHERE CCODIGO_POSTAL = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_FORMA_PAGO(
    IN pcNombre VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_FORMAS_PAGO WHERE CFORMAS_PAGO = pcNombre) THEN
        SET pcValor = CONVERT((SELECT NID_FORMAS_PAGO FROM CAT_FORMAS_PAGO WHERE CFORMAS_PAGO = pcNombre), UNSIGNED);
    ELSE
        INSERT INTO CAT_FORMAS_PAGO(CFORMAS_PAGO,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,1,NOW());
        SET pcValor = CONVERT((SELECT NID_FORMAS_PAGO FROM CAT_FORMAS_PAGO WHERE CFORMAS_PAGO = pcNombre), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

-- Procesimientos de Tablas --
DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_ROPA(
    IN pcRopa VARCHAR(50),
    IN pcDescripcion TEXT,
    IN pfPrecio FLOAT,
    IN pcModa VARCHAR(50),
    IN pcColor VARCHAR(50),
    IN pnRed INT,
    IN pnGreen INT,
    IN pnBlue INT,
    IN pcMaterial VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT NID_ROPA FROM TBL_ROPAS WHERE CDESCRIPCION = pcDescripcion) THEN
        SET pcValor = CONVERT((SELECT NID_ROPA FROM TBL_ROPAS WHERE CDESCRIPCION = pcDescripcion), UNSIGNED);
    ELSE
        DECLARE idTipoRopa INT, idModa INT, idColor INT, idMaterial INT;
        CALL SPD_INSERTA_TIPO_ROPA(pcRopa,idTipoRopa);
        CALL SPD_INSERTA_MODA(pcModa,idModa);
        CALL SPD_INSERTA_COLORES(pcColor,pnRed,pnGreen,pnBlue,idColor);
        CALL SPD_INSERTA_MATERIAL(pcMaterial,idMaterial);

        INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
        VALUES(pcRopa,pcDescripcion,pfPrecio,idTipoRopa,idModa,idColor,idMaterial,1,NOW());
        SET pcValor = CONVERT((SELECT NID_ROPA FROM TBL_ROPAS WHERE CDESCRIPCION = pcDescripcion), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_DIRECCION(
    IN pcPais VARCHAR(50),
    IN pcEstado VARCHAR(50),
    IN pcDelegacion VARCHAR(50),
    IN pcCodigoPostal VARCHAR(50),
    IN pcColonia VARCHAR(50),
    IN pcCalle VARCHAR(50),
    IN pcManzana VARCHAR(5),
    IN pcLote VARCHAR(5),
    OUT pcValor INT)
BEGIN
    DECLARE idPais INT, idEstado INT, idDelegacion INT, idCodigoPostal INT, idColonia INT, idCalle INT;
    CALL SPD_INSERTA_PAIS(pcPais,idPais);
    CALL SPD_INSERTA_ESTADO(pcEstado,idEstado);
    CALL SPD_INSERTA_DELEGACION_MUNICIPIO(pcDelegacion,idDelegacion);
    CALL SPD_INSERTA_CODIGO_POSTAL(pcCodigoPostal,idCodigoPostal);
    CALL SPD_INSERTA_COLONIA(pcColonia,idColonia);
    CALL SPD_INSERTA_CALLE(pcCalle,idCalle);

    IF EXISTS(SELECT * FROM TBL_DIRECCIONES 
    WHERE NID_PAIS = idPais
    AND NID_ESTADO = idEstado
    AND NID_DELEGACION_MUNICIPIO = idDelegacion
    AND NID_CODIGO_POSTAL = idCodigoPostal
    AND NID_COLONIA = idColonia
    AND NID_CALLE = CALL idCalle
    AND CMANZANA = pcManzana
    AND CLOTE = pcLote) THEN
        SET pcValor = CONVERT((SELECT NID_DIRECCION FROM TBL_DIRECCIONES 
        WHERE NID_PAIS = idPais
        AND NID_ESTADO = idEstado
        AND NID_DELEGACION_MUNICIPIO = idDelegacion
        AND NID_CODIGO_POSTAL = idCodigoPostal
        AND NID_COLONIA = idColonia
        AND NID_CALLE = CALL idCalle
        AND CMANZANA = pcManzana
        AND CLOTE = pcLote), UNSIGNED);
    ELSE
        INSERT INTO TBL_DIRECCIONES(NID_PAIS,NID_ESTADO,NID_DELEGACION_MUNICIPIO,NID_CODIGO_POSTAL,NID_COLONIA,NID_CALLE,CMANZANA,CLOTE,BHABILITADO,DFECHA_ALTA)
        VALUES(idPais,idEstado,idDelegacion,idCodigoPostal,idColonia,idCalle,pcManzana,pcLote,1,NOW());
        SET pcValor = CONVERT((SELECT NID_DIRECCION FROM TBL_DIRECCIONES 
        WHERE NID_PAIS = idPais
        AND NID_ESTADO = idEstado
        AND NID_DELEGACION_MUNICIPIO = idDelegacion
        AND NID_CODIGO_POSTAL = idCodigoPostal
        AND NID_COLONIA = idColonia
        AND NID_CALLE = CALL idCalle
        AND CMANZANA = pcManzana
        AND CLOTE = pcLote), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_PAGO(
    IN pcPago VARCHAR(50),
    IN pcFormaPago VARCHAR(50),
    OUT pcValor INT)
BEGIN
    DECLARE idFormaPago INT;
    CALL SPD_INSERTA_FORMA_PAGO(pcFormaPago,idFormaPago);

    IF EXISTS(SELECT * FROM TBL_PAGOS WHERE CPAGO = pcPago) THEN
        SET pcValor = CONVERT((SELECT NID_DIRECCION FROM TBL_PAGOS WHERE CPAGO = pcPago), UNSIGNED);
    ELSE
        INSERT INTO TBL_PAGOS(CPAGO,NID_FORMAS_PAGO,BHABILITADO,DFECHA_ALTA)
        VALUES(pcPago,idFormaPago,1,NOW());
        SET pcValor = CONVERT((SELECT NID_DIRECCION FROM TBL_PAGOS WHERE CPAGO = pcPago), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_USUARIO(
    IN pcNombre VARCHAR(50),
    IN pcApellidos VARCHAR(50),
    IN pcCorreo VARCHAR(50),
    IN pcNickname VARCHAR(50),
    IN pcPassword VARCHAR(50),
    IN pnEdad INT,
    IN pcGenero VARCHAR(1),
    IN pcTipoUsuario VARCHAR(50),
    IN pcPais VARCHAR(50),
    IN pcEstado VARCHAR(50),
    IN pcDelegacion VARCHAR(50),
    IN pcCodigoPostal VARCHAR(50),
    IN pcColonia VARCHAR(50),
    IN pcCalle VARCHAR(50),
    IN pcManzana VARCHAR(5),
    IN pcLote VARCHAR(5),
    IN pcPago VARCHAR(50),
    IN pcFormaPago VARCHAR(50),
    OUT pcValor INT)
BEGIN
    DECLARE idTipoUsuario INT, idDirecion INT, idPago INT;
    CALL SPD_INSERTA_TIPO_USUARIO(pcTipoUsuario,idTipoUsuario);
    CALL SPD_INSERTA_DIRECCION(pcPais,pcEstado,pcDelegacion,pcCodigoPostal,pcColonia,pcCalle,pcManzana,pcLote,idDirecion);
    CALL SPD_INSERTA_FORMA_PAGO(pcPago,pcFormaPago,idPago);

    IF EXISTS(SELECT * FROM TBL_USUARIOS WHERE CCORREO = pcCorreo) THEN
        SET pcValor = CONVERT((SELECT NID_USUARIO FROM TBL_USUARIOS WHERE CCORREO = pcCorreo), UNSIGNED);
    ELSE
        INSERT INTO TBL_USUARIOS(CNOMBRE_USUARIO,CAPELLIDOS_USUARIO,CCORREO,CNICKNAME,CPASSWORD,NEDAD,CGENERO,NID_DIRECCION,NID_PAGO,BHABILITADO,DFECHA_ALTA)
        VALUES(pcNombre,pcApellidos,pcCorreo,pcNickname,pcPassword,pnEdad,pcGenero,idTipoUsuario,idDirecion,idPago,1,NOW());
        SET pcValor = CONVERT((SELECT NID_USUARIO FROM TBL_USUARIOS WHERE CCORREO = pcCorreo), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_INVENTARIO(
    IN pcRopa VARCHAR(50),
    IN pcDescripcion TEXT,
    IN pfPrecio FLOAT,
    IN pcModa VARCHAR(50),
    IN pcColor VARCHAR(50),
    IN pnRed INT,
    IN pnGreen INT,
    IN pnBlue INT,
    IN pcMaterial VARCHAR(50),
    IN pcTalla VARCHAR(5),
    IN pnCantidad INT,
    OUT pcValor INT)
BEGIN
    DECLARE idRopa INT;
    CALL SPD_INSERTA_ROPA(pcRopa,pcDescripcion,pfPrecio,pcModa,pcColor,pnRed,pnGreen,pnBlue,pcMaterial,idRopa);
    IF EXISTS(SELECT NID_INVENTARIO FROM TBL_INVENTARIO WHERE NID_ROPA = idRopa AND CTALLA = pcTalla) THEN
        SET pcValor = CONVERT((SELECT NID_INVENTARIO FROM TBL_INVENTARIO WHERE NID_ROPA = idRopa AND CTALLA = pcTalla), UNSIGNED);
    ELSE
        INSERT INTO TBL_INVENTARIO(NID_ROPA,CTALLA, NCANTIDAD,BHABILITADO,DFECHA_ALTA)
        VALUES(idRopa,pcTalla,pnCantidad,1,NOW());
        SET pcValor = CONVERT((SELECT NID_INVENTARIO FROM TBL_INVENTARIO WHERE NID_ROPA = idRopa AND CTALLA = pcTalla), UNSIGNED);
    END IF;
END
$$ DELIMITER ;

-- Llenado del Catalogo Tipos de Ropas --
INSERT INTO CAT_TIPOS_ROPAS(CTIPO_ROPA,BHABILITADO,DFECHA_ALTA)
VALUES("Pantalon",1,NOW());
INSERT INTO CAT_TIPOS_ROPAS(CTIPO_ROPA,BHABILITADO,DFECHA_ALTA)
VALUES("Blusa",1,NOW());
INSERT INTO CAT_TIPOS_ROPAS(CTIPO_ROPA,BHABILITADO,DFECHA_ALTA)
VALUES("Camiseta",1,NOW());
INSERT INTO CAT_TIPOS_ROPAS(CTIPO_ROPA,BHABILITADO,DFECHA_ALTA)
VALUES("Vestido",1,NOW());
INSERT INTO CAT_TIPOS_ROPAS(CTIPO_ROPA,BHABILITADO,DFECHA_ALTA)
VALUES("Pijama",1,NOW());
INSERT INTO CAT_TIPOS_ROPAS(CTIPO_ROPA,BHABILITADO,DFECHA_ALTA)
VALUES("Falda",1,NOW());
INSERT INTO CAT_TIPOS_ROPAS(CTIPO_ROPA,BHABILITADO,DFECHA_ALTA)
VALUES("Sueter",1,NOW());
INSERT INTO CAT_TIPOS_ROPAS(CTIPO_ROPA,BHABILITADO,DFECHA_ALTA)
VALUES("Pants",1,NOW());

-- Llenado del Catalogo de Modas --
INSERT INTO CAT_MODAS(CMODA,BHABILITADO,DFECHA_ALTA)
VALUES("Althleisure",1,NOW());
INSERT INTO CAT_MODAS(CMODA,BHABILITADO,DFECHA_ALTA)
VALUES("Sport",1,NOW());
INSERT INTO CAT_MODAS(CMODA,BHABILITADO,DFECHA_ALTA)
VALUES("Casual",1,NOW());
INSERT INTO CAT_MODAS(CMODA,BHABILITADO,DFECHA_ALTA)
VALUES("Desconstruccionista",1,NOW());
INSERT INTO CAT_MODAS(CMODA,BHABILITADO,DFECHA_ALTA)
VALUES("Vaquera",1,NOW());
INSERT INTO CAT_MODAS(CMODA,BHABILITADO,DFECHA_ALTA)
VALUES("Retro",1,NOW());
INSERT INTO CAT_MODAS(CMODA,BHABILITADO,DFECHA_ALTA)
VALUES("Hippie",1,NOW());

-- Lenado del Catalogo de Colores
INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
VALUES("Negro",0,0,0,1,NOW());
INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
VALUES("Rojo",255,0,0,1,NOW());
INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
VALUES("Morado",80,0,255,1,NOW());
INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
VALUES("Amarrillo",255,255,0,1,NOW());
INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
VALUES("Azul",0,0,255,1,NOW());
INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
VALUES("Verde",0,255,0,1,NOW());
INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
VALUES("Azul Aqua",19,142,196,1,NOW());
INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
VALUES("Rosa",233,69,215,1,NOW());
INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
VALUES("Verde Bandera",0,85,10,1,NOW());
INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
VALUES("Naranja",228,82,9,1,NOW());
INSERT INTO CAT_COLORES(CCOLOR,NRED,NGREEN,NBLUE,BHABILITADO,DFECHA_ALTA)
VALUES("Aquamarina",11,199,152,1,NOW());

-- Llenado del Catalogo de Materiales --
INSERT INTO CAT_MATERIALES(CMATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Algodon",1,NOW());
INSERT INTO CAT_MATERIALES(CMATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Poliester",1,NOW());
INSERT INTO CAT_MATERIALES(CMATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Lana",1,NOW());
INSERT INTO CAT_MATERIALES(CMATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Satin",1,NOW());
INSERT INTO CAT_MATERIALES(CMATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Afelpado",1,NOW());
INSERT INTO CAT_MATERIALES(CMATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Gamuza",1,NOW());
INSERT INTO CAT_MATERIALES(CMATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Gabardina",1,NOW());
INSERT INTO CAT_MATERIALES(CMATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Mezclilla",1,NOW());

-- Llenado del Catalogo de Tipos de Usuarios -- 
INSERT INTO CAT_TIPO_USUARIOS(CTIPO_USUARIO)
VALUES("Administrador");
INSERT INTO CAT_TIPO_USUARIOS(CTIPO_USUARIO)
VALUES("Cliente");

-- Llenado de Catalogo de Calles --
INSERT INTO CAT_CALLES(CCALLE,BHABILITADO,DFECHA_ALTA)
VALUES("Golondrina Rustica",1,NOW());
INSERT INTO CAT_CALLES(CCALLE,BHABILITADO,DFECHA_ALTA)
VALUES("San Salvador",1,NOW());
INSERT INTO CAT_CALLES(CCALLE,BHABILITADO,DFECHA_ALTA)
VALUES("Colombia",1,NOW());
INSERT INTO CAT_CALLES(CCALLE,BHABILITADO,DFECHA_ALTA)
VALUES("Aristoteles",1,NOW());
INSERT INTO CAT_CALLES(CCALLE,BHABILITADO,DFECHA_ALTA)
VALUES("Astronomos",1,NOW());
INSERT INTO CAT_CALLES(CCALLE,BHABILITADO,DFECHA_ALTA)
VALUES("Matematicos",1,NOW());
INSERT INTO CAT_CALLES(CCALLE,BHABILITADO,DFECHA_ALTA)
VALUES("Feliz de Azahra",1,NOW());
INSERT INTO CAT_CALLES(CCALLE,BHABILITADO,DFECHA_ALTA)
VALUES("Escandon",1,NOW());
INSERT INTO CAT_CALLES(CCALLE,BHABILITADO,DFECHA_ALTA)
VALUES("Calle 10",1,NOW());
INSERT INTO CAT_CALLES(CCALLE,BHABILITADO,DFECHA_ALTA)
VALUES("Fisicos",1,NOW());

-- Llenado de Colonias --
INSERT INTO CAT_COLONIAS(CCOLONIA,BHABILITADO,DFECHA_ALTA)
VALUES("Golondrinas",1,NOW());
INSERT INTO CAT_COLONIAS(CCOLONIA,BHABILITADO,DFECHA_ALTA)
VALUES("San Jose Xalostoc",1,NOW());
INSERT INTO CAT_COLONIAS(CCOLONIA,BHABILITADO,DFECHA_ALTA)
VALUES("San Pedro de los Pinos",1,NOW());
INSERT INTO CAT_COLONIAS(CCOLONIA,BHABILITADO,DFECHA_ALTA)
VALUES("Esacandon",1,NOW());
INSERT INTO CAT_COLONIAS(CCOLONIA,BHABILITADO,DFECHA_ALTA)
VALUES("Piloto",1,NOW());
INSERT INTO CAT_COLONIAS(CCOLONIA,BHABILITADO,DFECHA_ALTA)
VALUES("El Rodeo",1,NOW());
INSERT INTO CAT_COLONIAS(CCOLONIA,BHABILITADO,DFECHA_ALTA)
VALUES("Tacubaya",1,NOW());
INSERT INTO CAT_COLONIAS(CCOLONIA,BHABILITADO,DFECHA_ALTA)
VALUES("San Miguel",1,NOW());
INSERT INTO CAT_COLONIAS(CCOLONIA,BHABILITADO,DFECHA_ALTA)
VALUES("Plateros",1,NOW());
INSERT INTO CAT_COLONIAS(CCOLONIA,BHABILITADO,DFECHA_ALTA)
VALUES("Golondrinas 1ra Seccion",1,NOW());

-- Llenado de Delegaciones Municipios --
INSERT INTO CAT_DELEGACIONES_MUNICIPIOS(CDELEGACION_MUNICIPIO,BHABILITADO,DFECHA_ALTA)
VALUES("Alvaro Obregon",1,NOW());
INSERT INTO CAT_DELEGACIONES_MUNICIPIOS(CDELEGACION_MUNICIPIO,BHABILITADO,DFECHA_ALTA)
VALUES("Miguel Hidalgo",1,NOW());
INSERT INTO CAT_DELEGACIONES_MUNICIPIOS(CDELEGACION_MUNICIPIO,BHABILITADO,DFECHA_ALTA)
VALUES("Coxquihui",1,NOW());
INSERT INTO CAT_DELEGACIONES_MUNICIPIOS(CDELEGACION_MUNICIPIO,BHABILITADO,DFECHA_ALTA)
VALUES("Espinal",1,NOW());
INSERT INTO CAT_DELEGACIONES_MUNICIPIOS(CDELEGACION_MUNICIPIO,BHABILITADO,DFECHA_ALTA)
VALUES("Tlalpan",1,NOW());
INSERT INTO CAT_DELEGACIONES_MUNICIPIOS(CDELEGACION_MUNICIPIO,BHABILITADO,DFECHA_ALTA)
VALUES("Coyutla",1,NOW());
INSERT INTO CAT_DELEGACIONES_MUNICIPIOS(CDELEGACION_MUNICIPIO,BHABILITADO,DFECHA_ALTA)
VALUES("Gustavo A. Madero",1,NOW());
INSERT INTO CAT_DELEGACIONES_MUNICIPIOS(CDELEGACION_MUNICIPIO,BHABILITADO,DFECHA_ALTA)
VALUES("Poza Rica",1,NOW());
INSERT INTO CAT_DELEGACIONES_MUNICIPIOS(CDELEGACION_MUNICIPIO,BHABILITADO,DFECHA_ALTA)
VALUES("Papantla",1,NOW());
INSERT INTO CAT_DELEGACIONES_MUNICIPIOS(CDELEGACION_MUNICIPIO,BHABILITADO,DFECHA_ALTA)
VALUES("Ecatepec",1,NOW());

INSERT INTO CAT_ESTADOS(CESTADO,BHABILITADO,DFECHA_ALTA)
VALUES("Ciudad de Mexico",1,NOW());
INSERT INTO CAT_ESTADOS(CESTADO,BHABILITADO,DFECHA_ALTA)
VALUES("Veracruz",1,NOW());
INSERT INTO CAT_ESTADOS(CESTADO,BHABILITADO,DFECHA_ALTA)
VALUES("Estado de Mexico",1,NOW());
INSERT INTO CAT_ESTADOS(CESTADO,BHABILITADO,DFECHA_ALTA)
VALUES("Jalisco",1,NOW());
INSERT INTO CAT_ESTADOS(CESTADO,BHABILITADO,DFECHA_ALTA)
VALUES("Tamaulipas",1,NOW());
INSERT INTO CAT_ESTADOS(CESTADO,BHABILITADO,DFECHA_ALTA)
VALUES("Colima",1,NOW());
INSERT INTO CAT_ESTADOS(CESTADO,BHABILITADO,DFECHA_ALTA)
VALUES("Campeche",1,NOW());
INSERT INTO CAT_ESTADOS(CESTADO,BHABILITADO,DFECHA_ALTA)
VALUES("Yucatan",1,NOW());
INSERT INTO CAT_ESTADOS(CESTADO,BHABILITADO,DFECHA_ALTA)
VALUES("Tabasco",1,NOW());
INSERT INTO CAT_ESTADOS(CESTADO,BHABILITADO,DFECHA_ALTA)
VALUES("Baja California",1,NOW());

-- Llenado Catalogo de Paises --
INSERT INTO CAT_PAISES(CPAIS,BHABILITADO,DFECHA_ALTA)
VALUES("MEXICO",1,NOW());

-- llenado de Catalogo de Codigos Postales --
INSERT INTO CAT_CODIGOS_POSTALES(CCODIGO_POSTAL,BHABILITADO,DFECHA_ALTA)
VALUES("01270",1,NOW());
INSERT INTO CAT_CODIGOS_POSTALES(CCODIGO_POSTAL,BHABILITADO,DFECHA_ALTA)
VALUES("01280",1,NOW());
INSERT INTO CAT_CODIGOS_POSTALES(CCODIGO_POSTAL,BHABILITADO,DFECHA_ALTA)
VALUES("01290",1,NOW());
INSERT INTO CAT_CODIGOS_POSTALES(CCODIGO_POSTAL,BHABILITADO,DFECHA_ALTA)
VALUES("09370",1,NOW());
INSERT INTO CAT_CODIGOS_POSTALES(CCODIGO_POSTAL,BHABILITADO,DFECHA_ALTA)
VALUES("09570",1,NOW());
INSERT INTO CAT_CODIGOS_POSTALES(CCODIGO_POSTAL,BHABILITADO,DFECHA_ALTA)
VALUES("10270",1,NOW());
INSERT INTO CAT_CODIGOS_POSTALES(CCODIGO_POSTAL,BHABILITADO,DFECHA_ALTA)
VALUES("32270",1,NOW());
INSERT INTO CAT_CODIGOS_POSTALES(CCODIGO_POSTAL,BHABILITADO,DFECHA_ALTA)
VALUES("05270",1,NOW());
INSERT INTO CAT_CODIGOS_POSTALES(CCODIGO_POSTAL,BHABILITADO,DFECHA_ALTA)
VALUES("08270",1,NOW());
INSERT INTO CAT_CODIGOS_POSTALES(CCODIGO_POSTAL,BHABILITADO,DFECHA_ALTA)
VALUES("09270",1,NOW());

-- Llenado de Catalogo de Formas de Pago --
INSERT INTO CAT_FORMAS_PAGO(CFORMAS_PAGO,BHABILITADO,DFECHA_ALTA)
VALUES("Tarjeta Credito",1,NOW());
INSERT INTO CAT_FORMAS_PAGO(CFORMAS_PAGO,BHABILITADO,DFECHA_ALTA)
VALUES("Tarjeta Debito",1,NOW());
INSERT INTO CAT_FORMAS_PAGO(CFORMAS_PAGO,BHABILITADO,DFECHA_ALTA)
VALUES("Pay Pal",1,NOW());

-- Llenado de Tabla Ropa -- 
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Blusa de Cuello V",
"Prenda de Mujer color rosa, cuya tendencia se ve en las chicas jóvenes, tiene mangas Mariposa además de un cuello cortado en V.",
149.99,2,3,7,1,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Blusa de Cuello V",
"Prenda de Mujer color verde, cuya tendencia se ve en las chicas jóvenes, tiene mangas Mariposa además de un cuello cortado en V.",
149.99,2,3,5,1,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Blusa de Cuello V",
"Prenda de Mujer color amarillo, cuya tendencia se ve en las chicas jóvenes, tiene mangas Mariposa además de un cuello cortado en V.",
149.99,2,3,3,1,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Pantalon Vaquero",
"Prenda de Hombre color azul, cuyo corte favorece el realce de los gluteos para aquellos hombres que lo deseen.",
239.99,1,5,4,8,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Pantalon Vaquero",
"Prenda de Hombre color negro, cuyo corte favorece el realce de los gluteos para aquellos hombres que lo deseen.",
239.99,1,5,1,8,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Pantalon Vaquero",
"Prenda de Hombre color verde, cuyo corte favorece el realce de los gluteos para aquellos hombres que lo deseen.",
239.99,1,5,5,8,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Pantalon de Gabardina",
"Prenda de Hombre color verde, cuyo corte favorece el realce de los gluteos para aquellos hombres que lo deseen.",
239.99,1,3,5,7,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Pantalon de Gabardina",
"Prenda de Hombre color amarillo, cuyo corte favorece el realce de los gluteos para aquellos hombres que lo deseen.",
239.99,1,3,3,7,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Pantalon de Gabardina",
"Prenda de Hombre color azul, cuyo corte favorece el realce de los gluteos para aquellos hombres que lo deseen.",
239.99,1,3,4,7,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Pantalon de Gabardina",
"Prenda de Hombre color rosa, cuyo corte favorece el realce de los gluteos para aquellos hombres que lo deseen.",
239.99,1,3,7,7,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Pantalon de Gabardina",
"Prenda de Hombre color naranja, cuyo corte favorece el realce de los gluteos para aquellos hombres que lo deseen.",
239.99,1,3,9,7,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Pantalon de Gabardina",
"Prenda de Hombre color verde bandera, cuyo corte favorece el realce de los gluteos para aquellos hombres que lo deseen.",
239.99,1,3,8,7,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Juego de Pijama",
"Juego de prendas para dormir unisex color amarillo. Hechas a base de algodon, ideal para tener un descanso placentero.",
149.99,5,2,3,1,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Juego de Pijama",
"Juego de prendas para dormir unisex color azul. Hechas a base de algodon, ideal para tener un descanso placentero.",
149.99,5,2,4,1,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Juego de Pijama",
"Juego de prendas para dormir unisex color rosa. Hechas a base de algodon, ideal para tener un descanso placentero.",
149.99,5,2,7,1,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Camisa de vestir",
"Prenda para caballero, hecha con corte hecho para todo evento formal de color rosa",
299.99,3,6,7,2,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Camisa de vestir",
"Prenda para caballero, hecha con corte hecho para todo evento formal de color azul",
299.99,3,6,4,2,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Camisa de vestir",
"Prenda para caballero, hecha con corte hecho para todo evento formal de color morado",
299.99,3,6,2,2,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Camisa de vestir",
"Prenda para caballero, hecha con corte hecho para todo evento formal de color verde",
299.99,3,6,5,2,1,NOW());
INSERT INTO TBL_ROPAS(CROPA,CDESCRIPCION,FPRECIO,NID_TIPO_ROPA,NID_MODA,NID_COLOR,NID_MATERIAL,BHABILITADO,DFECHA_ALTA)
VALUES("Camisa de vestir",
"Prenda para caballero, hecha con corte hecho para todo evento formal de color aquamarina",
299.99,3,6,10,2,1,NOW());

-- LLenado de la Tabla Direcciones --
INSERT INTO TBL_DIRECCIONES(NID_PAIS,NID_ESTADO,NID_DELEGACION_MUNICIPIO,NID_CODIGO_POSTAL,NID_COLONIA,NID_CALLE,CMANZANA,CLOTE,BHABILITADO,DFECHA_ALTA)
VALUES(1,1,1,1,1,1,"28","10",1,NOW());
INSERT INTO TBL_DIRECCIONES(NID_PAIS,NID_ESTADO,NID_DELEGACION_MUNICIPIO,NID_CODIGO_POSTAL,NID_COLONIA,NID_CALLE,CMANZANA,CLOTE,BHABILITADO,DFECHA_ALTA)
VALUES(1,1,1,1,1,1,"28","10",1,NOW());
INSERT INTO TBL_DIRECCIONES(NID_PAIS,NID_ESTADO,NID_DELEGACION_MUNICIPIO,NID_CODIGO_POSTAL,NID_COLONIA,NID_CALLE,CMANZANA,CLOTE,BHABILITADO,DFECHA_ALTA)
VALUES(1,3,10,7,2,5,"I","67",1,NOW());
INSERT INTO TBL_DIRECCIONES(NID_PAIS,NID_ESTADO,NID_DELEGACION_MUNICIPIO,NID_CODIGO_POSTAL,NID_COLONIA,NID_CALLE,CMANZANA,CLOTE,BHABILITADO,DFECHA_ALTA)
VALUES(1,5,5,3,2,4,"30","1",1,NOW());
INSERT INTO TBL_DIRECCIONES(NID_PAIS,NID_ESTADO,NID_DELEGACION_MUNICIPIO,NID_CODIGO_POSTAL,NID_COLONIA,NID_CALLE,CMANZANA,CLOTE,BHABILITADO,DFECHA_ALTA)
VALUES(1,6,8,10,1,8,"50","5",1,NOW());

DELIMITER $$
CREATE PROCEDURE SPD_INSERTA_MODA(
    IN pcModa VARCHAR(50),
    OUT pcValor INT)
BEGIN
    IF EXISTS(SELECT * FROM CAT_MODAS WHERE CMODA = pcModa) THEN
        SET pcValor = CAST(SELECT NID_MODA FROM CAT_MODAS WHERE CMODA = pcModa AS UNSIGNED);
    ELSE
        INSERT INTO CAT_MODAS(CMODA,BHABILITADO,DFECHA_ALTA)
        VALUES(pcModa,1,NOW());
        SET pcValor = CAST(SELECT NID_MODA FROM CAT_MODAS WHERE CMODA = pcModa AS UNSIGNED);
    END IF;
END
$$ DELIMITER ;
