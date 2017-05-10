-- Table: users
CREATE TABLE users
(
	id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
	username VARCHAR(250) NOT NULL ,
	password VARCHAR(250) NOT NULL ,

);

-- Table: roles
CREATE TABLE roles (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY ,
    name VARCHAR(255) NOT NULL
);

-- Table: for mapping user and roles: user_roles
CREATE TABLE user_roles (
    user_id INT NOT NULL ,
    role_id INT NOT NULL ,

    FOREIGN KEY (user_id) REFERENCES users(id) ,
    FOREIGN KEY (role_id) REFERENCES roles(id) ,

    UNIQUE (user_id, role_id)

)



