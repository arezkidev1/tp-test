DROP DATABASE toto3;

CREATE DATABASE toto3;

USE toto3;

create table client (
    cli_id int AUTO_INCREMENT NOT NULL,
    cli_nom varchar(50),
    cli_prenom varchar(50),
    PRIMARY KEY (cli_id)
);

create table commande(
    com_num int AUTO_INCREMENT NOT NULL,
    com_date datetime,
    cli_id int,
    PRIMARY KEY (com_num),
    FOREIGN KEY (cli_id) REFERENCES client(cli_id)
);

create table commande(
    com_num int AUTO_INCREMENT PRIMARY KEY,
    com_date datetime,
    cli_id INT REFERENCES client(cli_id)
);

create table commande(
    com_num int AUTO_INCREMENT NOT NULL,
    com_date datetime,
    cli_id int,
    PRIMARY KEY (com_num)
);

ALTER TABLE commande
    ADD CONSTRAINT fk1 FOREIGN KEY (cli_id) REFERENCES client(cli_id);

ALTER TABLE
    DROP FOREIGN KEY fk1;
    
    