CREATE DATABASE consultas
USE consultas

CREATE TABLE cidades(
	codcid TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  	nome VARCHAR(100),
  	uf VARCHAR(2)
);

CREATE TABLE medicos(
	codmed TINYINT PRIMARY KEY NOT NULL,
  	nome VARCHAR(100),
  	endereco VARCHAR(200),
  	telefone TINYINT,
  	codcid TINYINT NOT NULL
  		CONSTRAINT medico_pertence_a_cidade
  			FOREIGN KEY(codcid)
  				REFERENCES cidade(codcid)
);

CREATE TABLE pacientes(
	codpac TINYINT NOT NULL PRIMARY KEY,
  	nome VARCHAR(100),
  	endereco VARCHAR(200),
  	telefone TINYINT,
  	codcid TINYINT NOT NULL
  		CONSTRAINT paciente_pertence_a_cidade
  			FOREIGN KEY(codcid)
  				REFERENCES cidade(codcid)
);



CREATE TABLE consultas(
	codconsulta TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  	codmed TINYINT NOT NULL,
  	codpac TINYINT NOT NULL,
  	data_consulta DATE,
  	hora VARCHAR(5)
  	CONSTRAINT pertence_a_medico
 		FOREIGN KEY(codmed)
  			REFERENCES medico(codmed),
  	CONSTRAINT pertence_a_paciente
  		FOREIGN KEY(codpac)
  			REFERENCES paciente(codpac)
);

CREATE TABLE prescricao(
	codconsulta TINYINT NOT NULL,
  	codmedicamento TINYINT NOT NULL,
  	posologia VARCHAR(10)
  		CONSTRAINT pertence_a_consulta
  			FOREIGN KEY(codconsulta)
  				REFERENCES consulta(codconsulta),
  		CONSTRAINT pertence_a_medicamento
  			FOREIGN KEY(codmedicamento)
  				REFERENCES medicamento(codmedicamento)
);

CREATE TABLE medicamentos(
	codmedicamento TINYINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  	nome VARCHAR(100),
  	composicao VARCHAR(100),
  	preco DECIMAL(5,2)
);


INSERT INTO medicos
VALUES  (1, 'Gabriel', 'Rua Sepe', 51993615191, 1),
		(2, 'Lucas', 'Rua Guaraci', 51993615161, 1),
		(3, 'Jonas', 'Av Paraguassu', 51993615171, 1);

INSERT INTO pacientes
VALUES  (1, 'Joao', 'Rua Andira', 51981344567, 1),
		(2, 'Claudio', 'Rua Encantado', 51981304567, 1),
		(3, 'Natalia', 'Rua Maraba', 51981544567, 1);

INSERT INTO cidades
VALUES  (1, 'Capao da Canoa', 'RS'),
		(2, 'Torres', 'RS'),
		(3, 'Tramandai', 'RS');

INSERT INTO consultas
VALUES  (1, 1, 1, '2020-12-07', '20:00'),
		(2, 2, 2, '2020-12-07', '20:00'),
		(3, 3, 3, '2020-12-07', '20:00');

INSERT INTO prescricao
VALUES  (1, 1, '20mg'),
		(2, 2, '30mg'),
		(3, 3, '10mg');

INSERT INTO medicamentos
VALUES	(1, 'Riss', 'Risperidona', 22,99),
		(2, 'Dorflex', 'Dipirona', 5,99),
		(3, 'Xanax', 'Alprazolam', 40,99);

UPDATE medicamentos
SET preco = preco - 20%
WHERE preco = 22,99;

DELETE FROM cidades
WHERE codcid = 1

SELECT nome
FROM cidades
WHERE 'uf' = 'RS'

SELECT nome, preco 
FROM medicamentos

SELECT nome, telefone
FROM pacientes
WHERE codcid = 1

--12
SELECT AVG(preco) AS media
FROM medicamentos

--13
SELECT COUNT(*)
FROM consultas 

--14
SELECT MAX(preco) AS maior
FROM medicamentos

--  Listar o nome e telefone dos médicos da cidade de ‘Torres’.
SELECT 	medicos.nome as medico, medicos.telefone as telefone_medicos, cidades.nome as cidade
FROM 	cidades, medicos
WHERE 	cidades.id = medicos.id_cidade and 
		cidades.nome ='Torres'

-- Listar todas os nomes dos medicamentos, juntamente com a posologia, prescritos na consulta de código 1.
SELECT 	consultas.id as codigo_consulta, medicamentos.nome as medicamentos, prescricao.posologia as posologia
FROM 	consultas, medicamentos, prescricao
WHERE  	prescricao.id_consulta = consultas.id and 
		prescricao.id_medicamento = medicamentos.id and
		consultas.id = 1

--  Listar o nome e telefone de todos os pacientes que moram na cidade de nome ‘Capão da Canoa’.
SELECT 	pacientes.nome as paciente, pacientes.telefone as telefone_pacientes, cidades.nome as cidade
FROM 	pacientes, cidades
WHERE 	cidades.id = pacientes.id_cidade and 
		cidades.nome = 'Capão da Canoa'

-- Listar os nomes dos pacientes que tem consulta marcada.
SELECT 	consultas.id as id_consulta, pacientes.nome as paciente
FROM 	pacientes, consultas
WHERE 	pacientes.id = consultas.id_paciente

-- Listar todos os nomes e telefones dos pacientes das consultas marcadas para o dia ’07/12/2020’.
SELECT 	pacientes.nome as paciente, pacientes.telefone as telefone_pacientes, consultas.data_hora_consulta as data_consulta
FROM 	pacientes, consultas
WHERE 	pacientes.id = consultas.id_paciente and 
		consultas.data_hora_consulta = '2020-12-07'

-- Listar todas as consultas com nome do médico, nome do paciente, data e hora.
SELECT 	medicos.id as id_medicos, consultas.id as id_consulta, medicos.nome as nome_medicos, pacientes.nome as paciente, consultas.data_hora_consulta as data_consulta
FROM 	pacientes, consultas, medicos
WHERE 	pacientes.id = consultas.id_paciente and
		medicos.id = consultas.id_medico