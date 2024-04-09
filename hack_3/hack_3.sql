CREATE TABLE countries(
    id_country SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE priorities(
    id_priority SERIAL PRIMARY KEY,
    type_name VARCHAR(50) NOT NULL
);

CREATE TABLE contact_request(
    id_email SERIAL PRIMARY KEY,
    id_country INTEGER NOT NULL,
    id_priority INTEGER NOT NULL,
    name VARCHAR(50) NOT NULL,
    detail VARCHAR(50) NOT NULL,
    physical_address VARCHAR(100) NOT NULL,
    FOREIGN KEY (id_country) REFERENCES countries (id_country),   
    FOREIGN KEY (id_priority) REFERENCES priorities (id_priority)   
);