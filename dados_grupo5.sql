--Usuarios
--ALUNOS
INSERT INTO usuario
VALUES ('joao@aluno.com', 'Joao Oliveira', '12345678', '2000-06-15', 1, false, true);

INSERT INTO usuario
VALUES ('leticia@aluno.com', 'Leticia Silva', '12345678', '2003-05-15', 1, false, true);

INSERT INTO usuario
VALUES ('igor@aluno.com', 'Igor Oliveira', '12345678', '1988-06-20', 1, false, true);

--ALUNO_PROFESSOR
INSERT INTO usuario
VALUES ('matheus@aluno.professor.com', 'Matheus Ferro', '12345678', '1995-04-20', 0, true, true);

INSERT INTO usuario
VALUES ('alexandro@aluno.professor.com', 'Alexandro Ferro', '12345678', '1995-04-20', 0, true, true);

INSERT INTO usuario
VALUES ('adelaide@aluno.professor.com', 'Adelaide Machado', '12345678', '1985-02-12', 0, true, true);

--PROFESSORES
INSERT INTO usuario
VALUES ('renato@professor.com', 'Renato Oliveira', '12345678', '1998-03-14', 1, true, false);

INSERT INTO usuario
VALUES ('mariana@professor.com', 'Mariana Silva', '12345678', '1987-03-05', 1, true, false);


--FORMAÇÃO
INSERT INTO formacao
VALUES ('renato@professor.com', 'Ciência da Computação');

INSERT INTO formacao
VALUES ('matheus@aluno.professor.com', 'Ciência da Computação');

INSERT INTO formacao
VALUES ('mariana@professor.com', 'Sistema de Informação');


--CURSO
INSERT INTO curso
(nome, descricao,quantidade_modulos, preco)
VALUES('Python', 'Curso com foco intermediário e inicial em Python', 0, 53.20);

INSERT INTO curso
(nome, descricao,quantidade_modulos, preco)
VALUES('Java', 'Curso foca em CRUD e no intermediário da linguagem java', 0, 10.20);

INSERT INTO curso
(nome, descricao,quantidade_modulos, preco)
VALUES('JavaScript', 'O curso vai do incial em javascript mostrando os tipos de variáveis e algumas diferenciações as promises', 0, 300.20);

INSERT INTO curso
(nome, descricao,quantidade_modulos, preco)
VALUES('POO', 'Curso foca em ensinar programação orientada objeto', 0, 32.50);

INSERT INTO curso
(nome, descricao,quantidade_modulos, preco)
VALUES('C', 'Curso foca poo na linguagem C', 0, 10.20);


--Aluno_Cursa
INSERT INTO aluno_cursa
(fk_email, fk_cod_curso, desconto)
VALUES('joao@aluno.com', 1, 0.10);

INSERT INTO aluno_cursa
(fk_email, fk_cod_curso, desconto)
VALUES('leticia@aluno.com', 2, 0);

INSERT INTO aluno_cursa
(fk_email, fk_cod_curso, desconto)
VALUES('igor@aluno.com', 3, 0);

INSERT INTO aluno_cursa
(fk_email, fk_cod_curso, desconto)
VALUES('matheus@aluno.professor.com', 1, 0.20);


--PROFESSOR_RESPONSAVEL
INSERT INTO professor_responsavel
(fk_email, fk_cod_curso)
VALUES('renato@professor.com', 1);

INSERT INTO professor_responsavel
(fk_email, fk_cod_curso)
VALUES('matheus@aluno.professor.com', 2);

INSERT INTO professor_responsavel
(fk_email, fk_cod_curso)
VALUES('mariana@professor.com', 3);


--MODULO
INSERT INTO modulo
(fk_cod_curso, secao, nome)
VALUES(1, 'Seção 1', 'Introdução ao Python');

INSERT INTO modulo
(fk_cod_curso, secao, nome)
VALUES(1, 'Seção 2', 'Intermediário de Python');

INSERT INTO modulo
(fk_cod_curso, secao, nome)
VALUES(1, 'Seção 3', 'Avançado de Python');

INSERT INTO modulo
(fk_cod_curso, secao, nome)
VALUES(2, 'Seção 1', 'A Introdução ao Java');

INSERT INTO modulo
(fk_cod_curso, secao, nome)
VALUES(2, 'Seção 2', 'CRUD em Java');

INSERT INTO modulo
(fk_cod_curso, secao, nome)
VALUES(3, 'Seção 1', 'Introdução ao JavaScript');

INSERT INTO modulo
(fk_cod_curso, secao, nome)
VALUES(3, 'Seção 2', 'Promises no JavaScript');


--VIDEO_AULAS
INSERT INTO Video_aulas
(fk_cod_Curso, fk_secao, video)
VALUES(1, 'Seção 1', 'https://www.youtube.com/watch?v=paZNDJAPT4E');

INSERT INTO Video_aulas
(fk_cod_Curso, fk_secao, video)
VALUES(1, 'Seção 1', 'https://www.youtube.com/watch?v=jx2ne8iZMOA');

INSERT INTO Video_aulas
(fk_cod_Curso, fk_secao, video)
VALUES(1, 'Seção 2', 'https://www.youtube.com/watch?v=paZNDJAPT4E');

INSERT INTO Video_aulas
(fk_cod_Curso, fk_secao, video)
VALUES(1, 'Seção 3', 'https://www.youtube.com/watch?v=jx2ne8iZMOA');

INSERT INTO Video_aulas
(fk_cod_Curso, fk_secao, video)
VALUES(2, 'Seção 1', 'https://www.youtube.com/watch?v=paZNDJAPT4E');

INSERT INTO Video_aulas
(fk_cod_Curso, fk_secao, video)
VALUES(2, 'Seção 2', 'https://www.youtube.com/watch?v=paZNDJAPT4E');

INSERT INTO video_aulas
(fk_cod_Curso, fk_secao, video)
VALUES(3, 'Seção 1', 'https://www.youtube.com/watch?v=paZNDJAPT4E');

INSERT INTO Video_aulas
(fk_cod_Curso, fk_secao, video)
VALUES(3, 'Seção 2', 'https://www.youtube.com/watch?v=paZNDJAPT4E');

INSERT INTO Video_aulas
(fk_cod_Curso, fk_secao, video)
VALUES(3, 'Seção 2', 'https://www.youtube.com/watch?v=jx2ne8iZMOA');


--CATEGORIA
INSERT INTO Categoria
(categoria_principal)
VALUES('data science');

INSERT INTO Categoria
(categoria_principal)
VALUES('poo');

INSERT INTO Categoria
(categoria_principal)
VALUES('front end');


--GLOSSARIO
INSERT INTO Glossario
(fk_categoria_principal, glossario)
VALUES('data science', 'informatica');

INSERT INTO Glossario
(fk_categoria_principal, glossario)
VALUES('poo', 'Programação orientada objeto');

INSERT INTO Glossario
(fk_categoria_principal, glossario)
VALUES('front end', 'fe');


--CURSO_POSSUI
INSERT INTO Curso_possui
(fk_cod_Curso, fk_categoria_principal)
VALUES(1,'data science');

INSERT INTO Curso_possui
(fk_cod_Curso, fk_categoria_principal)
VALUES(2,'poo');

INSERT INTO Curso_possui
(fk_cod_Curso, fk_categoria_principal)
VALUES(3,'front end');

INSERT INTO Curso_possui
(fk_cod_Curso, fk_categoria_principal)
VALUES(4,'poo');

INSERT INTO Curso_possui
(fk_cod_Curso, fk_categoria_principal)
VALUES(5,'poo');






