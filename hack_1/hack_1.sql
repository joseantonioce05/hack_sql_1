CREATE TABLE countries(
    id_country SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL  
);

CREATE TABLE users(
    id_users SERIAL PRIMARY KEY,
    id_country INTEGER NOT NULL,
    email VARCHAR(100) NOT NULL,
    name VARCHAR (50) NOT NULL,
    FOREIGN KEY (id_country) REFERENCES countries (id_country)   
);