# LIFE PLUS

Projeto de modelagem de banco de dados desenvolvido para gerenciamento de uma **Casa Lar / Casa de Idosos**.

## Objetivo

O objetivo do projeto é criar uma estrutura de banco de dados capaz de gerenciar informações relacionadas a:

* Idosos
* Funcionários
* Quartos
* Medicamentos
* Consultas
* Observações e histórico
* Estoque de medicamentos
* Prescrições médicas
* Check-ins de saúde

## Requisitos Funcionais

---

| ID | Descrição |
| :--- | :--- |
| **RF01** | O sistema deve permitir o cadastro de endereços com rua, número, bairro, cidade e complemento. |
| **RF02** | O sistema deve permitir o cadastro de pessoas com nome, CPF, telefone, data de nascimento, data de entrada e endereço. |
| **RF03** | O sistema deve permitir o cadastro de lares de idosos com nome, CNPJ e endereço vinculado. |
| **RF04** | O sistema deve permitir o cadastro de especialidades profissionais com nome e descrição. |
| **RF05** | O sistema deve permitir o cadastro de funcionários vinculados a uma pessoa e a uma especialidade. |
| **RF06** | O sistema deve permitir informar função, data de contratação, salário, status e data de desligamento do funcionário. |
| **RF07** | O sistema deve permitir o cadastro de idosos vinculados a uma pessoa e a um lar. |
| **RF08** | O sistema deve permitir registrar número do quarto, restrições médicas e observações dos idosos. |
| **RF09** | O sistema deve permitir o cadastro de responsáveis vinculados a um idoso. |
| **RF10** | O sistema deve permitir registrar nome, CPF, telefone e parentesco do responsável. |
| **RF11** | O sistema deve permitir o cadastro de medicamentos com nome, dosagem e via de administração. |
| **RF12** | O sistema deve permitir o controle de estoque de medicamentos, registrando quantidade atual, quantidade mínima, lote e validade. |
| **RF13** | O sistema deve permitir registrar movimentações de entrada e saída de medicamentos no estoque. |
| **RF14** | O sistema deve permitir vincular cada movimentação de estoque a um funcionário responsável. |
| **RF15** | O sistema deve permitir registrar prescrições de medicamentos para os idosos. |
| **RF16** | O sistema deve permitir informar medicamento, horário, quantidade, data de início, data de fim e observações da prescrição. |
| **RF17** | O sistema deve permitir registrar check-ins/evoluções de saúde dos idosos. |
| **RF18** | O sistema deve permitir registrar pressão arterial, temperatura, saturação e evolução do idoso. |
| **RF19** | O sistema deve permitir vincular cada check-in ao idoso e ao funcionário responsável pelo lançamento. |
| **RF20** | O sistema deve permitir o cadastro de consultas médicas dos idosos. |
| **RF21** | O sistema deve permitir registrar data, local, motivo, especialidade, médico e observações da consulta. |
| **RF22** | O sistema deve permitir listar residentes com mais de 80 anos que possuam condição crônica registrada. |
| **RF23** | O sistema deve permitir listar registros de evolução realizados no mês atual. |
| **RF24** | O sistema deve permitir listar prescrições de medicamentos ainda ativas. |
| **RF25** | O sistema deve permitir gerar relatório sumarizado por funcionário, exibindo total de evoluções e prescrições realizadas no mês. |
| **RF26** | O sistema deve permitir consultar os responsáveis vinculados a cada idoso. |
| **RF27** | O sistema deve permitir consultar funcionários por especialidade. |
| **RF28** | O sistema deve permitir identificar medicamentos com estoque baixo. |
| **RF29** | O sistema deve permitir identificar medicamentos vencidos ou próximos ao vencimento. |
| **RF30** | O sistema deve manter os vínculos entre idosos, funcionários, responsáveis, medicamentos, prescrições, check-ins, consultas e movimentações de estoque. |

<br>

## Requisitos Não Funcionais

---

