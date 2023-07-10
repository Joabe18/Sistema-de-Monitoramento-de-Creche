SET DATESTYLE TO POSTGRES, DMY ;

CREATE TABLE IF NOT EXISTS tb_Profissional(
	idProfissional SERIAL PRIMARY KEY,
	nome VARCHAR(150) NOT NULL,
	sexo CHAR(1) NOT NULL CHECK(sexo IN('M','F')),
	dataNascimento DATE NOT NULL,
	CPF CHAR(11) UNIQUE NOT NULL,
	formacao VARCHAR(50) NOT NULL
);

INSERT INTO tb_Profissional(nome,sexo,dataNascimento,CPF,formacao) VALUES
('João Silva','M','10-02-1985','12345678901','Professor');
INSERT INTO tb_Profissional(nome,sexo,dataNascimento,CPF,formacao) VALUES
('Pedro Pereira','M','08-07-1983','12345678902','Professor');
INSERT INTO tb_Profissional(nome,sexo,dataNascimento,CPF,formacao) VALUES
('Ester Oliveira','F','22-09-1984','12345678903','Professora');
INSERT INTO tb_Profissional(nome,sexo,dataNascimento,CPF,formacao) VALUES
('Marcos Oliveira','M','14-04-1982','12345578903','Professor');
INSERT INTO tb_Profissional(nome,sexo,dataNascimento,CPF,formacao) VALUES
('Maria Lucia Oliveira','F','21-02-1983','39063258521','Professora');
INSERT INTO tb_Profissional(nome,sexo,dataNascimento,CPF,formacao) VALUES
('Fabiana Castro','F','05-08-1980','75326980156','Professora');
INSERT INTO tb_Profissional(nome,sexo,dataNascimento,CPF,formacao) VALUES
('Ricardo Alves','M','23-06-1979','45096323298','Professor');

--SELECT * FROM tb_Profissional;


CREATE TABLE IF NOT EXISTS tb_Turma(
	idTurma SERIAL PRIMARY KEY,
	nome VARCHAR(50) NOT NULL,
	id_Profissional INT NOT NULL REFERENCES tb_profissional(idProfissional)
);

INSERT INTO tb_Turma(nome,id_Profissional) VALUES
('Turma A',1);
INSERT INTO tb_Turma(nome,id_Profissional) VALUES
('Turma B',2);
INSERT INTO tb_Turma(nome,id_Profissional) VALUES
('Turma C',3);
INSERT INTO tb_Turma(nome,id_Profissional) VALUES
('Turma D',4);
INSERT INTO tb_Turma(nome,id_Profissional) VALUES
('Turma E',5);

--SELECT * FROM tb_Turma;


CREATE TABLE IF NOT EXISTS tb_Aluno(
	idAluno SERIAL PRIMARY KEY,
	nome VARCHAR(150) NOT NULL,
	sexo CHAR(1) NOT NULL CHECK(sexo IN('M','F')),
	dataNascimento DATE NOT NULL,
	CPF CHAR(11) UNIQUE NOT NULL,
	filiacao VARCHAR(150) NOT NULL,
	rendaFamiliar NUMERIC NOT NULL,
	dataMatricula DATE NOT NULL,
	numeroMatricula CHAR(6) UNIQUE NOT NULL,
	id_Turma INT NOT NULL REFERENCES tb_turma(idTurma)
);

-- TURMA 1
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Gabriel Silva','M','19-01-2019','12345678904','Marta Silva',5000.00,'30-05-2022','123456',1);		 		
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Marcos Silva','M','16-12-2019','12345678905','Marta Silva',5000.00,'30-05-2022','123457',1);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Priscila Neves','F','07-03-2019','12345338906','Maria Neves',4500.00,'30-05-2022','123458',1);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Pedro Augusto','M','15-02-2019','11345643904','Marta Rocha',6000.00,'31-05-2022','123459',1);		
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('João Lucas','M','16-12-2019','88345678905','Debora Oliveira',5000.00,'30-05-2022','123450',1);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('José Carlos','F','07-03-2019','99345678906','Sara Nascimento',4500.00,'31-05-2022','123412',1);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('João Pedro','M','19-01-2019','98345678904','Rebeca Silva',5000.00,'30-05-2022','123413',1);				 		
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Matheus Silva','M','16-12-2019','87345678905','Ester Silva',7000.00,'31-05-2022','123415',1);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Gabriel Santos','F','07-03-2019','76345678906','Rebeca Santos',4500.00,'31-05-2022','123465',1);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Mathias Gomes','F','07-03-2019','76345678656','Thalita Gomes',4500.00,'30-05-2022','123655',1);


