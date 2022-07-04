CREATE TABLE lists (
  id serial PRIMARY KEY,
  name text unique NOT NULL
);

CREATE TABLE todo (
  id serial PRIMARY KEY,
  name text NOT NULL,
  completed bool NOT NULL DEFAULT false,
  list_id int NOT NULL REFERENCES lists(id)
);



