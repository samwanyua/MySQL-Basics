--@block
INSERT INTO Users (email, bio,country) 
VALUES 
    ('hello@company.com', 'foo', 'US'),
    ('tim@company.com', 'foo', 'KE'),
    ('kelly@company.com', 'foo', 'FR'),
    ('yout@company.com', 'foo', 'IN');

--@block
SELECT * FROM Users;

--@block
SELECT email, id, country FROM Users 
WHERE country= 'FR'
AND email LIKE 'kel%'  -- find pattern
ORDER BY id DESC
LIMIT 3 ;

--@block
CREATE INDEX email_index ON Users(email);
-- creating index
