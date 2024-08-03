  # Consultando base de dados 
SELECT * FROM `crimessp.2019e2020.base_crimes` 

  #COUNT para contar quantas variáveis são nulas na coluna 'string_field_0'
SELECT COUNT(*) FROM `crimessp.2019e2020.base_crimes` WHERE string_field_0 IS NULL;

  # Organizando às informações do arquivo CSV em colunas.
  # CREATE OR REPLACE TABLE para substituir minha base de dados anterior
  # WITH para criar uma tabela temporaria
  # REPLACE para excluir qualquer ponto dos numeros
  # SPLIT - Uso para dividir a coluna string_field_0 em varias colunas com base no separador (;)
  # ROW_NUMBER() OVER() para enumerar as linhas da minha base de dados
  # CAST modifica os dados de STRING para FLOAT64 ou INT64
  # + para somar as informações das colunas repetidas (Roubo de veículos)
  # WHERE uso esta cláusula para filtrar as linhas que eu desejo que apareca na minha query, excluindo a linha 1

CREATE OR REPLACE TABLE `crimessp.2019e2020.base_crimes` AS WITH base_crimes_tratada AS (SELECT*,

  SPLIT(string_field_0, ';')[SAFE_OFFSET(0)] AS Delegacia,
  REPLACE(SPLIT(string_field_0, ';')[SAFE_OFFSET(1)], '.','') AS Furtos_na_regiao_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(2)] AS Roubo_de_carga_temp,
  REPLACE(SPLIT(string_field_0, ';')[SAFE_OFFSET(3)], '.','') AS Roubos_temp,
  REPLACE(SPLIT(string_field_0, ';')[SAFE_OFFSET(4)], '.','') AS Roubo_de_Veiculo_temp,
  REPLACE(SPLIT(string_field_0, ';')[SAFE_OFFSET(5)], '.','') AS Furto_de_veiculo_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(6)] AS Latrocinios_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(7)] AS Homicidio_doloso_por_acidente_de_transito_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(8)] AS Homicidio_Culposo_por_acidente_de_Transito_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(9)] AS Homicidio_Culposo_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(10)] AS Tentativa_de_Homicidio_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(11)] AS Lesao_Corporal_seguida_de_morte_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(12)] AS Lesao_Corporal_Dolosa_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(13)] AS Lesao_Corporal_Culposa_por_acidente_de_transito_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(14)] AS Lesao_Corporal_Culposa_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(15)] AS Estupro_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(16)] AS Estupro_de_vulneravel_temp,
  REPLACE(SPLIT(string_field_0, ';')[SAFE_OFFSET(17)], '.','') AS Roubo_de_veiculos_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(18)] AS Roubo_a_Banco_temp,
  SPLIT(string_field_0, ';')[SAFE_OFFSET(19)] AS Ano_temp,
  ROW_NUMBER() OVER() AS numero_da_linha,

FROM `crimessp.2019e2020.base_crimes`)

SELECT Delegacia,

CAST(Furtos_na_regiao_temp AS INT64) AS Furtos,
CAST(Roubo_de_carga_temp AS INT64) AS Roubo_de_carga,
CAST(Roubos_temp AS INT64) AS Roubos,
CAST(Roubo_de_Veiculo_temp AS INT64) + CAST(Roubo_de_veiculos_temp AS INT64) AS Roubo_de_veiculos_total,
CAST(Furto_de_veiculo_temp AS INT64) AS Furto_de_veiculo,
CAST(Latrocinios_temp AS INT64) AS Latrocinios,
CAST(Homicidio_doloso_por_acidente_de_transito_temp AS INT64) AS Homicidio_doloso_por_acidente_de_transito,
CAST(Homicidio_Culposo_por_acidente_de_Transito_temp AS INT64) AS Homicidio_Culposo_por_acidente_de_Transito,
CAST(Homicidio_Culposo_temp AS INT64) AS Homicidio_Culposo,
CAST(Tentativa_de_Homicidio_temp AS INT64) AS Tentativa_de_Homicidio,
CAST(Lesao_Corporal_seguida_de_morte_temp AS INT64) AS Lesao_Corporal_seguida_de_morte,
CAST(Lesao_Corporal_Dolosa_temp AS INT64) AS Lesao_Corporal_Dolosa,
CAST(Lesao_Corporal_Culposa_por_acidente_de_transito_temp AS INT64) AS Lesao_Corporal_Culposa_por_acidente_de_transito,
CAST(Lesao_Corporal_Culposa_temp AS INT64) AS Lesao_Corporal_Culposa,
CAST(Estupro_temp AS INT64) AS Estupro,
CAST(Estupro_de_vulneravel_temp AS INT64) AS Estupro_de_vulneravel,
CAST(Roubo_a_Banco_temp AS INT64) AS Roubo_a_Banco,
CAST(Ano_temp AS INT64) AS Ano