-- TURMA 2
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Lucas Oliveira','M','25-03-2019','34345678656','Sara Oliveira',3000.00,'31-05-2022','223456',2);		 		
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Pedro Souza','M','05-11-2019','36345678656','Maria Souza',5000.00,'30-05-2022','223457',2);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Matheus Ferreira','M','07-03-2019','97345678656','Ana Ferreira',5500.00,'31-05-2022','223458',2);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Jonas Lima','M','15-02-2019','79845678656','Marta Lima',5000.00,'31-05-2022','223459',2);		
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Miguel Costa','M','16-12-2019','76905678656','Maria Costa',5000.00,'30-05-2022','223450',2);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Sara Carvalho','F','07-03-2019','99345678656','Thalita Carvalho',4500.00,'30-05-2022','223412',2);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Raquel Fernades','F','19-01-2019','59345678656','Rebeca Fernandes',5000.00,'30-05-2022','223413',2);				 		
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Pedro Vieira','M','16-12-2019','77348678656','Lia Vieira',5000.00,'30-05-2022','223415',2);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Gabriel Dias','M','07-03-2019','91655678656','Sara Dias',4500.00,'30-05-2022','223465',2);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Miguel Nascimento','M','07-03-2019','11345548656','Ester Nascimento',4500.00,'31-05-2022','223655',2);

-- TURMA 3
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Rute Oliveira','F','14-04-2019','48343008656','Maria Oliveira',8000.00,'31-05-2022','333456',3);		 		
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Marta Andrade','F','05-11-2019','45343548776','Ester Andrade',7000.00,'30-05-2022','333457',3);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Joao Pedro','M','21-07-2019','43345671156','Julia Nascimento',4800.00,'31-05-2022','333458',3);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Jonatas Pereira','M','19-009-2019','42545678656','Sara Pereira',3900.00,'31-05-2022','333459',3);		
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Talita Oliveira','F','12-12-2019','52775678656','Marta Oliveira',5200.00,'31-05-2022','333450',3);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Ana Farias','F','07-03-2019','59435678656','Ester Farias',5300.00,'30-05-2022','333412',3);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Noemi Silva','F','19-01-2019','53345678656','Lia Silva',5000.00,'30-05-2022','333413',3);				 		
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Benjamim Lima','M','16-12-2019','47348678699','Sara Lima',8000.00,'30-05-2022','333415',3);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Gabriel Almeida','M','19-05-2019','92653378656','Julia Almeida',4500.00,'30-05-2022','333465',3);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Samuel Carvalho','M','15-09-2019','74333548656','Lia Carvalho',4500.00,'31-05-2022','333655',3);

-- TURMA 4
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Pedro Carvalho','M','16-08-2019','74333588956','Marta Carvalho',4500.00,'31-05-2022','333755',4);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Matheus Nascimento','M','21-10-2019','74223588956','Lia Nascimento',6500.00,'31-05-2022','351755',4);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Lucas Silva','M','16-08-2019','10333588956','Rute Silva',5000.00,'31-05-2022','700755',4);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Samuel Mendes','M','01-07-2019','74593588956','Julia Mendes',6000.00,'31-05-2022','801767',4);
INSERT INTO tb_aluno (nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma)VALUES
('Pedro Mendes','M','16-08-2019','74336558956','Julia Mendes',6000.00,'31-05-2022','901767',4);