| ID | Descrição |
| :--- | :--- |
| **RNF01** | O sistema deve utilizar banco de dados relacional PostgreSQL para armazenamento das informações. |
| **RNF02** | O sistema deve garantir integridade referencial por meio de chaves primárias e chaves estrangeiras. |
| **RNF03** | O sistema deve impedir duplicidade de CPF de pessoas, CPF de responsáveis, CNPJ de lares e nome de especialidades. |
| **RNF04** | O sistema deve possuir campos obrigatórios para evitar cadastros incompletos em informações essenciais. |
| **RNF05** | O sistema deve armazenar datas e horários corretamente para registros de entrada, contratação, movimentações, check-ins, prescrições e consultas. |
| **RNF06** | O sistema deve proteger os dados pessoais dos idosos, funcionários e responsáveis. |
| **RNF07** | O sistema deve proteger informações sensíveis relacionadas à saúde dos idosos, como restrições médicas, prescrições e evoluções. |
| **RNF08** | O sistema deve permitir consultas de forma eficiente por meio de índices em campos utilizados em filtros, junções e relatórios. |
| **RNF09** | O sistema deve manter consistência dos dados mesmo em operações de exclusão, respeitando as regras de relacionamento definidas no banco. |
| **RNF10** | O sistema deve permitir rastreabilidade dos registros importantes, identificando o funcionário responsável por movimentações, prescrições, check-ins e consultas. |
| **RNF11** | O sistema deve ser organizado de forma que facilite manutenção e futuras alterações no banco de dados. |
| **RNF12** | O sistema deve utilizar nomes de tabelas e campos de forma padronizada e coerente com o modelo relacional. |
| **RNF13** | O sistema deve possuir dados estruturados de forma normalizada, evitando redundância desnecessária. |
| **RNF14** | O sistema deve permitir crescimento futuro, como inclusão de novos idosos, funcionários, lares, medicamentos e registros históricos. |
| **RNF15** | O sistema deve apresentar desempenho adequado na execução dos relatórios previstos no modelo de negócio. |
| **RNF16** | O sistema deve utilizar restrições do banco de dados para impedir registros órfãos ou inconsistentes. |
| **RNF17** | O sistema deve permitir backup periódico da base de dados para evitar perda de informações. |
| **RNF18** | O sistema deve armazenar valores numéricos de forma adequada, como salário, temperatura, quantidade atual e quantidade mínima de estoque. |
| **RNF19** | O sistema deve utilizar tipos de dados adequados para cada informação, como datas, textos, números e enumerações. |
| **RNF20** | O sistema deve manter disponibilidade para consulta das informações essenciais do lar de idosos sempre que necessário. |

## Diagrama Entidade-Relacionaento 

<img width="2103" height="1723" alt="testepng" src="https://github.com/user-attachments/assets/f977d790-4671-4e7a-b01f-506d715f14a4" />

link para acessar o modelo logico relacional  https://dbdiagram.io/d/6a308d215c789b8acb8ded25 

modelo logico relacional https://github.com/KleinGabriel14/lifeplus/blob/6e43f2cc62c51cce1cbb12633537d2abe7010425/docs/imagem%20modelo%20logico.png 


## Tecnologias Utilizadas

* PostgreSQL
* SQL
* brModelo / Visual Paradigm
* DBeaver
* GitHub

## Estrutura do repositório
## Estrutura do repositório

```text
lifeplus/
├── docs/
│   ├── Diagrama-lifePlus.png                  # Modelo do Visual Paradigm
│   ├── DiagramaEntidade-Relacionamento.md     # Modelo lógico com cardinalidades e normalização
│   └── dicionario-de-dados.md                 # Dicionário de dados completo
│
├── sql/
│   ├── 01_create_database.sql                 # Criação do banco de dados
│   ├── 02_create_tables.sql                   # Tabelas e constraints (PK, FK, UK, CHECK, DEFAULT)
│   ├── 03_indexes.sql                         # Índices para otimização de consultas
│   ├── 04_dados_exemplo.sql                   # Dados de exemplo para testes
│   └── 05_consultas.sql                       # Relatórios gerenciais
│
└── versoes-antigas/
    ├── LifePlus_04.vpp
    ├── brimprimirteste.pdf
    ├── lifeplus01.vpp
    ├── lifeplus02.vpp
    └── lifeplus03.vpp
```
    
## Arquivos do Projeto

