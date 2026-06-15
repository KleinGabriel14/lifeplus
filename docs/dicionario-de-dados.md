# Dicionário de Dados — Sistema de Gestão de Lar de Idosos

---

## Tabela: `endereco`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_endereco` | int4 | NÃO | PK | Identificador único do endereço. |
| `rua` | varchar(255) | NÃO | — | Nome da rua. |
| `numero` | int4 | NÃO | — | Número do endereço. |
| `bairro` | varchar(255) | NÃO | — | Bairro do endereço. |
| `cidade` | varchar(255) | NÃO | — | Cidade do endereço. |
| `complemento` | varchar(255) | SIM | — | Complemento do endereço, quando houver. |

---

## Tabela: `especialidade`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_especialidade` | int4 | NÃO | PK | Identificador único da especialidade. |
| `nome_especialidade` | varchar(255) | NÃO | UNIQUE | Nome da especialidade profissional. |
| `descricao` | text | SIM | — | Descrição da especialidade. |

---

## Tabela: `medicamento`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_medicamento` | int4 | NÃO | PK | Identificador único do medicamento. |
| `nome_medicamento` | varchar(255) | NÃO | — | Nome do medicamento. |
| `dosagem` | varchar(50) | NÃO | — | Dosagem do medicamento. |
| `via_administracao` | varchar(50) | NÃO | — | Via de administração do medicamento. |

---

## Tabela: `pessoa`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_pessoa` | int4 | NÃO | PK | Identificador único da pessoa. |
| `nome_pessoa` | varchar(225) | NÃO | — | Nome completo da pessoa. |
| `cpf` | varchar(30) | NÃO | UNIQUE | CPF da pessoa. |
| `telefone` | varchar(20) | SIM | — | Telefone de contato da pessoa. |
| `data_nascimento` | date | NÃO | — | Data de nascimento da pessoa. |
| `data_entrada` | timestamp | NÃO | — | Data e hora de entrada/cadastro da pessoa no sistema. |
| `id_endereco` | int4 | NÃO | FK | Endereço vinculado à pessoa. |

---

## Tabela: `lar`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_lar` | int4 | NÃO | PK | Identificador único do lar de idosos. |
| `nome` | varchar(255) | NÃO | — | Nome do lar de idosos. |
| `cnpj` | varchar(18) | NÃO | UNIQUE | CNPJ do lar. |
| `id_endereco` | int4 | NÃO | FK | Endereço vinculado ao lar. |

---

## Tabela: `funcionario`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_funcionario` | int4 | NÃO | PK | Identificador único do funcionário. |
| `id_pessoa` | int4 | NÃO | FK, UNIQUE | Pessoa vinculada ao funcionário. |
| `id_especialidade` | int4 | NÃO | FK | Especialidade vinculada ao funcionário. |
| `funcao` | varchar(100) | NÃO | — | Função ou cargo do funcionário. |
| `data_contratacao` | date | NÃO | — | Data de contratação do funcionário. |
| `salario` | decimal(10,2) | NÃO | — | Salário do funcionário. |
| `status` | varchar(50) | NÃO | — | Situação do funcionário, como ativo ou desligado. |
| `data_desligamento` | date | SIM | — | Data de desligamento, quando houver. |

---

## Tabela: `idoso`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_idoso` | int4 | NÃO | PK | Identificador único do idoso. |
| `numero_quarto` | int4 | NÃO | — | Número do quarto do idoso. |
| `restricoes_medicas` | text | SIM | — | Restrições médicas ou condições crônicas do idoso. |
| `observacoes` | text | SIM | — | Observações gerais sobre o idoso. |
| `id_pessoa` | int4 | NÃO | FK, UNIQUE | Pessoa vinculada ao idoso. |
| `id_lar` | int4 | NÃO | FK | Lar ao qual o idoso pertence. |

---

