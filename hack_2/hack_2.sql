-- CREATE:

INSERT INTO countries (name) VALUES ('argentina') , ('colombia'),('chile');
SELECT * FROM countries;

INSERT INTO users (id_country, email, name) 
  VALUES (2, 'foo@foo.com', 'fooziman'), (3, 'bar@bar.com', 'barziman'); 
SELECT * FROM users;

-- DELETE:

- DELETE FROM users where email = 'bar@bar.com';

-- UPDATE:

- UPDATE users set email = 'foo@foo.foo', name = 'fooz' where id_users = 1;
- SELECT * FROM users;

-- SELECT:

- SELECT * FROM users INNER JOIN  countries ON users.id_country = countries.id_country;

- SELECT u.id_users AS id, u.email, u.name AS fullname, c.name 
  FROM users u INNER JOIN  countries c ON u.id_country = c.id_country;