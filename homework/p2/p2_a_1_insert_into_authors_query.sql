USE LibraryManagement;

INSERT INTO authors (author_name)
-- Default values:
-- "Unknown" or "Anonymous" are two default values that should present 
-- in authors table at any time for data consistency and handling cases when
-- there is no data about the author or author decided to stay anonymous.
VALUES  ("Unknown"),
        ("Anonymous");

INSERT INTO authors (author_name)
VALUES  ("Harper Lee"), 
        ("Dan Brown");
        
SELECT * FROM authors;