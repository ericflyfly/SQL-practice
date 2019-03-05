/* Movie stars: What movies are they in? Are they married to each other?
 */
CREATE TABLE Movie_stars(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, partner_id INTEGER);

INSERT INTO movie_stars(name, age, partner_id) VALUES("eric", 26, 2);
INSERT INTO movie_stars(name, age, partner_id) VALUES("eric wife", 30, 1);
INSERT INTO movie_stars(name, age) VALUES("Sam", 26 );

/*SELECT * FROM movie_stars;*/
SELECT movie_stars.name, movie_stars_partner.name AS partner_name FROM movie_stars LEFT JOIN movie_stars  movie_stars_partner ON movie_stars.partner_id = movie_stars_partner.id;

/*Singers: What songs did they write? Where are they from?*/
CREATE TABLE Singers(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, age INTEGER, nationality TEXT);

INSERT INTO Singers(name, age, nationality) VALUES("Eric Chan", 26, "hong kong");
INSERT INTO Singers(name, age, nationality) VALUES("Eason Chan", 40, "hong kong");
INSERT INTO Singers(name, age, nationality) VALUES("Tim Chan", 23, "Korea");

CREATE TABLE Songs(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, singer_id INTEGER);

INSERT INTO Songs(name, singer_id) VALUES("HONG KONG SONG", 2);
INSERT INTO Songs(name, singer_id) VALUES("KOREAN song", 3);
INSERT INTO Songs(name, singer_id) VALUES("HONG KONG SONG", 2);

/*print the singers name along with the songs he or she singed*/
SELECT Singers.name AS singers_name, Songs.name AS songs_name FROM Songs JOIN Singers ON Songs.singer_id = Singers.id ORDER BY Singers.name;

/*print singers name who sing more than 1 song name along with the number of songs he or she singed*/

SELECT Singers.name AS singers_name, Songs.name AS songs_name, COUNT(*) AS songs_number FROM Songs JOIN Singers ON Songs.singer_id = Singers.id GROUP BY singers_name HAVING songs_number >= 2 ORDER BY Singers.name ;