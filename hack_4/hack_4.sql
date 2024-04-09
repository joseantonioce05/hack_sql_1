-- Inserts

INSERT INTO countries (name) VALUES ('Venezuela'), ('Japan'), ('Germany'), ('Spain'), ('Canada');
INSERT INTO priorities (type_name) VALUES ('Urgent'), ('Critical'), ('Low');
INSERT INTO contact_request (id_country, id_priority, name, detail, physical_address) VALUES (1, 1, 'Pedro', 'Developer', 'Caracas'), (2, 3, 'Kazuya', 'Developer', 'Tokyo'), (4, 2, 'Ruben', 'Manager', 'Madrid');

-- Delete

DELETE FROM contact_request WHERE id_contact in(SELECT MAX(id_contact) FROM contact_request)

-- Update

UPDATE contact_request SET name = 'Jose', physical_address = 'La Guaira' WHERE id_contact = 1;