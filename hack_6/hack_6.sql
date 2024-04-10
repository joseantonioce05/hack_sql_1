--Insert

INSERT INTO discounts (status, percetange) VALUES ('Active', 25), ('No Active', 0), ('Active', 50);
INSERT INTO offers (status) VALUES ('Active'), ('No Active'), ('Preparing');
INSERT INTO taxes (percetange) VALUES (2), (5), (10);
INSERT INTO roles (name) VALUES ('Tecnology'), ('Clothing'), ('Nature');
INSERT INTO countries (name) VALUES ('Venezuela'), ('Japan'), ('Germany'), ('Spain'), ('Canada');
INSERT INTO invoice_status (status) VALUES ('In progress'), ('Paid'), ('Biling');
INSERT INTO payments (type) VALUES ('Credit Card'), ('Debit Card'), ('Effective');
INSERT INTO products (id_discount, id_offer, id_tax, name, details, minimun_stock, maximun_stock, current_stock, price, price_with_tax) VALUES 
    (1, 1, 2, 'Nintendo Switch', 'Nintendo game console', 5, 200, 100, 210, 220.5),
    (2, 2, 3, 'Playstation 5', 'Sony game console', 10, 500, 250, 500, 550),
    (3, 1, 1, 'Xbox Series X', 'Microsoft game console', 1, 150, 350, 250, 255);
INSERT INTO customers (id_country, id_role, name, age, email, password, physical_address) VALUES
    (1, 1, 'Jose', 25, 'jose@gmail.com', '2d@pe3', 'La Guaira'),
    (2, 3, 'Kirito', 22, 'sao@gmail.com', 'ggo2W@', 'Osaka'),
    (5, 2, 'Carla', 20, 'carla@gmail.com', '25dfg@l', 'Otawwa');
INSERT INTO products_customers (id_product, id_customer) VALUES (1,1), (2,2), (3,1);
INSERT INTO invoices (id_customer, id_payment, id_invoice_status, date, total_to_pay) VALUES
    (1, 2, 1, '2024-04-05', 500), (3, 1, 3, '2024-02-08', 200), (2, 3, 2, '2024-03-25', 300);

--Delete

DELETE FROM invoices WHERE id_customer in(SELECT MAX(id_customer) FROM customers);
DELETE FROM customers WHERE id_customer in(SELECT MAX(id_customer) FROM customers);

--Update

UPDATE customers SET name = 'Alenjadra', age = 25, email = 'ale@gmail.com' WHERE id_customer in(SELECT MAX(id_customer) FROM customers);
UPDATE taxes SET percetange = 5 WHERE id_tax = 1;
UPDATE taxes SET percetange = 7 WHERE id_tax = 2;
UPDATE taxes SET percetange = 15 WHERE id_tax = 3;
UPDATE products SET price = 300 WHERE id_product = 1;
UPDATE products SET price = 400 WHERE id_product = 2;
UPDATE products SET price = 450 WHERE id_product = 3;