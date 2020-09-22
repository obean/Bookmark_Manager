CREATE DATABASE "bookmark_manager_test"
\c bookmark_manager_test\
CREATE TABLE test_bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));