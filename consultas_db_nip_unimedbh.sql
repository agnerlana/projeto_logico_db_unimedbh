### Executando consultas na db_nip_unimed_bh

-- Recuperacoes simples com SELECT Statement
SELECT * FROM tb_nip_2022;
SELECT cod_operadora, sg_uf 'UF', cd_munic 'cod_municipio' FROM tb_nip_2022;

-- Filtros com WHERE Statement
SELECT cod_operadora, sg_uf 'UF', cd_munic 'cod_municipio' FROM tb_nip_2022 WHERE sg_uf IN ('MG', 'SP', 'RJ', 'ES');

-- Defina ordenaçoes dos dados com ORDER BY
SELECT cod_operadora,
		sg_uf 'UF',
        cd_munic 'cod_municipio'
        FROM tb_nip_2022
        WHERE sg_uf IN ('MG', 'SP', 'RJ', 'ES')
        ORDER BY sg_uf, cd_munic;

-- HAVING
# exemplo de consulta a ser agrupada
# municipios com mais de 100 nips registradas
SELECT DISTINCT CASE WHEN cod_operadora = 343889 THEN 'Unimed-BH' END 'Operadora',
				cd_munic 'cod_municipio',
                CASE WHEN cd_munic = '310620' THEN 'Belo Horizonte'
					WHEN cd_munic = '311860' THEN 'Contagem'
                    WHEN cd_munic = '310670' THEN 'Betim'
                    END 'Municipio',
                COUNT(DISTINCT id_nip) 'qtde_nips'
                FROM tb_nip_2022
                WHERE sg_uf = 'MG'
                GROUP BY cod_operadora, cd_munic
                HAVING qtde_nips > 100
                ORDER BY qtde_nips DESC;

-- Criando junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
## Selecionando NIPs por tema e subtema, ordenando aqueles com maior frequencia (utilizando JOIN entre várias tabelas)
SELECT DISTINCT 
				CASE WHEN A.cod_operadora = '343889' THEN 'Unimed-BH' END 'Operadora',
                A.sg_uf 'UF',
                CASE WHEN A.cd_munic = '310620' THEN 'Belo Horizonte' END 'municipio',
                B.desc_tema 'tema',
                C.desc_subtema 'subtema',
                D.desc_contratacao 'tipo_contratacao',
                COUNT(DISTINCT A.id_nip) 'qtde_nips'
                FROM tb_nip_2022 A
                LEFT JOIN tema_nip B ON B.cod_tema = A.tema
                LEFT JOIN subtema_nip C ON C.cod_subtema = A.subtema
                LEFT JOIN tp_contratacao_plano D ON D.cod_tp_contratacao = A.contr
                WHERE A.cd_munic = '310620'
                GROUP BY A.cod_operadora, A.sg_uf, A.tema, A.subtema, A.contr
                ORDER BY qtde_nips DESC;

#####
