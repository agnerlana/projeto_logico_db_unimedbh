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
								(3, "03", "Núcleo"),
								(4, "04", "NP"),
								(5, "05", "NA"),
								(6, "06", "Inativa"),
								(7, "07", "Exceção"),
								(8, "08", "Em Andamento");
SELECT * FROM classificacao_nip;

DESC modalidade_nip;
INSERT INTO modalidade_nip (idmodalidade_nip, cod_modalidade, desc_modalidade) VALUES
								(1, "03", "Autogestão"),
								(2, "04", "Cooperativa Médica"),
								(3, "06", "Filantropia"),
								(4, "07", "Medicina de Grupo"),
								(5, "09", "Seguradora Especializada em Saúde"),
								(6, "10", "Seguradora Especializada em Saúde"),
								(7, "05", "Cooperativa Odontológica"),
								(8, "08", "Odontologia de Grupo"),
								(9, "01", "Administradora de Benefícios"),
								(10, "02", "Administradora de Benefícios");
SELECT * FROM modalidade_nip;

DESC natureza_nip;
INSERT INTO natureza_nip (idnatureza_nip, cod_natureza, desc_natureza) VALUES
								(1, "01", "Assistencial"),
								(2, "02", "Não Assistencial"),
								(3, "03", "Não Existente");
SELECT * FROM natureza_nip;

DESC porte_operadora;
INSERT INTO porte_operadora (idporte_operadora, cod_porte_operadora, desc_porte_operadora) VALUES
								(1, "G", "Grande porte"),
								(2, "M", "Médio porte"),
								(3, "P", "Pequeno porte"),
								(4, "X", "Sem Beneficiários");
SELECT * FROM porte_operadora;

DESC subtema_nip;
INSERT INTO subtema_nip (idsubtema_nip, cod_subtema, desc_subtema) VALUES
								(1, "01", "Carência"),
								(2, "02", "Contratação/Adesão, Vigência, Manut. e Renovação"),
								(3, "03", "Contratualização"),
								(4, "04", "Definição de Carteira e de Transf. de Carteira"),
								(5, "05", "Demitidos, Exonerados e Aposentados"),
								(6, "06", "Documentos de Entrega Obrigatória ao Consumidor"),
								(7, "07", "Doença ou Lesão Preexist., Cob. Parc Temp e Agravo"),
								(8, "08", "Falência ou Insolvência Civil"),
								(9, "09", "Gerenciamento das Ações de Saúde pela Operadora"),
								(10, "10", "Inclusão de Dependentes do Consumidor"),
								(11, "11", "Itens Obrigatórios e Cláusulas Contratuais"),
								(12, "12", "Liquidação Extrajudicial"),
								(13, "13", "Mensalidade ou Contraprestação Pecuniária"),
								(14, "14", "Migração, Adaptação e Sucessão Contratuais"),
								(15, "15", "Ouvidoria da Operadora"),
								(16, "16", "Portabilidade de Carências"),
								(17, "17", "Prazos Máximos para Atendimento"),
								(18, "18", "Reajuste por Mudança de Faixa Etária"),
								(19, "19", "Reajuste por Sinistralidade"),
								(20, "20", "Reajuste por Variação de Custos"),
								(21, "21", "Rede de Atendimento (rede conveniada)"),
								(22, "22", "Reembolso"),
								(23, "23", "Regimes Especiais (Direção Téc. e Direção Fiscal)"),
								(24, "24", "Rol de Procedimentos e Cobertura"),
								(25, "25", "Suspensão e Rescisão Contratuais"),
								(26, "26", "Transferência Compulsória determinada pela ANS"),
								(27, "27", "Transf. Compuls. por Oferta Púb. do cad. de benef."),
								(28, "28", "Transferência Voluntária"),
								(29, "29", "Sem subtema específico");
SELECT * FROM subtema_nip;

DESC tema_nip;
INSERT INTO tema_nip (idtema_nip, cod_tema, desc_tema) VALUES
								(1, "01", "Cobertura"),
								(2, "02", "Contratos e Regulamentos"),
								(3, "03", "Mensalidades e Reajustes"),
								(4, "04", "Sem tema específico");
SELECT * FROM tema_nip;

DESC tp_contratacao_plano;
INSERT INTO tp_contratacao_plano (idtp_contratacao_plano, cod_tp_contratacao, desc_contratacao) VALUES
								(1, "01", "Individual ou Familiar"),
								(2, "02", "Coletivo Empresarial"),
								(3, "04", "Coletivo Empresarial"),
								(4, "03", "Coletivo por Adesão"),
								(5, "05", "Coletivo por Adesão"),
								(6, "06", "Coletivo não identificado"),
								(7, "07", "Coletivo não identificado"),
								(8, "08", "Não identificado"),
								(9, "09", "Não identificado"),
								(10, "10", "Não identificado");
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