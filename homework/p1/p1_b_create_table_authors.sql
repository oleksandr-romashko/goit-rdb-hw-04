USE LibraryManagement;

CREATE TABLE authors (
    author_id INT NOT NULL AUTO_INCREMENT,
    -- Books can be attributed to "Unknown" when the author or editor (as applicable) is not known and cannot be discovered.
    -- Books whose authorship is purposefully withheld should be attributed instead to "Anonymous".
    author_name VARCHAR(100) NOT NULL DEFAULT "Unknown",
    PRIMARY KEY (author_id)
);