FROM base_crimes_tratada WHERE numero_da_linha > 1;   
 
 # Estatísticas Descritivas:
 # COUNT para contar a quantidade de Delegacias presentes na base.
 SELECT COUNT(Delegacia) FROM `crimessp.2019e2020.base_crimes` 
WHERE
  Delegacia IS NOT NULL;

  # COUNT para contar a quantidade de Delegacias presentes na base por ano. (dados texto, por isso usei o COUNT)
 SELECT
  Ano,
  COUNT(DISTINCT Delegacia) AS Quantidade_Delegacias
FROM
  `crimessp.2019e2020.base_crimes` 
GROUP BY
  Ano;

  # SUM para contar a quantidade Total do crimes presentes na base por ano. (dados numericos, por isso usei o SUM)
 SELECT
  Ano,
  SUM(ROUND(Furtos)) AS Total_Furtos,
  SUM(ROUND(Roubo_de_carga)) AS Total_Roubo_de_carga,
  SUM(ROUND(Roubos)) AS Total_Roubos,
  SUM(ROUND(Roubo_de_veiculos_total)) AS Total_Roubo_de_veiculos_total,
  SUM(ROUND(Furto_de_veiculo)) AS Total_Furto_de_veiculo,
  SUM(ROUND(Latrocinios)) AS Total_Latrocinios,
  SUM(ROUND(Homicidio_doloso_por_acidente_de_transito)) AS Total_Homicidio_doloso_por_acidente_de_transito,
  SUM(ROUND(Homicidio_Culposo_por_acidente_de_Transito)) AS Total_Homicidio_Culposo_por_acidente_de_Transito,
  SUM(ROUND(Homicidio_Culposo)) AS Total_Homicidio_Culposo,
  SUM(ROUND(Tentativa_de_Homicidio)) AS Total_Tentativa_de_Homicidio,
  SUM(ROUND(Lesao_Corporal_seguida_de_morte)) AS Total_Lesao_Corporal_seguida_de_morte,
  SUM(ROUND(Lesao_Corporal_Dolosa)) AS Total_Lesao_Corporal_Dolosa,
  SUM(ROUND(Lesao_Corporal_Culposa_por_acidente_de_transito)) AS Total_Lesao_Corporal_Culposa_por_acidente_de_transito,
  SUM(ROUND(Lesao_Corporal_Culposa)) AS Total_Lesao_Corporal_Culposa,
  SUM(ROUND(Estupro)) AS Total_Estupro,
  SUM(ROUND(Estupro_de_vulneravel)) AS Total_Estupro_de_vulneravel,
  SUM(ROUND(Roubo_a_Banco)) AS Total_Roubo_a_Banco
FROM
  `crimessp.2019e2020.base_crimes` 
GROUP BY
  Ano;

 #1 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(ROUND(Furtos)) AS Max_Furtos,
  AVG(ROUND(Furtos)) AS Med_Furtos,
  STDDEV(ROUND(Furtos)) AS Des_Furtos
FROM
  `crimessp.2019e2020.base_crimes`;

  #2 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Roubo_de_carga) AS Max_Roubo_de_carga,
  AVG(Roubo_de_carga) AS Med_Roubo_de_carga,
  STDDEV(Roubo_de_carga) AS Des_Roubo_de_carga
FROM
  `crimessp.2019e2020.base_crimes`;

  #3 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Roubos) AS Max_Roubos,
  AVG(Roubos) AS Med_Roubos,
  STDDEV(Roubos) AS Des_Roubos
FROM
  `crimessp.2019e2020.base_crimes`;

  #4 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Roubo_de_veiculos_total) AS Max_Roubo_de_veiculos_total,
  AVG(Roubo_de_veiculos_total) AS Med_Roubo_de_veiculos_total,
  STDDEV(Roubo_de_veiculos_total) AS Des_Roubo_de_veiculos_total
FROM
  `crimessp.2019e2020.base_crimes`;

  #5 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Furto_de_veiculo) AS Max_Furto_de_veiculo,
  AVG(Furto_de_veiculo) AS Med_Furto_de_veiculo,
  STDDEV(Furto_de_veiculo) AS Des_Furto_de_veiculo
FROM
  `crimessp.2019e2020.base_crimes`;
 
   #6 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Latrocinios) AS Max_Latrocinios,
  AVG(Latrocinios) AS Med_Latrocinios,
  STDDEV(Latrocinios) AS Des_Latrocinios,
FROM
  `crimessp.2019e2020.base_crimes`;

  #7 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Homicidio_doloso_por_acidente_de_transito) AS Max_Homicidio_doloso_por_acidente_de_transito,
  AVG(Homicidio_doloso_por_acidente_de_transito) AS Med_Homicidio_doloso_por_acidente_de_transito,
  STDDEV(Homicidio_doloso_por_acidente_de_transito) AS Des_Homicidio_doloso_por_acidente_de_transito