-- TURMA 5
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Gustavo Almeida','M','15-01-2019','45693258796','Edi Almeida',5000.00,'17-11-2022','123650',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Ana Maria Almeida','F','16-10-2020','58965326987','Amelia Almeida',5000.00,'17-11-2022','198457',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Bruna Tavares','F','05-02-2018','56983265896','Bianca Tavares',4500.00,'18-11-2022','113888',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Caio Castro','M','09-10-2019','5226369856','Carla Castro',6000.00,'17-11-2022','443456',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Daniela Domingues','F','15-10-2019','15632589636','Domenica Domingues',5500.00,'17-11-2022','764457',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Eduardo Ebert','M','17-02-2018','45678912369','Edmunda Ebert',4800.00,'18-11-2022','133458',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Flavio Fagundes','M','19-10-2019','39593152878','Fabiane Fagundes',4000.00,'17-11-2022','126786',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Gustavo Gomes','M','06-10-2019','56568923695','Gabriela Gomes',5000.00,'17-11-2022','127997',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Hamilton Haad','M','17-02-2018','45632589756','Hebe Haad',6500.00,'18-11-2022','123008',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Igor Ike','M','10-11-2019','52632154789','Ines Ike',7000.00,'17-11-2022','342456',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Jonas Jager','M','16-12-2019','56523641524','Joana Jaer',5800.00,'17-11-2022','829455',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Luiza Lopes','F','27-03-2018','12345678906','Luciana Lopes',4800.00,'18-11-2022','920458',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Maria Lucia Martins','F','29-01-2019','45256325874','Mariana Martins',5800.00,'17-11-2022','723416',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Nadia Nascimento','M','16-12-2019','45484245489','Nara Nascimento',7000.00,'17-11-2022','623427',5);
INSERT INTO tb_aluno(nome,sexo,dataNascimento,CPF,filiacao,rendaFamiliar,dataMatricula,numeroMatricula,id_Turma) VALUES
('Otavio Oliveira','M','01-08-2018','52478963214','Olinda Oliveira',7500.00,'18-11-2022','523438',5);

--SELECT * FROM tb_aluno;


CREATE TABLE IF NOT EXISTS tb_Chamada(
	idChamada BIGSERIAL PRIMARY KEY,
	dataChamada DATE NOT NULL,
	presenca CHAR(1) NOT NULL CHECK(presenca IN('P','F')),
	id_Aluno INT NOT NULL REFERENCES tb_aluno(idAluno),
	id_Turma INT NOT NULL REFERENCES tb_turma(idTurma)
);



CREATE TABLE IF NOT EXISTS tb_Avaliacao(
	idAvaliacao SERIAL PRIMARY KEY,
	dataAvaliacao DATE NOT NULL,
	leitura CHAR(13) NOT NULL 
	CHECK(leitura IN('AVANCADO','SUFICIENTE','DESENVOLVENDO','INSUFICIENTE')),
	matematica CHAR(13) NOT NULL 
	CHECK(leitura IN('AVANCADO','SUFICIENTE','DESENVOLVENDO','INSUFICIENTE')),
	naoAcademicas CHAR(13) NOT NULL 
	CHECK(leitura IN('AVANCADO','SUFICIENTE','DESENVOLVENDO','INSUFICIENTE')),
	id_Aluno INT NOT NULL REFERENCES tb_aluno(idAluno),
	id_Profissional INT NOT NULL REFERENCES tb_profissional(idProfissional)
);

-- AVALIAÇÕES DA TURMA 1
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','AVANCADO','AVANCADO',1,1);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','AVANCADO','AVANCADO',2,1);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','AVANCADO','AVANCADO',3,1);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','SUFICIENTE','SUFICIENTE','AVANCADO',4,1);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','SUFICIENTE','AVANCADO',5,1);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','AVANCADO','AVANCADO',6,1);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','SUFICIENTE','SUFICIENTE',7,1);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','AVANCADO','AVANCADO',8,1);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','SUFICIENTE','AVANCADO','AVANCADO',9,1);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','AVANCADO','SUFICIENTE',10,1);

-- AVALIAÇÕES DA TURMA 2
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','DESENVOLVENDO','AVANCADO',11,2);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','SUFICIENTE','DESENVOLVENDO','SUFICIENTE',12,2);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','SUFICIENTE','AVANCADO','AVANCADO',13,2);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','DESENVOLVENDO','INSUFICIENTE',14,2);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','AVANCADO','AVANCADO',15,2);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','SUFICIENTE','DESENVOLVENDO',16,2);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','SUFICIENTE','AVANCADO',17,2);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','INSUFICIENTE','DESENVOLVENDO',18,2);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','SUFICIENTE','SUFICIENTE','DESENVOLVENDO',19,2);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','AVANCADO','SUFICIENTE',20,2);

-- AVALIAÇÕES DA TURMA 3
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','DESENVOLVENDO','AVANCADO',21,3);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','SUFICIENTE','SUFICIENTE','SUFICIENTE',22,3);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','SUFICIENTE','AVANCADO',23,3);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','DESENVOLVENDO','AVANCADO',24,3);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','DESENVOLVENDO','DESENVOLVENDO',25,3);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','INSUFICIENTE','SUFICIENTE','DESENVOLVENDO',26,3);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','SUFICIENTE','AVANCADO',27,3);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','INSUFICIENTE','DESENVOLVENDO',28,3);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','SUFICIENTE','DESENVOLVENDO','INSUFICIENTE',29,3);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','AVANCADO','SUFICIENTE',30,3);

