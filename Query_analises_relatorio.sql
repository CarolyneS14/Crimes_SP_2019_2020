 # Estatísticas Descritivas:
 # COUNT para contar a quantidade de Delegacias presentes na base.
 SELECT
  COUNT(Delegacia)
FROM
  `crimessp.2019e2020.base_crimes`
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


  # SUM para contar a quantidade total de crimes presentes na base por ano. (dados numéricos, por isso usei o SUM)
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
  MAX(Furtos) AS Max_Furtos,
  AVG(Furtos) AS Med_Furtos,
  STDDEV(Furtos) AS Des_Furtos
FROM
  `crimessp.2019e2020.base_crimes`;


  #2 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Roubo_de_carga) AS Max_Roubo_de_carga,
  AVG(Roubo_de_carga) AS Med_Roubo_de_carga,
  STDDEV(Roubo_de_carga) AS Des_Roubo_de_carga
FROM
 #1 MAX, AVG e STDDEV para calcular máximo, média e desvio padrão.
SELECT
  MAX(Furtos) AS Max_Furtos,
  AVG(Furtos) AS Med_Furtos,
  STDDEV(Furtos) AS Des_Furtos
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
