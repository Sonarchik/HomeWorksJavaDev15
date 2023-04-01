CREATE TABLE users_group (
                       id IDENTITY PRIMARY KEY,
                       username VARCHAR(100) NOT NULL,
                       password VARCHAR(1000) NOT NULL,
                       roles VARCHAR(1000) NOT NULL,
                       enabled BOOLEAN DEFAULT true
);

INSERT INTO users_group (username, password, roles, enabled)
VALUES ('user',
        '$2y$12$ZYujM3DLaZyevfmcyj6/p.17ythVihXPD8RqWyDctS.kUVNPltOaq',
        'USER', true);

INSERT INTO users_group (username, password, roles, enabled)
VALUES ('admin',
        '$2y$12$Hm/4g8ArqaNgK3TqB0qUE.XodM/4zogJCCeMFWwqifWAQ3z5pvsku',
        'ADMIN', true);