FROM
  `crimessp.2019e2020.base_crimes`;


  #8 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Homicidio_Culposo_por_acidente_de_Transito) AS Max_Homicidio_Culposo_por_acidente_de_Transito,
  AVG(Homicidio_Culposo_por_acidente_de_Transito) AS Med_Homicidio_Culposo_por_acidente_de_Transito,
  STDDEV(Homicidio_Culposo_por_acidente_de_Transito) AS Des_Homicidio_Culposo_por_acidente_de_Transito
FROM
  `crimessp.2019e2020.base_crimes`;

  #9 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Homicidio_Culposo) AS Max_Homicidio_Culposo,
  AVG(Homicidio_Culposo) AS Med_Homicidio_Culposo,
  STDDEV(Homicidio_Culposo) AS Des_Homicidio_Culposo
FROM
  `crimessp.2019e2020.base_crimes`;

  #10 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Tentativa_de_Homicidio) AS Max_Tentativa_de_Homicidio,
  AVG(Tentativa_de_Homicidio) AS Med_Tentativa_de_Homicidio,
  STDDEV(Tentativa_de_Homicidio) AS Des_Tentativa_de_Homicidio
FROM
  `crimessp.2019e2020.base_crimes`;

  #11 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Lesao_Corporal_seguida_de_morte) AS Max_Lesao_Corporal_seguida_de_morte,
  AVG(Lesao_Corporal_seguida_de_morte) AS Med_Lesao_Corporal_seguida_de_morte,
  STDDEV(Lesao_Corporal_seguida_de_morte) AS Des_Lesao_Corporal_seguida_de_morte
FROM
  `crimessp.2019e2020.base_crimes`;

 #12 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Lesao_Corporal_Dolosa) AS Max_Lesao_Corporal_Dolosa,
  AVG(Lesao_Corporal_Dolosa) AS Med_Lesao_Corporal_Dolosa,
  STDDEV(Lesao_Corporal_Dolosa) AS Des_Lesao_Corporal_Dolosa
FROM
  `crimessp.2019e2020.base_crimes`;

  #13 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Lesao_Corporal_Culposa_por_acidente_de_transito) AS Max_Lesao_Corporal_Culposa_por_acidente_de_transito,
  AVG(Lesao_Corporal_Culposa_por_acidente_de_transito) AS Med_Lesao_Corporal_Culposa_por_acidente_de_transito,
  STDDEV(Lesao_Corporal_Culposa_por_acidente_de_transito) AS Des_Lesao_Corporal_Culposa_por_acidente_de_transito
FROM
  `crimessp.2019e2020.base_crimes`; 

 #14 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Lesao_Corporal_Culposa) AS Max_Lesao_Corporal_Culposa,
  AVG(Lesao_Corporal_Culposa) AS Med_Lesao_Corporal_Culposa,
  STDDEV(Lesao_Corporal_Culposa) AS Des_Lesao_Corporal_Culposa
FROM
  `crimessp.2019e2020.base_crimes`;

 #15 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Estupro) AS Max_Estupro,
  AVG(Estupro) AS Med_Estupro,
  STDDEV(Estupro) AS Des_Estupro
FROM
  `crimessp.2019e2020.base_crimes`; 

  #16 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Estupro_de_vulneravel) AS Max_Estupro_de_vulneravel,
  AVG(Estupro_de_vulneravel) AS Med_Estupro_de_vulneravel,
  STDDEV(Estupro_de_vulneravel) AS Des_Estupro_de_vulneravel
FROM
  `crimessp.2019e2020.base_crimes`;

 #17 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Roubo_a_Banco) AS Max_Roubo_a_Banco,
  AVG(Roubo_a_Banco) AS Med_Roubo_a_Banco,
  STDDEV(Roubo_a_Banco) AS Des_Roubo_a_Banco
FROM
  `crimessp.2019e2020.base_crimes`;

  # Separar as tebalas por ano
  ## 2019
SELECT *
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019;

  ## 2020 
SELECT *
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020;

  #Add coluna de Estado para uso no mapa na tabela de  2019
CREATE OR REPLACE TABLE `crimessp.2019e2020.base_crimes_2019`
AS
SELECT *,
  'SP' AS Estado,
  'São Paulo' AS Cidade
FROM `crimessp.2019e2020.base_crimes_2019`;

  ##Add coluna de Estado para uso do mapa na tabela de 2020
CREATE OR REPLACE TABLE `crimessp.2019e2020.base_crimes_2020`
AS
SELECT *,
  'SP' AS Estado,
  'São Paulo' AS Cidade
FROM `crimessp.2019e2020.base_crimes_2020`;

##Add coluna de Estado para uso do mapa na tabela de qtd_por_delegacia
CREATE OR REPLACE TABLE `crimessp.2019e2020.base_crimes_Qtd_por_Delegacia`
AS
SELECT *,
  'SP' AS Estado,
  'São Paulo' AS Cidade
FROM `crimessp.2019e2020.base_crimes_Qtd_por_Delegacia`;