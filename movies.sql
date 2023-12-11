CREATE DATABASE movies_side_project ;
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

INSERT INTO movies (movie_id, title, release_year, director_id, genre_id) VALUES
(1, 'The Shawshank Redemption', 1994, 1, 1),
(2, 'The Godfather', 1972, 2, 2),
(3, 'The Dark Knight', 2008, 3, 3),
(4, 'The Godfather Part II', 1974, 4, 4),
(5, '12 Angry Men', 1957, 5, 5),
(6, 'Schindler''s List', 1993, 6, 6),
(7, 'The Lord of the Rings: The Return of the King', 2003, 7, 7),
(8, 'Pulp Fiction', 1994, 8, 8),
(9, 'The Lord of the Rings: The Fellowship of the Ring', 2001, 9, 9),
(10, 'The Good, the Bad and the Ugly', 1966, 10, 10),
(11, 'Forrest Gump', 1994, 11, 1),
(12, 'Fight Club', 1999, 12, 2),
(13, 'The Lord of the Rings: The Two Towers', 2002, 13, 3),
(14, 'Inception', 2010, 14, 4),
(15, 'Star Wars: Episode V - The Empire Strikes Back', 1980, 15, 5),
(16, 'The Matrix', 1999, 1, 6),
(17, 'Goodfellas', 1990, 2, 7),
(18, 'One Flew Over the Cuckoo''s Nest', 1975, 3, 8),
(19, 'Se7en', 1995, 4, 9),
(20, 'It''s a Wonderful Life', 1946, 5, 10),
(21, 'Seven Samurai', 1954, 6, 1),
(22, 'Interstellar', 2014, 7, 2),
(23, 'The Silence of the Lambs', 1991, 8, 3),
(24, 'Saving Private Ryan', 1998, 9, 4),
(25, 'City of God', 2002, 10, 5),
(26, 'Spider-Man: Across the Spider-Verse', 2023, 11, 6),
(27, 'Life Is Beautiful', 1997, 12, 7),
(28, 'The Green Mile', 1999, 13, 8),
(29, 'Star Wars: Episode IV - A New Hope', 1977, 14, 9),
(30, 'Terminator 2: Judgment Day', 1991, 15, 10),
(31, 'Back to the Future', 1985, 1, 1),
(32, 'Spirited Away', 2001, 2, 2),
(33, 'The Pianist', 2002, 3, 3),
(34, 'Psycho', 1960, 4, 4),
(35, 'Parasite', 2019, 5, 5),
(36, 'Gladiator', 2000, 6, 6),
(37, 'The Lion King', 1994, 7, 7),
(38, 'Léon: The Professional', 1994, 8, 8),
(39, 'American History X', 1998, 9, 9),
(40, 'The Departed', 2006, 10, 10),
(41, 'Whiplash', 2014, 11, 1),
(42, 'The Prestige', 2006, 12, 2),
(43, 'The Usual Suspects', 1995, 13, 3),
(44, 'Grave of the Fireflies', 1988, 14, 4),
(45, 'Harakiri', 1962, 15, 5),
(46, 'Casablanca', 1942, 1, 6),
(47, 'The Intouchables', 2011, 2, 7),
(48, 'Modern Times', 1936, 3, 8),
(49, 'Cinema Paradiso', 1988, 4, 9),
(50, 'Once Upon a Time in the West', 1968, 5, 10);

INSERT INTO genres (genre_id, genre_name) VALUES
(1, 'Action'),
(2, 'Adventure'),
(3, 'Animation'),
(4, 'Biography'),
(5, 'Comedy'),
(6, 'Crime'),
(7, 'Documentary'),
(8, 'Drama'),
(9, 'Family'),
(10, 'Fantasy');

INSERT INTO directors (director_id, first_name, last_name) VALUES
(1, 'Steven', 'Spielberg'),
(2, 'Martin', 'Scorsese'),
(3, 'Ridley', 'Scott'),
(4, 'John', 'Woo'),
(5, 'Christopher', 'Nolan'),
(6, 'Tim', 'Burton'),
(7, 'Hayao', 'Miyazaki'),
(8, 'Peter', 'Jackson'),
(9, 'Quentin', 'Tarantino'),
(10, 'Stanley', 'Kubrick'),
(11, 'Alfred', 'Hitchcock'),
(12, 'Orson', 'Welles'),
(13, 'John', 'Ford'),
(14, 'Howard', 'Hawks'),
(15, 'Akira', 'Kurosawa');