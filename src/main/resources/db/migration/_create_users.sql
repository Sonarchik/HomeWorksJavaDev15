CREATE TABLE users_group (
                       id IDENTITY PRIMARY KEY,
                       username VARCHAR(100) NOT NULL,
                       password VARCHAR(1000) NOT NULL,
                       roles VARCHAR(1000) NOT NULL,
                       enabled BOOLEAN DEFAULT true
);

INSERT INTO users_group (username, password, roles, enabled)
VALUES ('user',
        '{noop}jdbcDefault',
        'USER', true);

INSERT INTO users_group (username, password, roles, enabled)
VALUES ('admin',
        '{noop}admin',
        'ADMIN', true);