create table Usuario( 
	email varchar(255) primary key not null,
	nome varchar(255) not null,
	senha varchar(16) check(length(senha) >= 8) not null,
	data_nascimento date not null,
	idade smallint not null,
	tipo_professor boolean not null,
	tipo_aluno boolean not null 
);

create table Formacao( 
	FK_email varchar(255) not null,
	nome varchar(255) not null,
	foreign key(FK_email) references usuario(email) on
		delete cascade,
	primary key (FK_email,nome) 
);

create table Curso( 
	cod_curso serial primary key not null,
	nome varchar(50) not null,
	descricao text not null,
	quantidade_modulos smallint not null,
	preco numeric(5,2) check(preco >= 0) not null 
);

create table Aluno_Cursa( 
	FK_email varchar(255) not null,
	FK_cod_curso smallint not null,
	desconto numeric(3, 2) check(desconto >= 0 and desconto <= 1),
	foreign key(FK_email) references usuario(email) on
		delete cascade,
	foreign key(FK_cod_curso) references Curso(cod_curso) on
		delete cascade,
	primary key(FK_email, FK_cod_curso)
);

create table Professor_Responsavel( 
	FK_email varchar(255) not null,
	FK_cod_curso smallint not null,
	foreign key(FK_email) references usuario(email) on
		delete restrict,
	foreign key(FK_cod_curso) references Curso(cod_curso) on
		delete cascade,
	primary key(FK_email, FK_cod_curso)
);



create table Modulo( 
	FK_cod_curso smallint not null,
	secao varchar(50) not null,
	nome varchar(255) not null,
	foreign key(FK_cod_curso) references Curso(cod_curso) on
		delete cascade,
	primary key(FK_cod_curso, secao)
);

create table Video_aulas( 
	FK_cod_curso smallint not null,
	FK_secao varchar(50) not null,
	video varchar(100) not null,
	foreign key(FK_cod_curso, FK_secao) references Modulo(FK_cod_curso, secao) on
		delete cascade,
	primary key(FK_cod_curso, FK_secao, video)
);

create table Categoria( 
	categoria_principal varchar primary key not null 
);

create table Glossario( 
	FK_categoria_principal varchar not null,
	glossario varchar not null,
	foreign key(FK_categoria_principal) references Categoria(categoria_principal) on
		delete cascade,
	primary key(FK_categoria_principal, glossario)
);

create table Curso_Possui( 
	FK_cod_curso smallint not null,
	FK_categoria_principal varchar(50) not null,
	foreign key(FK_cod_curso) references Curso(cod_curso) on
		delete cascade,
	foreign key(FK_categoria_principal) references Categoria(categoria_principal) on
		delete cascade,
	primary key(FK_cod_curso, FK_categoria_principal)
);
