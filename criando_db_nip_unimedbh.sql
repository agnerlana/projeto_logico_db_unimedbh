### criando database nip unimed-bh
CREATE DATABASE db_nip_unimed_bh;
USE db_nip_unimed_bh;

## criando tabelas auxiliares
CREATE TABLE IF NOT EXISTS `db_nip_unimed_bh`.`subtema_nip` (
  `idsubtema_nip` INT NOT NULL,
  `cod_subtema` CHAR(2) NOT NULL,
  `desc_subtema` VARCHAR(60) NOT NULL,
  PRIMARY KEY (`idsubtema_nip`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db_nip_unimed_bh`.`classificacao_nip` (
  `idclassificacao_nip` INT NOT NULL,
  `cod_classificacao` CHAR(2) NOT NULL,
  `desc_classificacao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idclassificacao_nip`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db_nip_unimed_bh`.`modalidade_nip` (
  `idmodalidade_nip` INT NOT NULL,
  `cod_modalidade` CHAR(2) NOT NULL,
  `desc_modalidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idmodalidade_nip`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db_nip_unimed_bh`.`tema_nip` (
  `idtema_nip` INT NOT NULL,
  `cod_tema` CHAR(2) NOT NULL,
  `desc_tema` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtema_nip`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db_nip_unimed_bh`.`tp_contratacao_plano` (
  `idtp_contratacao_plano` INT NOT NULL,
  `cod_tp_contratacao` CHAR(2) NOT NULL,
  `desc_contratacao` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtp_contratacao_plano`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db_nip_unimed_bh`.`natureza_nip` (
  `idnatureza_nip` INT NOT NULL,
  `cod_natureza` CHAR(2) NOT NULL,
  `desc_natureza` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idnatureza_nip`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `db_nip_unimed_bh`.`porte_operadora` (
  `idporte_operadora` INT NOT NULL,
  `cod_porte_operadora` CHAR(2) NOT NULL,
  `desc_porte_operadora` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idporte_operadora`))
ENGINE = InnoDB;


### criando tabela nip 2022 jan-set - unimed-bh
CREATE TABLE IF NOT EXISTS `db_nip_unimed_bh`.`tb_nip_2022` (
  `id_nip` INT NOT NULL,
  `cod_operadora` CHAR(6) NOT NULL,
  `id_cmpt` CHAR(6) NOT NULL,
  `id_comp` CHAR(6) NOT NULL,
  `sg_uf` CHAR(2) NOT NULL,
  `cd_munic` CHAR(6) NOT NULL,
  `tema` CHAR(2) NOT NULL,
  `subtema` CHAR(2) NOT NULL,
  `modal` CHAR(2) NOT NULL,
  `cd_porte` CHAR(1) NOT NULL,
  `contr` CHAR(2) NOT NULL,
  `classi` CHAR(2) NOT NULL,
  `nat_nip` CHAR(2) NOT NULL,
  PRIMARY KEY (`id_nip`))
ENGINE = InnoDB;


## populando tabelas auxiliares
DESC classificacao_nip;
INSERT INTO classificacao_nip (idclassificacao_nip, cod_classificacao, desc_classificacao) VALUES
								(1, "01", "RVE"),
								(2, "02", "Retorno de Fluxo"),
								(3, "03", "N??cleo"),
								(4, "04", "NP"),
								(5, "05", "NA"),
								(6, "06", "Inativa"),
								(7, "07", "Exce????o"),
								(8, "08", "Em Andamento");
SELECT * FROM classificacao_nip;

DESC modalidade_nip;
INSERT INTO modalidade_nip (idmodalidade_nip, cod_modalidade, desc_modalidade) VALUES
								(1, "03", "Autogest??o"),
								(2, "04", "Cooperativa M??dica"),
								(3, "06", "Filantropia"),
								(4, "07", "Medicina de Grupo"),
								(5, "09", "Seguradora Especializada em Sa??de"),
								(6, "10", "Seguradora Especializada em Sa??de"),
								(7, "05", "Cooperativa Odontol??gica"),
								(8, "08", "Odontologia de Grupo"),
								(9, "01", "Administradora de Benef??cios"),
								(10, "02", "Administradora de Benef??cios");
SELECT * FROM modalidade_nip;

DESC natureza_nip;
INSERT INTO natureza_nip (idnatureza_nip, cod_natureza, desc_natureza) VALUES
								(1, "01", "Assistencial"),
								(2, "02", "N??o Assistencial"),
								(3, "03", "N??o Existente");
SELECT * FROM natureza_nip;

DESC porte_operadora;
INSERT INTO porte_operadora (idporte_operadora, cod_porte_operadora, desc_porte_operadora) VALUES
								(1, "G", "Grande porte"),
								(2, "M", "M??dio porte"),
								(3, "P", "Pequeno porte"),
								(4, "X", "Sem Benefici??rios");
SELECT * FROM porte_operadora;

DESC subtema_nip;
INSERT INTO subtema_nip (idsubtema_nip, cod_subtema, desc_subtema) VALUES
								(1, "01", "Car??ncia"),
								(2, "02", "Contrata????o/Ades??o, Vig??ncia, Manut. e Renova????o"),
								(3, "03", "Contratualiza????o"),
								(4, "04", "Defini????o de Carteira e de Transf. de Carteira"),
								(5, "05", "Demitidos, Exonerados e Aposentados"),
								(6, "06", "Documentos de Entrega Obrigat??ria ao Consumidor"),
								(7, "07", "Doen??a ou Les??o Preexist., Cob. Parc Temp e Agravo"),
								(8, "08", "Fal??ncia ou Insolv??ncia Civil"),
								(9, "09", "Gerenciamento das A????es de Sa??de pela Operadora"),
								(10, "10", "Inclus??o de Dependentes do Consumidor"),
								(11, "11", "Itens Obrigat??rios e Cl??usulas Contratuais"),
								(12, "12", "Liquida????o Extrajudicial"),
								(13, "13", "Mensalidade ou Contrapresta????o Pecuni??ria"),
								(14, "14", "Migra????o, Adapta????o e Sucess??o Contratuais"),
								(15, "15", "Ouvidoria da Operadora"),
								(16, "16", "Portabilidade de Car??ncias"),
								(17, "17", "Prazos M??ximos para Atendimento"),
								(18, "18", "Reajuste por Mudan??a de Faixa Et??ria"),
								(19, "19", "Reajuste por Sinistralidade"),
								(20, "20", "Reajuste por Varia????o de Custos"),
								(21, "21", "Rede de Atendimento (rede conveniada)"),
								(22, "22", "Reembolso"),
								(23, "23", "Regimes Especiais (Dire????o T??c. e Dire????o Fiscal)"),
								(24, "24", "Rol de Procedimentos e Cobertura"),
								(25, "25", "Suspens??o e Rescis??o Contratuais"),
								(26, "26", "Transfer??ncia Compuls??ria determinada pela ANS"),
								(27, "27", "Transf. Compuls. por Oferta P??b. do cad. de benef."),
								(28, "28", "Transfer??ncia Volunt??ria"),
								(29, "29", "Sem subtema espec??fico");
SELECT * FROM subtema_nip;

DESC tema_nip;
INSERT INTO tema_nip (idtema_nip, cod_tema, desc_tema) VALUES
								(1, "01", "Cobertura"),
								(2, "02", "Contratos e Regulamentos"),
								(3, "03", "Mensalidades e Reajustes"),
								(4, "04", "Sem tema espec??fico");
SELECT * FROM tema_nip;

DESC tp_contratacao_plano;
INSERT INTO tp_contratacao_plano (idtp_contratacao_plano, cod_tp_contratacao, desc_contratacao) VALUES
								(1, "01", "Individual ou Familiar"),
								(2, "02", "Coletivo Empresarial"),
								(3, "04", "Coletivo Empresarial"),
								(4, "03", "Coletivo por Ades??o"),
								(5, "05", "Coletivo por Ades??o"),
								(6, "06", "Coletivo n??o identificado"),
								(7, "07", "Coletivo n??o identificado"),
								(8, "08", "N??o identificado"),
								(9, "09", "N??o identificado"),
								(10, "10", "N??o identificado");
SELECT * FROM tp_contratacao_plano;

## populando tb_nip_2022 - unimed_bh por importacao de csv

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/tb_nip_2022-jan_set_unimed-bh.csv'
INTO TABLE tb_nip_2022
FIELDS TERMINATED BY ';'
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

SELECT * FROM tb_nip_2022;

##### 