USE LibraryManagement;

CREATE TABLE users (
    user_id INT NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(254) NOT NULL UNIQUE,
    PRIMARY KEY (user_id),
    -- This email check does not validate internationalized domain names (IDNs) 
    -- or email addresses with uncommon characters according to the full email specification.
    -- It assumes that the domain part only consists of standard ASCII characters and typical TLDs.
    -- If you need more rigorous validation, you might consider extending this check 
    -- or additional application-level checks.
    CHECK (email REGEXP "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$")
);