drop table if exists aluno CASCADE;
drop table if exists disciplina CASCADE;
drop table if exists ministra CASCADE;
drop table if exists professor CASCADE;
drop table if exists sala CASCADE;
drop table if exists turma CASCADE;
drop table if exists turma_aluno CASCADE;
drop table if exists turma_sala CASCADE;
drop table if exists pedido CASCADE;

CREATE TABLE aluno
(
 aluno_id  serial primary key,
 nome     varchar(50) NOT NULL,
 curso    varchar(50) NOT NULL,
 idade    int NOT NULL,
 cpf      varchar(12) NOT NULL,
 semestre varchar(50) NULL
);

CREATE TABLE disciplina
(
 disciplina_id serial primary key,
 nome   varchar(50) NOT NULL,
 ementa varchar(500) NULL
);

CREATE TABLE professor
(
 professor_id serial primary key,
 nome      varchar(50) NOT NULL,
 idade     int NOT NULL,
 cpf       varchar(12) NOT NULL,
 area      varchar(50) NULL
);

CREATE TABLE sala
(
 sala_id     serial primary key,
 predio     varchar(50) NOT NULL,
 capacidade int NOT NULL,
 tipo       varchar(50) NOT NULL
);

CREATE TABLE turma
(
 turma_id serial primary key
);


CREATE TABLE turma_aluno
(
 turma_aluno_id serial primary key,
 aluno_id int,
 turma_id   int,
 CONSTRAINT FK_19 FOREIGN KEY ( turma_id ) REFERENCES turma ( turma_id ),
 CONSTRAINT FK_18 FOREIGN KEY ( aluno_id ) REFERENCES aluno ( aluno_id ),
 CONSTRAINT UK_turma_aluno UNIQUE (aluno_id, turma_id)
);

CREATE TABLE ministra
(
 ministra_id serial primarykey,
 professor_id int,
 turma_id   int,
 disciplina_id int,
 CONSTRAINT FK_21 FOREIGN KEY ( professor_id ) REFERENCES professor ( professor_id ),
 CONSTRAINT FK_6 FOREIGN KEY ( turma_id ) REFERENCES turma ( turma_id ),
 CONSTRAINT FK_22 FOREIGN KEY ( disciplina_id ) REFERENCES disciplina ( disciplina_id ),
 CONSTRAINT UK_ministra UNIQUE (turma_id, disciplina_id) 
);

CREATE TABLE turma_sala
(
  turma_sala_id serial primary key,
  turma_id int,
  sala_id  int,
  descricao varchar(100),
  horario  varchar(50) NOT NULL,
  dia date NOT NULL,
 CONSTRAINT FK_81 FOREIGN KEY ( turma_id ) REFERENCES turma ( turma_id ),
 CONSTRAINT FK_49 FOREIGN KEY ( sala_id ) REFERENCES sala ( sala_id),
 CONSTRAINT UK_turma_sala UNIQUE (dia, horario, sala_id)
 CONSTRAINT PK_turma_sala PRIMARY KEY (dia, horario, sala_id)
);
CREATE TABLE pedido
(
  pedido_id int,
  professor_id int,
  sala_id int,
  nova_sala_id int,
  justificativa varchar(100),
  CONSTRAINT PK_pedido PRIMARY KEY (pedido_id,professor_id)
);