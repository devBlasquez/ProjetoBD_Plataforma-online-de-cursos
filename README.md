![Logotipo_UFSCAR](./imagens/repositorio_logo.png)  

#Projeto de Banco de Dados: Plataforma Online de Cursos  

Trabalho realizado no primeiro semestre de 2021 por Maurício Marques da Silva Junior, Gabriel Goulart Homem e Renan Oliveira de Barros Lima. A matéria foi ministrada pela professora Sahudy González. O mesmo foi feito em plSQL.

##Descrição do problema  
O banco de dados sobre a plataforma online de cursos tem como objetivo conter informações sobre os usuários da mesma, sendo eles alunos e professores, além de conter informações sobre os cursos desenvolvidos pelos professores. O usuário da plataforma tem como dados seu nome, email, sua senha de acesso - que deve possuir pelo menos 8 caracteres, data de nascimento e sua idade calculada a partir da data de nascimento. O mesmo pode ser aluno e professor ao mesmo tempo ou não. Como aluno ele pode cursar os cursos presentes no banco de dados desde que ele tenha comprado eles, e tem direito a um desconto no preço do curso dependendo de quando a compra do curso foi executada. Já o professor tem que cadastrar suas formações acadêmicas, e ele pode desenvolver vários cursos na plataforma sozinho ou em parceria com outros professores. Sobre o curso devem ser guardadas sua descrição, código do curso, nome, quantidade de módulos e preço, sendo que o preço sempre será maior ou igual a zero. O curso também possui tanto sua categoria, que detém sua categoria principal e seu glossário (outros significados para a mesma categoria, exemplo “TI” e Tecnologia da informação), quanto vários módulos, que por sua vez contém suas seções, o nome do módulo e um ou vários vídeos contidos no módulo do curso.  

