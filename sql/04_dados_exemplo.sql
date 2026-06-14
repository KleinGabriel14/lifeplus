-- inserts.sql
INSERT INTO endereco (rua, numero, bairro, cidade, complemento) VALUES
('Av. Central',120,'Centro','Iporã do Oeste','Bloco A'),
('Rua das Flores',450,'Jardins','Iporã do Oeste','Casa'),
('Rua São João',88,'Primavera','Iporã do Oeste',NULL),
('Av. Brasil',1010,'Centro','Iporã do Oeste','Apto 202');

INSERT INTO especialidade (nome_especialidade, descricao) VALUES
('Enfermagem','Cuidados gerais'),
('Fisioterapia','Reabilitação'),
('Medicina Geral','Atendimento clínico');

INSERT INTO medicamento (nome_medicamento,dosagem,via_administracao) VALUES
('Paracetamol','500mg','Oral'),
('Losartana','50mg','Oral'),
('Insulina','10UI','Subcutânea'),
('Omeprazol','20mg','Oral'),
('AAS','100mg','Oral');

INSERT INTO lar (nome,cnpj,id_endereco)
VALUES ('Lar Doce Lar','12.345.678/0001-99',1);

-- Pessoas funcionários
INSERT INTO pessoa
(nome_pessoa,cpf,telefone,data_nascimento,id_endereco)
VALUES
('Ana Silva','123.456.789-01','(49) 99911-0001','1985-04-12',1),
('Bruno Santos','234.567.891-02','(49) 99911-0002','1990-08-22',1),
('Carla Oliveira','345.678.912-03','(49) 99911-0003','1988-11-05',1),
('Diego Rodrigues','456.789.123-04','(49) 99911-0004','1993-03-14',1),
('Elena Costa','567.891.234-05','(49) 99911-0005','1982-07-19',1),
('Fabio Almeida','678.912.345-06','(49) 99911-0006','1987-01-30',1);

INSERT INTO funcionario
(id_pessoa,id_especialidade,funcao,data_contratacao,salario,status)
VALUES
(1,1,'Enfermeira','2024-01-15',3500,'Ativo'),
(2,2,'Fisioterapeuta','2024-01-20',3800,'Ativo'),
(3,3,'Médica','2024-02-01',7500,'Ativo'),
(4,1,'Enfermeiro','2024-02-10',3500,'Ativo'),
(5,2,'Fisioterapeuta','2024-02-15',3800,'Ativo'),
(6,3,'Médico','2024-03-01',7500,'Ativo');

-- Pessoas idosos
INSERT INTO pessoa
(nome_pessoa,cpf,telefone,data_nascimento,id_endereco)
VALUES
('Afonso Pena','111.222.333-01','(49) 99801-0001','1934-01-12',1),
('Benedita Silva','111.222.333-02','(49) 99801-0002','1940-05-22',1),
('Clodoaldo Mota','111.222.333-03','(49) 99801-0003','1937-09-05',1),
('Darcilia Costa','111.222.333-04','(49) 99801-0004','1942-03-19',1),
('Euripedes Gomes','111.222.333-05','(49) 99801-0005','1935-07-25',1),
('Francisca Reis','111.222.333-06','(49) 99801-0006','1939-11-30',1),
('Geraldo Souza','111.222.333-07','(49) 99801-0007','1941-02-14',1),
('Herminia Rocha','111.222.333-08','(49) 99801-0008','1936-06-18',1);

INSERT INTO idoso
(numero_quarto,restricoes_medicas,observacoes,id_pessoa,id_lar)
VALUES
(101,'Hipertensão crônica','Monitorar pressão',7,1),
(102,'Diabetes Tipo 2','Controle glicêmico',8,1),
(103,'Sem restrições','-',9,1),
(104,'Hipertensão','-',10,1),
(105,'Diabetes crônica','-',11,1),
(106,'Sem restrições','-',12,1),
(107,'Hipertensão severa','-',13,1),
(108,'Diabetes Tipo 2','-',14,1);

INSERT INTO responsavel
(nome_responsavel,cpf,telefone,parentesco,id_idoso)
VALUES
('Carlos Silva','222.333.444-55','(49) 99991-0001','Filho',1),
('Maria Silva','333.444.555-66','(49) 99991-0002','Filha',2),
('João Costa','444.555.666-77','(49) 99991-0003','Filho',4),
('Paula Gomes','555.666.777-88','(49) 99991-0004','Filha',5),
('Pedro Souza','666.777.888-99','(49) 99991-0005','Filho',7);

INSERT INTO estoque
(id_medicamento,qtd_atual,qtd_minima,lote,validade) VALUES
(1,500,100,'L001','2027-12-31'),
(2,300,50,'L002','2027-06-30'),
(3,100,20,'L003','2027-11-15');

INSERT INTO movimentacao
(tipo,qtd,id_estoque,id_funcionario,obs) VALUES
('entrada',100,1,1,'Reposição'),
('saida',10,1,1,'Uso diário'),
('entrada',50,2,2,'Reposição');

INSERT INTO prescricao
(id_idoso,id_medicamento,horario,qtd,data_inicio,data_fim,id_funcionario,obs)
VALUES
(1,2,'08:00',1,CURRENT_DATE-10,CURRENT_DATE+365,3,'Controle pressão'),
(2,3,'07:00',1,CURRENT_DATE-5,CURRENT_DATE+365,3,'Controle glicemia'),
(4,2,'09:00',1,CURRENT_DATE-3,CURRENT_DATE+365,6,'Controle pressão'),
(5,3,'20:00',1,CURRENT_DATE-2,CURRENT_DATE+365,6,'Controle glicemia'),
(7,1,'14:00',1,CURRENT_DATE-1,CURRENT_DATE+365,3,'Analgésico');

INSERT INTO checkin
(data,pressao,temperatura,saturacao,evolucao,id_idoso,id_funcionario)
VALUES
(CURRENT_TIMESTAMP-INTERVAL '1 day','13/8',36.5,98,'Estável',1,1),
(CURRENT_TIMESTAMP-INTERVAL '2 day','12/8',36.7,97,'Boa evolução',2,1),
(CURRENT_TIMESTAMP-INTERVAL '3 day','13/9',36.6,98,'Sem queixas',4,1),
(CURRENT_TIMESTAMP-INTERVAL '4 day','12/7',36.4,99,'Estável',5,4),
(CURRENT_TIMESTAMP-INTERVAL '5 day','13/8',36.8,97,'Boa aceitação alimentar',7,4);

INSERT INTO consulta
(data,local,motivo,especialidade,medico,obs,id_idoso,id_funcionario)
VALUES
(CURRENT_DATE+7,'Clínica Central','Rotina','Cardiologia','Dr. Roberto','Retorno em 6 meses',1,3),
(CURRENT_DATE+10,'Hospital Regional','Avaliação','Endocrinologia','Dra. Paula','Controle diabetes',2,6);