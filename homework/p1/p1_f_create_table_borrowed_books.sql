USE LibraryManagement;

CREATE TABLE borrowed_books (
    borrow_id INT NOT NULL AUTO_INCREMENT,
    book_id INT NOT NULL,
    user_id INT NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE,
    PRIMARY KEY (borrow_id),
    CONSTRAINT fk_borrowed_book_book FOREIGN KEY (book_id) REFERENCES books (book_id),
    CONSTRAINT fk_borrowed_book_user FOREIGN KEY (user_id) REFERENCES users (user_id),
    CHECK (return_date IS NULL OR return_date >= borrow_date)
);