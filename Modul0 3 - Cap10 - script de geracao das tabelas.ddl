-- Generated by Oracle SQL Developer Data Modeler 24.3.0.240.1210
--   at:        2024-11-13 08:23:06 BRT
--   site:      Oracle Database 11g
--   type:      Oracle Database 11g



DROP TABLE original_tb_cap10 CASCADE CONSTRAINTS;

DROP TABLE tb_ano_agricola_cap10 CASCADE CONSTRAINTS;

DROP TABLE tb_produto_cap10 CASCADE CONSTRAINTS;

DROP TABLE tb_serie_historica_graos_cap10 CASCADE CONSTRAINTS;

DROP TABLE tb_uf_cap10 CASCADE CONSTRAINTS;

-- predefined type, no DDL - MDSYS.SDO_GEOMETRY

-- predefined type, no DDL - XMLTYPE

CREATE TABLE original_tb_cap10 (
    ano_agricola               NUMBER(4),
    dsc_safra_previsao         CHAR(20),
    uf                         CHAR(2),
    produto                    CHAR(100),
    id_produto                 NUMBER(4),
    area_plantada_mil_ha       FLOAT(8),
    producao_mil_t             NUMBER(8, 2),
    produtividade_mil_ha_mil_t FLOAT(4)
);

CREATE TABLE tb_ano_agricola_cap10 (
    dt_ano_agricola CHAR(10) NOT NULL
);

ALTER TABLE tb_ano_agricola_cap10 ADD CONSTRAINT tb_ano_agricola_pk PRIMARY KEY ( dt_ano_agricola );

CREATE TABLE tb_produto_cap10 (
    id_produto NUMBER(4) NOT NULL,
    nm_produto VARCHAR2(50)
);

ALTER TABLE tb_produto_cap10 ADD CONSTRAINT tb_produto_pk PRIMARY KEY ( id_produto );

CREATE TABLE tb_serie_historica_graos_cap10 (
    nm_area_plantada_mil_ha       CHAR(20) NOT NULL,
    tb_ano_agr                    CHAR(10) NOT NULL,
    tb_uf_sigla_uf                CHAR(2) NOT NULL,
    tb_produto_id_produto         NUMBER(4) NOT NULL,
    nm_producao_mil_t             CHAR(20) NOT NULL,
    nm_produtividade_mil_ha_mil_t FLOAT(8) NOT NULL
);

ALTER TABLE tb_serie_historica_graos_cap10
    ADD CONSTRAINT tb_serie_historica_graos_pk
        PRIMARY KEY ( nm_area_plantada_mil_ha,
                      tb_produto_id_produto,
                      tb_uf_sigla_uf,
                      tb_ano_agr );

CREATE TABLE tb_uf_cap10 (
    sigla_uf CHAR(2) NOT NULL,
    nm_uf    CHAR(30)
);

ALTER TABLE tb_uf_cap10 ADD CONSTRAINT tb_uf_pk PRIMARY KEY ( sigla_uf );

ALTER TABLE tb_serie_historica_graos_cap10
    ADD CONSTRAINT fk_ser_hist_ano FOREIGN KEY ( tb_ano_agr )
        REFERENCES tb_ano_agricola_cap10 ( dt_ano_agricola );

ALTER TABLE tb_serie_historica_graos_cap10
    ADD CONSTRAINT fk_ser_hist_graos FOREIGN KEY ( tb_uf_sigla_uf )
        REFERENCES tb_uf_cap10 ( sigla_uf );

ALTER TABLE tb_serie_historica_graos_cap10
    ADD CONSTRAINT fk_ser_hist_prod FOREIGN KEY ( tb_produto_id_produto )
        REFERENCES tb_produto_cap10 ( id_produto );



-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             5
-- CREATE INDEX                             0
-- ALTER TABLE                              7
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0