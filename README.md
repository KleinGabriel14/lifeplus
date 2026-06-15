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

## Tecnologias Utilizadas

* PostgreSQL
* SQL
* brModelo / Visual Paradigm
* DBeaver
* GitHub

## Arquivos do Projeto

| Arquivo                | Descrição                         |
| ---------------------- | --------------------------------- |
| `LifePlus_Final.vpp`   | Versão final do projeto           |
| `02_create_tables.sql` | Criação das tabelas e constraints |
| `03_indexes.sql`       | Criação dos índices               |
| `inserts.sql`          | Inserção dos dados de teste       |

## Versões Antigas

| Arquivo          | Descrição           |
| ---------------- | ------------------- |
| `lifeplus01.vpp` | Modelo inicial      |
| `lifeplus02.vpp` | Ajustes e melhorias |
| `lifeplus03.vpp` | Últimos ajustes     |

## Como usar o projeto

Este projeto contém a estrutura de um banco de dados para um **Sistema de Gerenciamento de Lar de Idosos**, desenvolvido em **PostgreSQL**.

### Pré-requisitos

Antes de executar o projeto, é necessário ter instalado:

* PostgreSQL
* DBeaver ou outro gerenciador de banco de dados

### Ordem de execução dos scripts

Os scripts devem ser executados na seguinte ordem:

```text
1. 02_create_tables.sql
2. 03_indexes.sql
3. inserts.sql
```

### Executando no DBeaver

1. Abra o DBeaver.
2. Crie uma conexão com o PostgreSQL.
3. Crie ou selecione o banco de dados do projeto.
4. Abra o arquivo `02_create_tables.sql`.
5. Execute o script para criar as tabelas e constraints.
6. Abra o arquivo `03_indexes.sql`.
7. Execute o script para criar os índices.
8. Abra o arquivo `inserts.sql`.
9. Execute o script para inserir os dados de teste.

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

## Diagrama Entidade Relacionamento

![Diagrama ER](img/diagrama-er.png)

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
      000000
    </td>
    <td align="center">
      <img src="https://api.dicebear.com/9.x/adventurer/svg?seed=GabrielKleinDev" width="80px"><br>
      <b>Gabriel Henrique Klein</b><br>
      Matrícula:<br>
      449952
    </td>
    <td align="center">
      <img src="https://api.dicebear.com/9.x/adventurer/svg?seed=GuiTechMan" width="80px"><br>
      <b>Guilherme Removicz</b><br>
      Matrícula:<br>
      000000
    </td>
    <td align="center">
      <img src="https://api.dicebear.com/9.x/adventurer/svg?seed=PedroCode" width="80px"><br>
      <b>Pedro Henrique Belloli</b><br>
      Matrícula:<br>
      000000
    </td>
  </tr>
</table>

## Status do Projeto

Em desenvolvimento.

## Instituição

UNOESC - Universidade do Oeste de Santa Catarina
