DROP DATABASE IF EXISTS settimaarte;
CREATE DATABASE IF NOT EXISTS settimaarte;
USE settimaarte;

CREATE TABLE films(
	id int,
	incasso float,
	link varchar(50),
	anno_produzione int,
	titolo varchar(50),
	PRIMARY KEY (id)
);

CREATE TABLE case_produttrici(
	vatcode varchar(15),
	nome varchar(25),
	PRIMARY KEY (vatcode)
	
);

CREATE TABLE produzioni(
	id int,
	vatcode varchar(15),
	PRIMARY KEY (id,vatcode),
	FOREIGN KEY (id) REFERENCES films(id),
	FOREIGN KEY (vatcode) REFERENCES case_produttrici(vatcode)
	
);