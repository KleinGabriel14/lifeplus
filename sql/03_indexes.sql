-- =====================================================
-- SISTEMA LAR DE IDOSOS
-- Script 03: Índices
-- =====================================================

CREATE INDEX idx_pessoa_nome
ON pessoa(nome_pessoa);

CREATE INDEX idx_pessoa_cpf
ON pessoa(cpf);

CREATE INDEX idx_checkin_data
ON checkin(data);

CREATE INDEX idx_prescricao_data_inicio
ON prescricao(data_inicio);

CREATE INDEX idx_idoso_quarto
ON idoso(numero_quarto);

CREATE INDEX idx_funcionario_especialidade
ON funcionario(id_especialidade);