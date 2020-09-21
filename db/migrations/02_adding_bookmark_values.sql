INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');
INSERT INTO bookmarks (url) VALUES ('http://askjeeves.com');
INSERT INTO bookmarks (url) VALUES ('http://twitter.com');
INSERT INTO bookmarks (url) VALUES ('http://www.google.com');
DELETE from bookmarks WHERE url='http://twitter.com';
UPDATE bookmarks SET url = 'http://www.destroyallsoftware.com' WHERE url = 'http://askjeeves.com';