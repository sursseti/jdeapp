CREATE TABLE product_naming (
	id INTEGER NOT NULL,
	name TEXT NOT NULL
);

CREATE TABLE product_type (
	id INTEGER NOT NULL,
	type TEXT NOT NULL
);


INSERT INTO product_naming (id, name) VALUES 
  (1, 'JACOBS MONARCH'),
  (2, 'JACOBS MONARCH INTENSE');