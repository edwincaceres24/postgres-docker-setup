CREATE DATABASE movies_side_project;
\c movies_side_project;

CREATE TABLE movies (
  movie_id INT PRIMARY KEY,
  title VARCHAR(100),
  release_year INT,
  director_id INT,
  genre_id INT
);

CREATE TABLE actors (
  actor_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE directors (
  director_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE genres (
  genre_id INT PRIMARY KEY,
  genre_name VARCHAR(50)
);

CREATE TABLE movie_actors (
  movie_id INT,
  actor_id INT,
  PRIMARY KEY(movie_id, actor_id),
  FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
  FOREIGN KEY(actor_id) REFERENCES actors(actor_id)
);

