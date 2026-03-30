 CREATE DATABASE ecole;
USE ecole;

CREATE TABLE candidats(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(100),
    genre CHAR(1),
    date_naissance DATE,
    numero VARCHAR(20),
    moyenne FLOAT,
    niveau VARCHAR(20),
    photo VARCHAR(100)
);

CREATE TABLE notes(
    id INT AUTO_INCREMENT PRIMARY KEY,
    candidat_id INT,
    matiere VARCHAR(50),
    note FLOAT,
    coeff INT,
    FOREIGN KEY (candidat_id) REFERENCES candidats(id) ON DELETE CASCADE
);