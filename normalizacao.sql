CREATE DATABASE normalizacao;
USE normalizacao;

CREATE TABLE cursos(
	id INT AUTO_INCREMENT,
    nome VARCHAR(50),
    CONSTRAINT cursos_pk PRIMARY KEY (id)
);

CREATE TABLE disciplinas (
	id INT AUTO_INCREMENT,
    nome VARCHAR(50),
    id_curso INT NOT NULL,
    CONSTRAINT disciplinas_pk PRIMARY KEY (id),
    CONSTRAINT disciplinas_curso_fk FOREIGN KEY (id_curso) REFERENCES cursos(id)   
);
CREATE TABLE alunos(
    nome VARCHAR(50),
    matricula INT NOT NULL,
    id_curso INT NOT NULL,
    CONSTRAINT alunos_pk PRIMARY KEY (matricula),
    CONSTRAINT alunos_curso_fk FOREIGN KEY (id_curso) REFERENCES cursos(id)
);
CREATE TABLE notas (
	id INT AUTO_INCREMENT,
	id_disciplina INT,
    matricula_aluno INT,
    nota DECIMAL,
    CONSTRAINT notas_pk PRIMARY KEY (id),
	CONSTRAINT notas_disciplina_fk FOREIGN KEY (id_disciplina) REFERENCES disciplinas(id),
    CONSTRAINT notas_matricula_fk FOREIGN KEY (matricula_aluno) REFERENCES alunos(matricula)
);


INSERT INTO cursos (nome) VALUES ("Design");
INSERT INTO cursos (nome) VALUES ("Desenvolvimento de sistemas");
INSERT INTO cursos (nome) VALUES ("Eletrônica");
INSERT INTO cursos (nome) VALUES ("Automação Industrial");

INSERT INTO alunos (matricula, nome, id_curso) VALUES (2018321098,"Iago",1);
INSERT INTO alunos (matricula, nome, id_curso) VALUES (2021231202,"Gabriela",2);
INSERT INTO alunos (matricula, nome, id_curso) VALUES (2193109187,"Jair",3);
INSERT INTO alunos (matricula, nome, id_curso) VALUES (2012786310,"Cristina",4);


INSERT INTO disciplinas (nome,id_curso) VALUES ("Design de Produtos",1);
INSERT INTO disciplinas (nome,id_curso) VALUES ("Desenvolvimento de Aplicacoes Web",2);
INSERT INTO disciplinas (nome,id_curso) VALUES ("Circuitos Digitais",3);
INSERT INTO disciplinas (nome,id_curso) VALUES (" Domótica e Robótica",4);

INSERT INTO disciplinas (nome,id_curso) VALUES ("Desenvolvimento de Produtos",1);
INSERT INTO disciplinas (nome,id_curso) VALUES ("Programacao Orientada a Objetos",2);
INSERT INTO disciplinas (nome,id_curso) VALUES ("Sistemas Embarcados",3);
INSERT INTO disciplinas (nome,id_curso) VALUES ("Empreendedorismo",4);

INSERT INTO disciplinas (nome,id_curso) VALUES ("Marketing",1);
INSERT INTO disciplinas (nome,id_curso) VALUES ("Sistemas operacionais",2);
INSERT INTO disciplinas (nome,id_curso) VALUES ("Educação Física",4);

INSERT INTO disciplinas (nome,id_curso) VALUES ("Empreendedorismo",2);
INSERT INTO disciplinas (nome,id_curso) VALUES ("Empreendedorismo",4);

INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (100, 2018321098,1);
INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (100, 2018321098,5);
INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (100, 2018321098,9);

INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (82, 2021231202,2);
INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (93, 2021231202,6);
INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (100, 2021231202,10);
INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (100, 2021231202,12);

INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (85, 2193109187,3);
INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (100, 2193109187,7);

INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (74, 2012786310,4);
INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (93, 2012786310,13);
INSERT INTO notas (nota,matricula_aluno, id_disciplina) VALUES (95, 2012786310,11);


SELECT * FROM alunos;
SELECT * FROM cursos;
SELECT* FROM notas;
SELECT * FROM disciplinas;
