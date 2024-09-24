USE LibraryManagement;

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES  (1, 1, "2024-09-22", "2024-09-23"),
        (2, 2, "2024-09-23", null);

SELECT * FROM borrowed_books;