CREATE OR REPLACE TABLE Bolig
(
    Bolig_ID                SMALLINT UNIQUE AUTO_INCREMENT,
    Bolig_Navn              VARCHAR(30)     NOT NULL,
    Bolig_Adresse           VARCHAR(30)     NOT NULL,
    Annonse_ID              INTEGER         NOT NULL,
    CONSTRAINT PRIMARY KEY (Bolig_ID)
);

CREATE OR REPLACE TABLE Varslinger
(
    Leietaker_ID            SMALLINT UNIQUE AUTO_INCREMENT,
    Brukere                 VARCHAR(30)     NOT NULL,
    Annonse_Status          VARCHAR(30)     NOT NULL,
    Student_ID              INTEGER         NOT NULL,
    Leietaker_ID            INTEGER         NOT NULL,
    CONSTRAINT PRIMARY KEY (Varslinger_ID)
);

CREATE OR REPLACE TABLE Annonse_Status
(
    Annonse_Status_ID       SMALLINT UNIQUE AUTO_INCREMENT,
    Annonse_ID              INTEGER         NOT NULL,
    Foresporsel_ID          INTEGER         NOT NULL,
    Akseptert               BOOLEAN         NOT NULL,
    CONSTRAINT PRIMARY KEY (Annonse_Status_ID)
); 

drop database if exists mytestdb;
create database if not exists mytestdb;
use mytestdb;