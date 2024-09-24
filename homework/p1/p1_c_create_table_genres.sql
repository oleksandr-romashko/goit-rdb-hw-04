USE LibraryManagement;

CREATE TABLE genres (
    genre_id INT NOT NULL AUTO_INCREMENT,
    genre_name VARCHAR(100) NOT NULL UNIQUE,
    PRIMARY KEY (genre_id)
);