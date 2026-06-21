
CREATE TABLE users(
 id INTEGER PRIMARY KEY,
 username TEXT,
 password_hash TEXT,
 role TEXT
);

CREATE TABLE books(
 isbn TEXT PRIMARY KEY,
 title TEXT,
 author TEXT,
 publisher TEXT,
 publication_year INTEGER,
 available_copies INTEGER DEFAULT 1
);

CREATE TABLE borrow_transactions(
 transaction_id INTEGER PRIMARY KEY,
 user_id INTEGER,
 isbn TEXT,
 borrow_date DATE,
 due_date DATE,
 return_date DATE,
 status TEXT
);

CREATE TABLE reservations(
 reservation_id INTEGER PRIMARY KEY,
 user_id INTEGER,
 isbn TEXT,
 reservation_date DATE,
 status TEXT
);
