USE LibraryManagement;

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES  ("To Kill a Mockingbird", 1960, 3, 1),
        ("The Da Vinci Code", 2003, 4, 2);
        
SELECT * FROM books;