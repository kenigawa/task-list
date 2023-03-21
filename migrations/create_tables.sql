CREATE TABLE common.todos(
    id int NOT NULL AUTO_INCREMENT,
    user_id CHAR(10) NOT NULL,
    name VARCHAR(30) NOT NULL,
    content VARCHAR(200),
    deadline_date DATE,
    status TINYINT DEFAULT 0 NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME,
    deleted_at DATETIME,
    PRIMARY KEY(id)
);

CREATE TABLE common.users(
    id CHAR(10) NOT NULL,
    name VARCHAR(30) NOT NULL,
    email VARCHAR(50),
    password VARCHAR(30),
    created_at DATETIME NOT NULL,
    updated_at DATETIME,
    deleted_at DATETIME,
    PRIMARY KEY(id)
);

ALTER TABLE todos ADD FOREIGN KEY (user_id) REFERENCES users(id);