
-- Table: users
CREATE TABLE users (
  id       INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  email    VARCHAR(255) NOT NULL
);

-- CREATE TABLE users (
--   `id`          INT             NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   `username`    VARCHAR(255)    NOT NULL,
--   `password`    VARCHAR(255)    NOT NULL,
--   `email`       VARCHAR(255)    NOT NULL,
-- --   PRIMARY KEY (`id`),
--   UNIQUE INDEX `user_UNIQUE` (`username` ASC) VISIBLE, --выкидывает exception
--   UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE
--   );

-- Table: roles
CREATE TABLE roles (
  id   INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL
);


-- Table for mapping user and roles: user_roles
CREATE TABLE user_roles (
  user_id INT NOT NULL,
  role_id INT NOT NULL,

  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (role_id) REFERENCES roles (id),

  UNIQUE (user_id, role_id)
);


-- Insert data

INSERT INTO users VALUES (1, 'Slava', '$2y$12$DZ5PrkS1vBQW.fEZDKYg8OQ8wqzsF3Le/nfGjUkOICe0QeR.qxjPu
', 'bbb@bk.ru');

INSERT INTO roles VALUES (1, 'ROLE_USER');
INSERT INTO roles VALUES (2, 'ROLE_ADMIN');

INSERT INTO user_roles VALUES (1, 2);
INSERT INTO user_roles VALUES (1, 1);