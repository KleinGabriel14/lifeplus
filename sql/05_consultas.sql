-- RELATÓRIO 1 — ORDER BY / WHERE
-- Listar todos os residentes com mais de 80 anos de idade que possuam
-- alguma condição crônica registrada.
-- =====================================================================

SELECT
    p.nome_pessoa AS "Nome do Residente",
    p.telefone AS "Telefone do Residente",
    p.data_nascimento AS "Data de Nascimento",
    EXTRACT(YEAR FROM AGE(CURRENT_DATE, p.data_nascimento)) AS "Idade",
    p.cpf AS "CPF",
    COALESCE(r.nome_responsavel, 'Sem Responsável') AS "Responsável",
    COALESCE(r.telefone, '-') AS "Telefone Responsável",
    i.restricoes_medicas AS "Condição Crônica"
FROM idoso i
INNER JOIN pessoa p
    ON p.id_pessoa = i.id_pessoa
LEFT JOIN responsavel r
    ON r.id_idoso = i.id_idoso
WHERE EXTRACT(YEAR FROM AGE(CURRENT_DATE,p.data_nascimento)) > 80
AND (
        i.restricoes_medicas ILIKE '%crônica%'
        OR i.restricoes_medicas ILIKE '%hipertensão%'
        OR i.restricoes_medicas ILIKE '%diabetes%'
    )
ORDER BY p.nome_pessoa;


-- =====================================================================
-- RELATÓRIO 2 — JOIN
-- Listar os registros de evolução realizados no mês atual.
-- =====================================================================

SELECT
    p_idoso.nome_pessoa AS "Residente",
    c.data AS "Data Registro",
    c.evolucao AS "Evolução",
    c.temperatura,
    c.pressao,
    p_func.nome_pessoa AS "Funcionário",
    p_func.telefone AS "Telefone Funcionário"
FROM checkin c
INNER JOIN idoso i
    ON i.id_idoso = c.id_idoso
INNER JOIN pessoa p_idoso
    ON p_idoso.id_pessoa = i.id_pessoa
INNER JOIN funcionario f
    ON f.id_funcionario = c.id_funcionario
INNER JOIN pessoa p_func
    ON p_func.id_pessoa = f.id_pessoa
WHERE c.data >= DATE_TRUNC('month',CURRENT_DATE)
AND c.data < DATE_TRUNC('month',CURRENT_DATE)+INTERVAL '1 month'
ORDER BY p_idoso.nome_pessoa,c.data DESC;

-- =====================================================================
-- RELATÓRIO 3 — JOIN
-- Listar as prescrições de medicamentos ainda ativas.
-- Conforme o enunciado: data de encerramento maior ou igual à data atual.
-- =====================================================================

SELECT
    p_idoso.nome_pessoa AS "Residente",
    p_idoso.telefone AS "Telefone Residente",
    m.nome_medicamento,
    m.dosagem,
    pr.horario,
    pr.data_inicio,
    pr.data_fim,
    p_func.nome_pessoa AS "Prescritor",
    p_func.telefone AS "Telefone Prescritor"
FROM prescricao pr
INNER JOIN idoso i
    ON i.id_idoso = pr.id_idoso
INNER JOIN pessoa p_idoso
    ON p_idoso.id_pessoa = i.id_pessoa
INNER JOIN medicamento m
    ON m.id_medicamento = pr.id_medicamento
INNER JOIN funcionario f
    ON f.id_funcionario = pr.id_funcionario
INNER JOIN pessoa p_func
    ON p_func.id_pessoa = f.id_pessoa
WHERE pr.data_fim >= CURRENT_DATE
ORDER BY p_idoso.nome_pessoa, pr.horario;


-- =====================================================================
-- RELATÓRIO 4 — SUMARIZAÇÃO
-- Para cada funcionário, apresentar:
-- cargo,
-- total de evoluções registradas no mês atual,
-- total de prescrições realizadas no mês,
-- data do registro mais recente.
-- Exibir apenas funcionários com ao menos 3 registros no mês.
-- =====================================================================

SELECT
    p.nome_pessoa AS "Funcionário",
    p.telefone AS "Telefone",
    f.funcao AS "Cargo",

    COALESCE(ev.total_evolucoes,0) AS "Total Evoluções",

    COALESCE(pr.total_prescricoes,0) AS "Total Prescrições",

    GREATEST(
        COALESCE(ev.maior_data_ev,TIMESTAMP '1900-01-01'),
        COALESCE(pr.maior_data_pr,TIMESTAMP '1900-01-01')
    ) AS "Último Registro"

FROM funcionario f
INNER JOIN pessoa p
    ON p.id_pessoa = f.id_pessoa

LEFT JOIN (
    SELECT
        id_funcionario,
        COUNT(*) AS total_evolucoes,
        MAX(data) AS maior_data_ev
    FROM checkin
    WHERE data >= DATE_TRUNC('month',CURRENT_DATE)
    GROUP BY id_funcionario
) ev
    ON ev.id_funcionario = f.id_funcionario

LEFT JOIN (
    SELECT
        id_funcionario,
        COUNT(*) AS total_prescricoes,
        MAX(data_inicio)::timestamp AS maior_data_pr
    FROM prescricao
    WHERE data_inicio >= DATE_TRUNC('month',CURRENT_DATE)::date
    GROUP BY id_funcionario
) pr
    ON pr.id_funcionario = f.id_funcionario

WHERE COALESCE(ev.total_evolucoes,0)
    + COALESCE(pr.total_prescricoes,0) >= 3

ORDER BY "Total Evoluções" DESC;