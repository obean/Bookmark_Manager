##User Story
  as a user
  so that I can view my bookmarks
  I want the program to show me a list of bookmarks

  as a user
  so that I can save my favourites
  I want to be able to add new bookmarks

  #Domain model for above user story
    alias user
  alias client
  alias controller
  alias model
  alias view

  user->client:" show me a list"
  client->controller: "/get bookmarks"
  controller->model: "code to get bookmarks"
  model-->controller: "bookmarks information"
  controller-->view: "bookmarks information"
  view-->client: "html response of bookmakrs"
  client-->client: "renders html"
  client-->user: "displays html"


##DataBase set up
 - connect to psql
 - CREATE DATABASE "bookmarks";
 - \c "bookmarks";
 - CREATE TABLE bookmarks (id SERIAL PRIMARY KEY, url VARCHAR(60));
 - 