## Tabela: `estoque`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_estoque` | int4 | NÃO | PK | Identificador único do item de estoque. |
| `id_medicamento` | int4 | NÃO | FK | Medicamento vinculado ao estoque. |
| `qtd_atual` | int4 | NÃO | — | Quantidade atual do medicamento em estoque. |
| `qtd_minima` | int4 | NÃO | — | Quantidade mínima recomendada para o estoque. |
| `lote` | varchar(50) | NÃO | — | Número ou identificação do lote. |
| `validade` | date | NÃO | — | Data de validade do medicamento. |

---

## Tabela: `responsavel`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_responsavel` | int4 | NÃO | PK | Identificador único do responsável. |
| `nome_responsavel` | varchar(255) | NÃO | — | Nome completo do responsável. |
| `cpf` | varchar(30) | NÃO | UNIQUE | CPF do responsável. |
| `telefone` | varchar(20) | NÃO | — | Telefone de contato do responsável. |
| `parentesco` | varchar(50) | NÃO | — | Grau de parentesco ou vínculo com o idoso. |
| `id_idoso` | int4 | NÃO | FK | Idoso vinculado ao responsável. |

---

## Tabela: `movimentacao`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_movimentacao` | int4 | NÃO | PK | Identificador único da movimentação de estoque. |
| `tipo` | tipo_movimentacao | NÃO | — | Tipo da movimentação: entrada ou saída. |
| `qtd` | int4 | NÃO | — | Quantidade movimentada. |
| `data_hora` | timestamp | NÃO | — | Data e hora da movimentação. |
| `obs` | text | SIM | — | Observações sobre a movimentação. |
| `id_estoque` | int4 | NÃO | FK | Item de estoque movimentado. |
| `id_funcionario` | int4 | NÃO | FK | Funcionário responsável pela movimentação. |

---

## Tabela: `prescricao`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_prescricao` | int4 | NÃO | PK | Identificador único da prescrição. |
| `id_idoso` | int4 | NÃO | FK | Idoso que recebeu a prescrição. |
| `id_medicamento` | int4 | NÃO | FK | Medicamento prescrito. |
| `horario` | varchar(50) | NÃO | — | Horário de administração do medicamento. |
| `qtd` | int4 | NÃO | — | Quantidade prescrita. |
| `data_inicio` | date | NÃO | — | Data de início da prescrição. |
| `data_fim` | date | SIM | — | Data de encerramento da prescrição. |
| `obs` | text | SIM | — | Observações sobre a prescrição. |
| `id_funcionario` | int4 | NÃO | FK | Funcionário responsável pela prescrição. |

---

## Tabela: `checkin`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_checkin` | int4 | NÃO | PK | Identificador único do check-in/evolução. |
| `data` | timestamp | NÃO | — | Data e hora do registro de evolução. |
| `pressao` | varchar(20) | NÃO | — | Pressão arterial registrada. |
| `temperatura` | decimal(4,2) | NÃO | — | Temperatura corporal registrada. |
| `saturacao` | int4 | NÃO | — | Saturação de oxigênio registrada. |
| `evolucao` | text | SIM | — | Descrição da evolução do idoso. |
| `id_idoso` | int4 | NÃO | FK | Idoso vinculado ao check-in. |
| `id_funcionario` | int4 | NÃO | FK | Funcionário responsável pelo registro. |

---

## Tabela: `consulta`

| Coluna | Tipo | Nulo | Restrições | Descrição |
| :--- | :--- | :--- | :--- | :--- |
| `id_consulta` | int4 | NÃO | PK | Identificador único da consulta. |
| `data` | date | NÃO | — | Data da consulta médica. |
| `local` | varchar(255) | NÃO | — | Local da consulta. |
| `motivo` | text | NÃO | — | Motivo da consulta. |
| `especialidade` | varchar(255) | NÃO | — | Especialidade médica da consulta. |
| `medico` | varchar(255) | NÃO | — | Nome do médico responsável. |
| `obs` | text | SIM | — | Observações sobre a consulta. |
| `id_idoso` | int4 | NÃO | FK | Idoso vinculado à consulta. |
| `id_funcionario` | int4 | NÃO | FK | Funcionário responsável pelo registro da consulta. |
