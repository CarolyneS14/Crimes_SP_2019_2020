   ## UNPIVOT (Despivotar) para transforma as colnas em linhas.
    -- Ordenado por crime (com a nao de 2019 e 2020)
SELECT Delegacia, Ano, 'Furtos' AS Crime, Furtos AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Roubo_de_carga' AS Crime, Roubo_de_carga AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Roubos' AS Crime, Roubos AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Roubo_de_veiculos_total' AS Crime, Roubo_de_veiculos_total AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Furto_de_veiculo' AS Crime, Furto_de_veiculo AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Latrocinios' AS Crime, Latrocinios AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Homicidio_doloso_por_acidente_de_transito' AS Crime, Homicidio_doloso_por_acidente_de_transito AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Homicidio_Culposo_por_acidente_de_Transito' AS Crime, Homicidio_Culposo_por_acidente_de_Transito AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Homicidio_Culposo' AS Crime, Homicidio_Culposo AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Tentativa_de_Homicidio' AS Crime, Tentativa_de_Homicidio AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_seguida_de_morte' AS Crime, Lesao_Corporal_seguida_de_morte AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_Dolosa' AS Crime, Lesao_Corporal_Dolosa AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_Culposa_por_acidente_de_transito' AS Crime, Lesao_Corporal_Culposa_por_acidente_de_transito AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_Culposa' AS Crime, Lesao_Corporal_Culposa AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Estupro' AS Crime, Estupro AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Estupro_de_vulneravel' AS Crime, Estupro_de_vulneravel AS Quantidade FROM `crimessp.2019e2020.base_crimes`
UNION ALL
SELECT Delegacia, Ano, 'Roubo_a_Banco' AS Crime, Roubo_a_Banco AS Quantidade FROM `crimessp.2019e2020.base_crimes`;

    ## Ordenado por Crime
-- Separando os dados de 2019
SELECT Delegacia, Ano, 'Furtos' AS Crime, Furtos AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Roubo_de_carga' AS Crime, Roubo_de_carga AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Roubos' AS Crime, Roubos AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Roubo_de_veiculos_total' AS Crime, Roubo_de_veiculos_total AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Furto_de_veiculo' AS Crime, Furto_de_veiculo AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Latrocinios' AS Crime, Latrocinios AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Homicidio_doloso_por_acidente_de_transito' AS Crime, Homicidio_doloso_por_acidente_de_transito AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Homicidio_Culposo_por_acidente_de_Transito' AS Crime, Homicidio_Culposo_por_acidente_de_Transito AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Homicidio_Culposo' AS Crime, Homicidio_Culposo AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Tentativa_de_Homicidio' AS Crime, Tentativa_de_Homicidio AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_seguida_de_morte' AS Crime, Lesao_Corporal_seguida_de_morte AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_Dolosa' AS Crime, Lesao_Corporal_Dolosa AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_Culposa_por_acidente_de_transito' AS Crime, Lesao_Corporal_Culposa_por_acidente_de_transito AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_Culposa' AS Crime, Lesao_Corporal_Culposa AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Estupro' AS Crime, Estupro AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Estupro_de_vulneravel' AS Crime, Estupro_de_vulneravel AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019
UNION ALL
SELECT Delegacia, Ano, 'Roubo_a_Banco' AS Crime, Roubo_a_Banco AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2019

-- Separando os dados de 2020
UNION ALL
SELECT Delegacia, Ano, 'Furtos' AS Crime, Furtos AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Roubo_de_carga' AS Crime, Roubo_de_carga AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Roubos' AS Crime, Roubos AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Roubo_de_veiculos_total' AS Crime, Roubo_de_veiculos_total AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Furto_de_veiculo' AS Crime, Furto_de_veiculo AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Latrocinios' AS Crime, Latrocinios AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Homicidio_doloso_por_acidente_de_transito' AS Crime, Homicidio_doloso_por_acidente_de_transito AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Homicidio_Culposo_por_acidente_de_Transito' AS Crime, Homicidio_Culposo_por_acidente_de_Transito AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Homicidio_Culposo' AS Crime, Homicidio_Culposo AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Tentativa_de_Homicidio' AS Crime, Tentativa_de_Homicidio AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_seguida_de_morte' AS Crime, Lesao_Corporal_seguida_de_morte AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_Dolosa' AS Crime, Lesao_Corporal_Dolosa AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_Culposa_por_acidente_de_transito' AS Crime, Lesao_Corporal_Culposa_por_acidente_de_transito AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Lesao_Corporal_Culposa' AS Crime, Lesao_Corporal_Culposa AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Estupro' AS Crime, Estupro AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Estupro_de_vulneravel' AS Crime, Estupro_de_vulneravel AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020
UNION ALL
SELECT Delegacia, Ano, 'Roubo_a_Banco' AS Crime, Roubo_a_Banco AS Quantidade 
FROM `crimessp.2019e2020.base_crimes`
WHERE Ano = 2020;
