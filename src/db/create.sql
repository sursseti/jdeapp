CREATE TABLE product_names (
	id INTEGER NOT NULL,
	name TEXT NOT NULL
);

CREATE TABLE product_types (
	id INTEGER NOT NULL,
	type TEXT NOT NULL
);

CREATE TABLE products (
	id INTEGER NOT NULL,
  name_id INTEGER NOT NULL,
	type_id INTEGER NOT NULL
);


INSERT INTO product_names (id, name) VALUES 
  (1, 'JACOBS MONARCH'),
  (2, 'JACOBS MONARCH INTENSE');

INSERT INTO product_types (id, type) VALUES 
  (1, 'JACOBS MONARCH'),
  (2, 'JACOBS MONARCH INTENSE');
