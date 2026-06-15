### Diagrama Entidade-Relacionamento (ER) — Sistema de Gestão de Lar de Idosos

---

```mermaid
erDiagram
    %% --- RELACIONAMENTOS ---

    %% Pessoas e Entidades Relacionadas
    PESSOA ||--|| IDOSO : "eh"
    PESSOA ||--|| FUNCIONARIO : "eh"
    PESSOA ||--o{ RESPONSAVEL : "pode_ser"
    ENDERECO ||--o{ PESSOA : "vincula"
    ENDERECO ||--o{ LAR : "vincula"

    %% Organização e Profissionais
    LAR ||--o{ IDOSO : "abriga"
    ESPECIALIDADE ||--o{ FUNCIONARIO : "qualifica"
    IDOSO ||--o{ RESPONSAVEL : "possui"

    %% Prontuário e Atividades Médicas
    IDOSO ||--o{ PRESCRICAO : "recebe"
    IDOSO ||--o{ CHECKIN : "realiza"
    IDOSO ||--o{ CONSULTA : "agenda"

    %% Medicamentos e Estoque
    MEDICAMENTO ||--o{ ESTOQUE : "contem"
    MEDICAMENTO ||--o{ PRESCRICAO : "eh_prescrito"
    ESTOQUE ||--o{ MOVIMENTACAO : "sofre"

    %% Responsabilidade de Funcionários
    FUNCIONARIO ||--o{ CHECKIN : "registra"
    FUNCIONARIO ||--o{ PRESCRICAO : "registra"
    FUNCIONARIO ||--o{ CONSULTA : "registra"
    FUNCIONARIO ||--o{ MOVIMENTACAO : "executa"

    %% --- DEFINIÇÕES DE ATRIBUTOS ---

    PESSOA {
        int4 id_pessoa PK
        varchar nome_pessoa
        varchar cpf UK
        varchar telefone
        date data_nascimento
        timestamp data_entrada
        int4 id_endereco FK
    }

    IDOSO {
        int4 id_idoso PK
        int4 numero_quarto
        text restricoes_medicas
        text observacoes
        int4 id_pessoa FK
        int4 id_lar FK
    }

    FUNCIONARIO {
        int4 id_funcionario PK
        varchar funcao
        date data_contratacao
        decimal salario
        varchar status
        date data_desligamento
        int4 id_pessoa FK
        int4 id_especialidade FK
    }

    RESPONSAVEL {
        int4 id_responsavel PK
        varchar nome_responsavel
        varchar cpf UK
        varchar telefone
        varchar parentesco
        int4 id_idoso FK
    }

    LAR {
        int4 id_lar PK
        varchar nome
        varchar cnpj UK
        int4 id_endereco FK
    }

    ENDERECO {
        int4 id_endereco PK
        varchar rua
        int4 numero
        varchar bairro
        varchar cidade
        varchar complemento
    }

    ESPECIALIDADE {
        int4 id_especialidade PK
        varchar nome_especialidade UK
        text descricao
    }

    MEDICAMENTO {
        int4 id_medicamento PK
        varchar nome_medicamento
        varchar dosagem
        varchar via_administracao
    }

    ESTOQUE {
        int4 id_estoque PK
        int4 qtd_atual
        int4 qtd_minima
        varchar lote
        date validade
        int4 id_medicamento FK
    }

    MOVIMENTACAO {
        int4 id_movimentacao PK
        varchar tipo
        int4 qtd
        timestamp data_hora
        text obs
        int4 id_estoque FK
        int4 id_funcionario FK
    }

    PRESCRICAO {
        int4 id_prescricao PK
        varchar horario
        int4 qtd
        date data_inicio
        date data_fim
        text obs
        int4 id_idoso FK
        int4 id_medicamento FK
        int4 id_funcionario FK
    }

    CHECKIN {
        int4 id_checkin PK
        timestamp data
        varchar pressao
        decimal temperatura
        int4 saturacao
        text evolucao
        int4 id_idoso FK
        int4 id_funcionario FK
    }

    CONSULTA {
        int4 id_consulta PK
        date data
        varchar local
        text motivo
        varchar especialidade
        varchar medico
        text obs
        int4 id_idoso FK
        int4 id_funcionario FK
    }
