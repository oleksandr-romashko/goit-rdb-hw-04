USE LibraryManagement;

CREATE TABLE books (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    publication_year YEAR,
    author_id INT NOT NULL,
    genre_id INT NOT NULL,
    PRIMARY KEY (book_id),
    CONSTRAINT fk_book_author FOREIGN KEY (author_id) REFERENCES authors (author_id),
    CONSTRAINT fk_book_genre FOREIGN KEY (genre_id) REFERENCES genres (genre_id)
);