-- AVALIAÇÕES DA TURMA 4
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','DESENVOLVENDO','AVANCADO',31,4);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','SUFICIENTE','SUFICIENTE','SUFICIENTE',32,4);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','SUFICIENTE','AVANCADO',33,4);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','DESENVOLVENDO','AVANCADO',34,4);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','DESENVOLVENDO','DESENVOLVENDO',35,4);

-- AVALIAÇÕES DA TURMA 5
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','SUFICIENTE','AVANCADO',36,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','DESENVOLVENDO','AVANCADO',37,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','DESENVOLVENDO','DESENVOLVENDO',38,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','INSUFICIENTE','SUFICIENTE','DESENVOLVENDO',39,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','SUFICIENTE','AVANCADO',40,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','INSUFICIENTE','SUFICIENTE','DESENVOLVENDO',41,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','SUFICIENTE','AVANCADO',42,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','INSUFICIENTE','DESENVOLVENDO',43,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','SUFICIENTE','DESENVOLVENDO','INSUFICIENTE',44,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','AVANCADO','SUFICIENTE',45,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','AVANCADO','DESENVOLVENDO','DESENVOLVENDO',46,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','INSUFICIENTE','SUFICIENTE','DESENVOLVENDO',47,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','SUFICIENTE','AVANCADO',48,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','DESENVOLVENDO','INSUFICIENTE','DESENVOLVENDO',49,5);
INSERT INTO tb_Avaliacao(dataAvaliacao,leitura,matematica,naoAcademicas,id_Aluno,id_Profissional) VALUES
('30-11-2022','SUFICIENTE','DESENVOLVENDO','INSUFICIENTE',50,5);

--SELECT * FROM tb_Avaliacao;

-- CHAMADA DE JUNHO

	-- PRIMEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',1,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',2,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',3,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','F',4,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',5,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',6,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',7,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',8,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',9,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',10,1);

	-- SEGUNDA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',11,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',12,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',13,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',14,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',15,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',16,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',17,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',18,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',19,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',20,2);

	-- TERCEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',21,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',22,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',23,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',24,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('10-06-2022','P',24,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('13-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',24,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('22-06-2022','P',24,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('23-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',24,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',24,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',25,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('03-06-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',25,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',26,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',27,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',28,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',29,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',30,3);


-- CHAMADA DE JULHO

	-- PRIMEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',1,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',2,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',3,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',4,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('15-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',4,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',5,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-07-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',5,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('19-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',5,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',6,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',7,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',8,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',9,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',10,1);


	-- SEGUNDA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',11,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',12,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',13,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',14,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',15,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',16,2);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',17,2);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',18,2);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',19,2);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',20,2);


	-- TERCEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',21,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',22,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',22,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',23,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-07-2022','P',23,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('06-07-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',23,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',24,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',25,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',26,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',27,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',28,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',29,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',30,3);


-- CHAMADA DE AGOSTO (Continuar colocando as colunas de inserção daqui)

	-- PRIMEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',1,1);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','F',2,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',3,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',4,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',5,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',6,1);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',7,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',8,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',9,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('31-08-2022','P',9,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',10,1);

	-- SEGUNDA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',11,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',12,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('12-08-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',12,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',13,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',14,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',15,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',16,2);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',17,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',18,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',19,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','F',20,2);


	-- TERCEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',21,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('03-08-2022','P',21,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('04-08-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',21,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('24-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',21,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',22,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',23,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',24,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',25,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('03-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',26,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',27,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',28,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('26-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',28,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('16-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',29,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',30,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-08-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',30,3);


