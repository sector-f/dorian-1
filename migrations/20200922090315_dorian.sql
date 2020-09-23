CREATE TABLE users (
	id       SERIAL PRIMARY KEY,
	name     VARCHAR NOT NULL
);

CREATE TABLE entries (
	id       SERIAL PRIMARY KEY,
	title    VARCHAR NOT NULL,
	uploader VARCHAR NOT NULL
);

CREATE TABLE tags (
	id       SERIAL PRIMARY KEY,
	name     VARCHAR NOT NULL UNIQUE
);

CREATE TABLE tagmap (
	id       SERIAL PRIMARY KEY,
	tag_id   INTEGER NOT NULL,
	entry_id INTEGER NOT NULL,

	FOREIGN KEY(tag_id) REFERENCES tags(id),
	FOREIGN KEY(entry_id) REFERENCES entries(id)
);