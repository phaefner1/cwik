CREATE TABLE IF NOT EXISTS authors (
    id INTEGER PRIMARY KEY,
    linux_uid INTEGER UNIQUE,
    username TEXT,
    created_at TEXT
);

CREATE TABLE IF NOT EXISTS categories (
    id INTEGER PRIMARY KEY,
    name TEXT,
    parent_id INTEGER,
    path TEXT,
    FOREIGN KEY (parent_id) REFERENCES categories(id)
);

CREATE TABLE IF NOT EXISTS articles (
    id INTEGER PRIMARY KEY,
    name TEXT,
    content TEXT,
    category_id INTEGER,
    author_id INTEGER,
    created_at TEXT,
    updated_at TEXT,
    FOREIGN KEY (category_id) REFERENCES categories(id),
    FOREIGN KEY (author_id) REFERENCES authors(id)
);
