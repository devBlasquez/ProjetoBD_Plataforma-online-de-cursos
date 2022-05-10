--Consultas

--Consulta 1: Quantos alunos cursaram cada curso? (Gabriel)
SELECT c1.cod_curso, c1.nome, count(c2.FK_email) 
FROM Curso c1 NATURAL JOIN Aluno_Cursa c2 
WHERE c1.cod_curso = c2.FK_cod_curso
GROUP BY c1.cod_curso;


--Consulta 2: Quantos usuários tem na plataforma? (Renan)
SELECT count(email) 
FROM Usuario;


--Consulta 3: Listar os cursos de uma determinada categoria (Renan)
SELECT c.nome 
FROM Curso c NATURAL JOIN ( 
   		SELECT FK_cod_curso AS cod_curso, FK_categoria_principal 
FROM Curso_Possui) AS p
WHERE p.FK_categoria_principal = 'poo';


--Consulta 4: Listar os professores que são alunos (Gabriel)
SELECT * 
FROM Usuario 
WHERE tipo_professor = TRUE  
AND tipo_aluno = TRUE;


--Consulta 5: Listar os módulos de um curso (Renan)
SELECT nome 
FROM Modulo 
WHERE FK_cod_curso = 1;


--Consulta 6: Pegar o conteúdo de um módulo de um curso específico (Gabriel)
SELECT v.FK_cod_curso, v.secao, m.nome, v.video
FROM Modulo m NATURAL JOIN Video_aulas v(FK_cod_curso, secao, video)
WHERE m.secao ilike 'Seção 2' 
	AND m.FK_cod_curso = 3;


--Consulta 7: Pesquisar curso pelo nome do curso (Maurício)
SELECT c.preco, c.descricao 
FROM curso c 
      WHERE nome ILIKE 'java';


--Consulta 8: Calcular o preço do curso com desconto (Maurício)
SELECT preco * 0.5 AS preco_desconto
FROM curso
WHERE nome ILIKE null
OR cod_curso = 2;


--Consulta 9: Quantidade de vídeos por módulo de um curso (Gabriel)
SELECT m.secao, m.nome, count(v.video)
FROM modulo m LEFT OUTER JOIN Video_aulas v
	ON(v.fk_cod_curso = m.fk_cod_curso 
		AND v.fk_secao = m.secao)
WHERE m.FK_cod_curso = 1
GROUP BY m.secao, m.nome