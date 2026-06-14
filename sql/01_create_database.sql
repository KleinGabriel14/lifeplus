-- =====================================================
-- SISTEMA DE GERENCIAMENTO DE LAR DE IDOSOS
-- Script 01: Criação do Banco de Dados
-- =====================================================

CREATE DATABASE lar_idosos
WITH
    ENCODING = 'UTF8'
    LC_COLLATE = 'pt_BR.UTF-8'
    LC_CTYPE = 'pt_BR.UTF-8'
    TEMPLATE = template0;

COMMENT ON DATABASE lar_idosos IS
'Sistema de gerenciamento de Lar de Idosos';