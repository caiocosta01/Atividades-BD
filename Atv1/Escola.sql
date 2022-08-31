BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "CURSO" (
	"idCurso"	int NOT NULL,
	"nome"	VARCHAR(100),
	"sigla"	VARCHAR(100),
	"idAluno"	int,
	FOREIGN KEY("idAluno") REFERENCES "ALUNO"("idAluno"),
	PRIMARY KEY("idCurso")
);
CREATE TABLE IF NOT EXISTS "ALUNO" (
	"idAluno"	INT NOT NULL,
	"nome"	VARCHAR(100),
	"cidade"	VARCHAR(100),
	PRIMARY KEY("idAluno")
);
CREATE TABLE IF NOT EXISTS "ALUNOCURSO" (
	"idAluno"	INT,
	"idCurso"	INT,
	FOREIGN KEY("idAluno") REFERENCES "ALUNO"("idAluno"),
	PRIMARY KEY("idAluno","idCurso"),
	FOREIGN KEY("idCurso") REFERENCES "CURSO"("idCurso")
);
INSERT INTO "CURSO" ("idCurso","nome","sigla","idAluno") VALUES (123,'informática','TI',NULL);
INSERT INTO "CURSO" ("idCurso","nome","sigla","idAluno") VALUES (124,'Administração','ADM',NULL);
INSERT INTO "CURSO" ("idCurso","nome","sigla","idAluno") VALUES (122,'Agropecuária','AGRO',NULL);
INSERT INTO "ALUNO" ("idAluno","nome","cidade") VALUES (2,'caco','Paris');
INSERT INTO "ALUNO" ("idAluno","nome","cidade") VALUES (1,'Caio','Palmopolis');
INSERT INTO "ALUNO" ("idAluno","nome","cidade") VALUES (3,'Bernardo','Almenara');
INSERT INTO "ALUNO" ("idAluno","nome","cidade") VALUES (4,'Bruno','Almenara');
INSERT INTO "ALUNOCURSO" ("idAluno","idCurso") VALUES (2,123);
INSERT INTO "ALUNOCURSO" ("idAluno","idCurso") VALUES (3,124);
INSERT INTO "ALUNOCURSO" ("idAluno","idCurso") VALUES (4,122);
COMMIT;
