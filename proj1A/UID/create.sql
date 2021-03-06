
CREATE TABLE Movie(id INT, 
	title VARCHAR(100) NOT NULL, 
	year INT, 
	rating VARCHAR(10), 
	company VARCHAR(50),
	PRIMARY KEY (id)	
)ENGINE = INNODB;
-- id is the primary key for each movie is supposed to have a unique id

CREATE TABLE Actor(
	id INT, 
	last VARCHAR(20), 
	first VARCHAR(20), 
	sex VARCHAR(6), 
	dob DATE NOT NULL, 
	dod DATE,
	PRIMARY KEY (id),
	CHECK (sex = 'Male' OR sex = 'Female')
)ENGINE = INNODB;
-- id is the primary key for each actor is supposed to have a unique id

CREATE TABLE Sales(
	mid	INT,
	ticketsSold	INT,
	totalIncome	INT,
 	FOREIGN KEY(mid) REFERENCES Movie(id),
 	CHECK(ticketsSold >= 0)
)ENGINE = INNODB;
-- mid is a foreign key to make sure that each sale infomation corresponds to a valid movie
-- for a valid moive, the number of tickets sold is supposed to be larger than zero, which is a common sense

CREATE TABLE Director(
	id INT,
	last VARCHAR(20),
	first VARCHAR(20),
	dob DATE,
	dod DATE,
 	PRIMARY KEY(id)
)ENGINE = INNODB;
-- id is the primary key for each director is supposed to have a unique id

CREATE TABLE MovieGenre(
	mid	INT,
	genre VARCHAR(20),
 	FOREIGN KEY(mid) REFERENCES Movie(id)
)ENGINE = INNODB;
-- make sure that each "MovieGenre" infomation corresponds to a valid movie

CREATE TABLE MovieDirector(
	mid	INT,
	did INT,
 	FOREIGN KEY(mid) REFERENCES Movie(id)
)ENGINE = INNODB;
-- make sure that each "MovieDirector" infomation corresponds to a valid movie

CREATE TABLE MovieActor(
	mid	INT,
	aid	INT,
	role VARCHAR(50),
 	FOREIGN KEY(mid) REFERENCES Movie(id),
 	FOREIGN KEY(aid) REFERENCES Actor(id)
)ENGINE = INNODB;
-- make sure that each "MovieActor" infomation corresponds to a valid movie and a valid actor

CREATE TABLE MovieRating(
	mid	INT,
	imdb INT,
	rot	INT,
 	FOREIGN KEY(mid) REFERENCES Movie(id)
)ENGINE = INNODB;
-- make sure that each "MovieGenre" infomation corresponds to a valid movie

CREATE TABLE Review(
	name VARCHAR(20),
	time TIMESTAMP,
	mid	INT,
	rating	INT,
	comment	VARCHAR(500),
 	FOREIGN KEY(mid) REFERENCES Movie(id),
 	CHECK(rating >= 0 AND rating <= 5)
)ENGINE = INNODB;
-- make sure that each Review infomation corresponds to a valid movie
-- rating score is in the range of 0 to 5

CREATE TABLE MaxPersonID(
	id INT 
)ENGINE = INNODB;

CREATE TABLE MaxMovieID(
	id INT 
)ENGINE = INNODB;