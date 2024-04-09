CREATE TABLE discounts (
    id_discount SERIAL PRIMARY KEY,
    status VARCHAR(20) NOT NULL,
    percetange INTEGER NOT NULL
);

CREATE TABLE offers (
    id_offer SERIAL PRIMARY KEY,
    status VARCHAR(30) NOT NULL
);

CREATE TABLE taxes (
    id_tax SERIAL PRIMARY KEY,
    percetange INTEGER NOT NULL
);

CREATE TABLE roles (
    id_role SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE countries (
    id_country SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE invoice_status (
    id_invoice_status SERIAL PRIMARY KEY,
    status VARCHAR(30) NOT NULL
);

CREATE TABLE payments (
    id_payment SERIAL PRIMARY KEY,
    type VARCHAR(30) NOT NULL
);

CREATE TABLE products (
    id_product SERIAL PRIMARY KEY,
    id_discount INTEGER NOT NULL,
    id_offer INTEGER NOT NULL,
    id_tax INTEGER NOT NULL,
    name VARCHAR(75) NOT NULL,
    details VARCHAR(125) NOT NULL,
    minimun_stock INTEGER NOT NULL,
    maximun_stock INTEGER NOT NULL,
    current_stock INTEGER NOT NULL,
    price FLOAT NOT NULL,
    price_with_tax FLOAT NOT NULL,
    FOREIGN KEY (id_discount) REFERENCES discounts (id_discount),
    FOREIGN KEY (id_offer) REFERENCES offers (id_offer),
    FOREIGN KEY (id_tax) REFERENCES taxes (id_tax)
);

CREATE TABLE customers (
    id_customer SERIAL PRIMARY KEY,
    id_country INTEGER NOT NULL,
    id_role INTEGER NOT NULL,
    name VARCHAR (50) NOT NULL,
    age INTEGER NOT NULL,
    email VARCHAR(30) NOT NULL,
    password VARCHAR(25) NOT NULL,
    physical_address VARCHAR(125) NOT NULL,
    FOREIGN KEY (id_country) REFERENCES countries (id_country),
    FOREIGN KEY (id_role) REFERENCES roles (id_role)
);

CREATE TABLE products_customers (
    id_product INTEGER NOT NULL,
    id_customer INTEGER NOT NULL,
    FOREIGN KEY (id_product) REFERENCES products (id_product),
    FOREIGN KEY (id_customer) REFERENCES customers (id_customer)
);

CREATE TABLE invoices (
    id_invoice SERIAL PRIMARY KEY,
    id_customer INTEGER NOT NULL,
    id_payment INTEGER NOT NULL,
    id_invoice_status INTEGER NOT NULL,
    date DATE NOT NULL,
    total_to_pay FLOAT NOT NULL,
    FOREIGN KEY (id_customer) REFERENCES customers (id_customer),
    FOREIGN KEY (id_payment) REFERENCES payments (id_payment),
    FOREIGN KEY (id_invoice_status) REFERENCES invoice_status (id_invoice_status)
);

CREATE TABLE orders (
    id_order SERIAL PRIMARY KEY,
    id_invoice INTEGER NOT NULL,
    id_product INTEGER NOT NULL,
    detail VARCHAR(50) NOT NULL,
    amount INTEGER NOT NULL,
    price FLOAT NOT NULL,
    FOREIGN KEY (id_invoice) REFERENCES invoices (id_invoice),
    FOREIGN KEY (id_product) REFERENCES products (id_product)
);