-- CHAMADA DE SETEMBRO 

	-- PRIMEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',1,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','F',1,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',2,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('06-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',2,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',3,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',4,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',4,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',5,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',6,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',7,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('15-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',7,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','F',8,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-09-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',8,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',9,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',10,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',10,1);

	-- SEGUNDA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',11,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('22-09-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',11,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',12,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('09-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',12,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('13-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',12,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('20-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',12,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('27-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',12,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',13,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',14,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',15,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('22-09-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',15,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',16,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('09-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',16,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('21-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',16,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',17,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('08-09-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('12-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',18,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',19,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',19,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('06-09-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('09-09-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('16-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('26-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('30-09-2022','P',20,2);

	-- TERCEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',21,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('02-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',21,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',22,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','F',22,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-09-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',22,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',23,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','F',24,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-09-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',24,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('13-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',24,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',25,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('16-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-09-2022','P',25,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('29-09-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',25,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','F',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('16-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('21-09-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('22-09-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('23-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',26,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',27,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',28,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('02-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',28,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',29,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',30,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('19-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',30,3);


-- CHAMADA DE OUTUBRO 

	-- PRIMEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',1,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',2,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',2,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('27-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',2,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',3,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',4,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',5,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',6,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',7,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',8,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',8,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',9,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',10,1);

	-- SEGUNDA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',11,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',12,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('21-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',12,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',13,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',13,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',14,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',15,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('31-10-2022','P',15,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',16,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',17,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('04-10-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',17,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('11-10-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',17,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('17-10-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',17,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('20-10-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',17,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('24-10-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',17,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('31-10-2022','P',17,2);

INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('03-10-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-10-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-10-2022','F',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('10-10-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('13-10-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-10-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('18-10-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('19-10-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('20-10-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('21-10-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('24-10-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','F',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('26-10-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('27-10-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-10-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('31-10-2022','P',18,2);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',19,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',19,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('12-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',19,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-10-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',19,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('04-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('06-10-2022','F',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-10-2022','F',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('10-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('11-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('12-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('13-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('17-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('18-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('19-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('20-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('21-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('24-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('25-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('26-10-2022','F',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('27-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-10-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('31-10-2022','P',20,2);

	-- TERCEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',21,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('06-10-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',21,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('25-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',21,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-10-2022','P',21,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('31-10-2022','P',21,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',22,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('11-10-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',22,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('19-10-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',22,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('21-10-2022','P',22,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('24-10-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',22,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-10-2022','P',22,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('31-10-2022','P',22,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',23,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('06-10-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',23,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('17-10-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',23,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',24,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('10-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',24,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('18-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',24,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('24-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',24,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',25,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('12-10-2022','P',25,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('13-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',25,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('20-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',25,3);

INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('03-10-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-10-2022','F',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('10-10-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('12-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('13-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-10-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('19-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('20-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('21-10-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('25-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('26-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('27-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-10-2022','P',26,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('31-10-2022','P',26,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',27,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-10-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',27,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('11-10-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',27,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-10-2022','P',27,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('17-10-2022','P',27,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('18-10-2022','P',27,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('19-10-2022','P',27,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('20-10-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',27,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('24-10-2022','P',27,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('25-10-2022','P',27,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('26-10-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',27,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',28,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',28,3);

INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('03-10-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('06-10-2022','F',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-10-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('13-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-10-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','F',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('19-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('20-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('21-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('24-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('25-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('26-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('27-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-10-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('31-10-2022','P',29,3);

INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('03-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','P',30,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('11-10-2022','P',30,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('12-10-2022','P',30,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('13-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',30,3);

-- CHAMADA DE NOVEMBRO

	-- PRIMEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',1,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('08-11-2022','F',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',1,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',1,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('17-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',1,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('23-11-2022','P',1,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',1,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('25-11-2022','P',1,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-11-2022','P',1,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('29-11-2022','P',1,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('30-11-2022','P',1,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',2,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('18-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',2,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',2,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',3,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('02-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',3,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('11-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',3,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('22-11-2022','F',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',3,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',3,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','F',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',4,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',4,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',5,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',5,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',6,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',6,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','F',7,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',7,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',8,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',8,1);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','F',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',9,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',9,1);

INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('01-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',10,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('11-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',10,1);

	-- SEGUNDA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',11,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('25-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',11,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',12,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('29-11-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',12,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',13,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',14,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',15,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('16-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','F',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',15,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',16,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','F',17,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',17,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('21-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',17,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('15-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',18,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('25-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',18,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',19,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',19,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('24-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',19,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('30-11-2022','P',19,2);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',20,2);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('10-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',20,2);

	-- TERCEIRA TURMA

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',21,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-11-2022','F',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','P',21,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('23-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',21,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','F',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',22,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','F',23,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('08-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','F',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',23,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','F',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',24,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','F',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',25,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('18-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',25,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','F',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',26,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','F',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',27,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','F',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',28,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','F',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',29,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('17-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',29,3);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','F',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','P',30,3);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('23-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',30,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',30,3);

SELECT * FROM tb_Chamada WHERE id_Aluno = '01';
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',01,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',02,1);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('01-12-2022','P',03,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','F',04,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',05,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',06,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',07,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',08,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',09,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',10,1);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',11,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',12,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',13,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',14,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',15,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',16,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',17,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',18,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',19,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',20,2);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',21,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',22,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',23,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',24,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',25,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',26,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',27,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',28,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',29,3);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',30,3);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',31,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',32,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',33,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','F',34,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',35,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',31,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',32,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',33,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',34,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('15-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',34,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',35,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-07-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',35,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('19-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',35,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',31,4);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','F',32,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',33,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',34,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',35,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',31,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','F',31,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',32,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('06-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',32,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',33,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',34,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',34,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',35,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',31,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',32,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',32,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('27-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',32,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',33,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',34,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',35,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',31,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('08-11-2022','F',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',31,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',31,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('17-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',31,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('23-11-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',31,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('25-11-2022','P',31,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-11-2022','P',31,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('29-11-2022','P',31,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('30-11-2022','P',31,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',32,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('18-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',32,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',32,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',33,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('02-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',33,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('11-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',33,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('22-11-2022','F',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',33,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',34,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',35,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',31,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',32,4);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('01-12-2022','P',33,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','F',34,4);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',35,4);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',36,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',37,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',38,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','F',39,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',40,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',41,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',42,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',43,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',44,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',45,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',36,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',37,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',38,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',39,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('15-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',39,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',40,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-07-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',40,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('19-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',40,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',41,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',42,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',43,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',44,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',45,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',36,5);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','F',37,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',38,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',39,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',40,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',41,5);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',42,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',43,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',44,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('31-08-2022','P',44,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',45,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',36,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','F',36,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',37,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('06-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',37,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',38,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',39,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',39,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',40,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',41,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',42,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('15-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',42,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','F',43,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-09-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',43,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',44,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',45,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',45,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',36,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',37,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',37,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('27-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',37,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',38,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',39,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',40,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',41,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',42,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',43,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',43,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',44,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',45,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',36,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('08-11-2022','F',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',36,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',36,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('17-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',36,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('23-11-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',36,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('25-11-2022','P',36,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-11-2022','P',36,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('29-11-2022','P',36,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('30-11-2022','P',36,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',37,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('18-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',37,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',37,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',38,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('02-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',38,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('11-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',38,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('22-11-2022','F',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',38,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',39,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',40,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',41,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','F',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',42,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',43,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','F',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',44,5);

INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('01-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',45,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('11-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',45,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',36,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',37,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('01-12-2022','P',38,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','F',39,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',40,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',41,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',42,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',43,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',44,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',45,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',46,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',47,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',48,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','F',49,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-06-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-06-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-06-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-06-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-06-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-06-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-06-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-06-2022','P',50,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',46,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',47,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',48,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-07-2022','F',49,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('15-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',49,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-07-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-07-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-07-2022','F',50,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-07-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-07-2022','P',50,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('19-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-07-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-07-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-07-2022','P',50,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',46,5);


INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','F',47,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',48,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',49,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-08-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-08-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-08-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-08-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-08-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-08-2022','P',50,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',46,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('07-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','F',46,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',47,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('06-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',47,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',48,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',49,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('05-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',49,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-09-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-09-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-09-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-09-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-09-2022','P',50,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',46,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',47,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',47,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('27-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',47,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',48,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',49,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('05-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('06-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-10-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('12-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('13-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-10-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('19-10-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('20-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-10-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('26-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('27-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-10-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('31-10-2022','P',50,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',46,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('08-11-2022','F',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',46,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('14-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',46,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('17-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',46,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('23-11-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',46,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('25-11-2022','P',46,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('28-11-2022','P',46,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('29-11-2022','P',46,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('30-11-2022','P',46,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',47,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('18-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',47,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',47,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',48,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('02-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',48,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('11-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',48,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('22-11-2022','F',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',48,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',49,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('02-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('03-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('04-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('07-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('08-11-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('09-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('10-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('11-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('14-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('15-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('16-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('17-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('18-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('21-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('22-11-2022','F',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('23-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('24-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('25-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('28-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('29-11-2022','P',50,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('30-11-2022','P',50,5);

INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',46,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',47,5);
INSERT INTO tb_Chamada (dataChamada,presenca,id_Aluno,id_Turma)VALUES
('01-12-2022','P',48,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','F',49,5);
INSERT INTO tb_Chamada(dataChamada,presenca,id_Aluno,id_Turma) VALUES
('01-12-2022','P',50,5);