| Arquivo                  | Descrição                         |
| ----------------------   | --------------------------------- |
| `LifePlus_Final.vpp`     | Versão final do projeto           |
| `01_create_database.sql` | Criação do banco de dados         |
| `02_create_tables.sql`   | Criação das tabelas e constraints |
| `03_indexes.sql`         | Criação dos índices               |
| `04_dados_exemplo.sql`   | Inserção dos dados de teste       |
| `05_consultas.sql`       | Relatórios                        |

## Versões Antigas

| Arquivo          | Descrição           |
| ---------------- | ------------------- |
| `lifeplus01.vpp` | Modelo inicial      |
| `lifeplus02.vpp` | Ajustes e melhorias |
| `lifeplus03.vpp` | Últimos ajustes     |
|  LifePlus_04.vpp | Ajustes             |

## Como usar o projeto

Este projeto contém a estrutura de um banco de dados para um **Sistema de Gerenciamento de Lar de Idosos**, desenvolvido em **PostgreSQL**.

### Pré-requisitos

Antes de executar o projeto, é necessário ter instalado:

* PostgreSQL
* DBeaver ou outro gerenciador de banco de dados

### Ordem de execução dos scripts

Os scripts devem ser executados na seguinte ordem:

```text
1. 01_create_database.sql
2. 02_create_tables.sql
3. 03_indexes.sql
4. 04_dados_exemplo.sql
5. 05_consultas.sql
```

### Executando no DBeaver

1. Abra o DBeaver.
2. Crie uma conexão com o PostgreSQL.
3. Crie ou selecione o banco de dados do projeto.
4. Abra o arquivo `01_create_database.sql`.
5. Execute o script para criar o banco de dados.
6. Abra o arquivo `02_create_tables.sql`.
7. Execute o script para criar as tabelas e constraints.
8. Abra o arquivo `03_indexes.sql`.
9. Execute o script para criar os índices.
10. Abra o arquivo `04_dados_exemplo.sql`.
11. Execute o script para inserir os dados de teste.
12. Abra o arquivo `05_consultas.sql`.
13. Execute o script para gerar os relatórios. 

### Observação importante

Os dados do arquivo `inserts.sql` utilizam IDs fixos, como por exemplo:

```sql
id_endereco = 1
id_pessoa = 1
id_lar = 1
```

Por isso, é recomendado executar os inserts em um banco vazio, logo após a criação das tabelas.

Caso precise limpar os dados e executar os inserts novamente, utilize:

```sql
TRUNCATE TABLE
    consulta,
    checkin,
    prescricao,
    movimentacao,
    estoque,
    responsavel,
    idoso,
    funcionario,
    pessoa,
    lar,
    medicamento,
    especialidade,
    endereco
RESTART IDENTITY CASCADE;
```

Depois disso, execute novamente o arquivo `inserts.sql`.


## Conceitos Utilizados

* Modelagem Entidade-Relacionamento
* DDL
* Chaves Primárias
* Chaves Estrangeiras
* Relacionamentos
* Normalização
* Índices
* Constraints

## Desenvolvedores

<table>
  <tr>
    <td align="center">
      <img src="https://api.dicebear.com/9.x/adventurer/svg?seed=BeckerDev" width="80px"><br>
      <b>Gabriel Leonir Becker</b><br>
      Matrícula:<br>
      446411
    </td>
    <td align="center">
      <img src="https://api.dicebear.com/9.x/adventurer/svg?seed=GabrielKleinDev" width="80px"><br>
      <b>Gabriel Henrique Klein</b><br>
      Matrícula:<br>
      449952
    </td>
    <td align="center">
      <img src="https://api.dicebear.com/9.x/adventurer/svg?seed=GuiTechMan" width="80px"><br>
      <b>Guilherme Vieira Removicz</b><br>
      Matrícula:<br>
      420951
    </td>
    <td align="center">
      <img src="https://api.dicebear.com/9.x/adventurer/svg?seed=PedroCode" width="80px"><br>
      <b>Pedro Henrique Belloli</b><br>
      Matrícula:<br>
      442564
    </td>
  </tr>
</table>

## Status do Projeto

Em desenvolvimento.

## Instituição

UNOESC - Universidade do Oeste de Santa Catarina
