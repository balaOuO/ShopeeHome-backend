CREATE TABLE myuser
(
    id           VARCHAR(50)  NOT NULL PRIMARY KEY,
    email        VARCHAR(100) NOT NULL,
    password     VARCHAR(100) NOT NULL,
    name         VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    is_deleted   BOOLEAN      NOT NULL
);

CREATE TABLE user_address
(
    address VARCHAR(200) NOT NULL,
    user_id VARCHAR(50) REFERENCES myuser (id),
    PRIMARY KEY (address, user_id)
);

CREATE TABLE admin
(
    id         VARCHAR(50)  NOT NULL PRIMARY KEY,
    name       VARCHAR(100) NOT NULL,
    password   VARCHAR(100) NOT NULL,
    is_deleted BOOLEAN      NOT NULL
);

CREATE TABLE shop
(
    id           VARCHAR(50)  NOT NULL PRIMARY KEY,
    email        VARCHAR(100) NOT NULL,
    password     VARCHAR(100) NOT NULL,
    name         VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20)  NOT NULL,
    address      VARCHAR(100) NOT NULL,
    description  VARCHAR(1000),
    creater_id   VARCHAR(50) REFERENCES admin (id),
    deleter_id   VARCHAR(50) REFERENCES admin (id),
    is_deleted   BOOLEAN      NOT NULL
);