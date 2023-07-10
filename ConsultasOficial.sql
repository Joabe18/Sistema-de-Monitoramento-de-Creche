/*
Consultas para PI
*/

-- CONSULTAR QUANTIDADE DE ALUNO DIVIDIDO POR TURMA E POR SEXO
SELECT 	t.nome AS "Turma",
		a.sexo AS "Sexo",
		COUNT(a.sexo) AS "Qtd_Alunos" 
FROM tb_aluno a
	INNER JOIN tb_turma t
		ON a.id_Turma = t.idTurma
GROUP BY (t.nome,a.sexo)
ORDER BY (t.nome);

-- QUANTIDADE DE FALTAS E PRESENÇAS POR ALUNO DIVIDIDO POR TURMA
SELECT 	t.nome AS "Turma",
		a.nome AS "Nome_Aluno",
		c.presenca AS "Presenca",
		count(c.presenca) AS "Qtd"
FROM tb_chamada c
INNER JOIN tb_aluno a
	ON c.id_Aluno = a.idAluno
INNER JOIN tb_turma t
	ON c.id_Turma = t.idTurma
WHERE c.presenca IN(SELECT c.presenca 
					FROM(	SELECT t.nome,c.presenca
						 	FROM tb_turma t
						 	WHERE t.idTurma = c.id_Turma 
						 	GROUP BY t.nome,c.presenca)AS chamada)
GROUP BY(t.nome,a.nome,c.presenca)
ORDER BY (t.nome,a.nome,c.presenca);

-- NOME DA TURMA, NOME DO ALUNO, MATÉRIAS E DATA DA AVALIAÇÃO DOS ALUNOS QUE ESTÃO
-- INSUFICIENTES NA MATÉRIA NÃO ACADEMICAS
SELECT 	t.nome AS "Turma",
		a.nome AS "Nome_Aluno",
		av.leitura AS "Desempenho_Leitura",
		av.matematica AS "Desempenho_Matematica",
		av.naoacademicas AS "Desempenho_Nao_Academicas",
		av.dataAvaliacao AS "Data_Avaliacao"
FROM  tb_aluno a
INNER JOIN tb_Avaliacao av
	ON a.idAluno = av.id_aluno
INNER JOIN tb_turma t
	ON t.idTurma = a.id_Turma
WHERE av.dataAvaliacao IN(SELECT av.dataAvaliacao 
						  FROM(	SELECT av.leitura,av.matematica,av.naoacademicas 
							   	FROM tb_Avaliacao 
							   	WHERE a.idAluno = av.id_Aluno) AS avaliacao)
AND av.naoacademicas = 'INSUFICIENTE'
ORDER BY(t.nome,a.nome); 