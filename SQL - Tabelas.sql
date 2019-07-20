{\rtf1\ansi\ansicpg1252\deff0\nouicompat{\fonttbl{\f0\fnil\fcharset0 Courier New;}}
{\*\generator Riched20 10.0.17134}\viewkind4\uc1 
\pard\f0\fs22\lang1046 CREATE DATABASE prototipoEducacional\par
\par
CREATE TABLE \lang22 aluno\lang1046 (\par
\tab\lang22 matricula \lang1046\tab INT NOT NULL,\par
\tab nome CHARACTER(30) NOT NULL,\par
\tab sexo CHARACTER(1) NOT NULL,\par
\tab CONSTRAINT \lang22 pk_matricula \lang1046 PRIMARY KEY (\lang22 matricula\lang1046 ));\par
\par
CREATE TABLE fator (\par
\tab id CHARACTER(3) NOT NULL,\par
\tab descricao CHARACTER(130) NOT NULL,\par
\tab peso INT NOT NULL,\par
\tab CONSTRAINT pk_idFator PRIMARY KEY (id));\par
\par
CREATE TABLE fatorAnoEmCurso (\par
\tab idFator CHARACTER(3) NOT NULL,\par
\tab anoEmCurso INT NOT NULL,\par
\tab CONSTRAINT fk_idFator_pk_id  FOREIGN KEY (idFator ) REFERENCES Fator (id ));\par
\par
CREATE TABLE alunoFator(\par
\tab matriculaAluno INT NOT NULL,\par
\tab anoEmCurso INT NOT NULL,\par
\tab anoLetivo INT NOT NULL,\par
\tab pf1 INT,\par
\tab pf2 INT,\par
\tab pf3 INT,\par
\tab pf4 INT,\par
\tab pf5 INT,\par
\tab pf6 INT,\par
\tab pf7 INT,\par
\tab pf8 INT,\par
\tab pf9 INT,\par
\tab pf10 INT,\par
\tab pf11 INT,\par
\tab pf12 INT,\par
\tab pf13 INT,\par
\tab pf14 INT,\par
\tab pf15 INT,\par
\tab pf16 INT,\par
\tab pf17 INT,\par
\tab pf18 INT,\par
\tab pf19 INT,\par
\tab pf20 INT,\par
\tab pf21 INT,\par
\tab pf22 INT,\par
\tab pf23 INT,\par
\tab pf24 INT,\par
\tab pf25 INT,\par
\tab pf26 INT,\par
\tab pf27 INT,\par
\tab pf28 INT,\par
\tab pf29 INT,\par
\tab pf30 INT,\par
\tab CONSTRAINT pk_matricula_anoEmCurso_anoLetivo PRIMARY KEY (matriculaAluno,anoEmCurso,anoLetivo));\par
\tab\par
CREATE TABLE ranking (\par
\tab idAluno  INT NOT NULL,\par
\tab anoEmCurso INT NOT NULL,\par
\tab pontuacao INT NOT NULL,\par
\tab CONSTRAINT fk_idAluno_pk_matricula FOREIGN KEY (idAluno) REFERENCES Aluno (matricula));\par
}
 