-------------------Q1-------------------
--SELECT Movie.name, Movie.year
--FROM Movie
--LEFT JOIN Actor ON Actor.movie_id = Movie.id
--LEFT JOIN Person ON Person.id = Actor.actor_id
--WHERE Person.name = "Geena Davis";

-------------------Q2-------------------
--SELECT MIN(runtime), MAX(runtime), AVG(runtime)
--FROM Movie
--WHERE rating = "R";

-------------------Q3-------------------
--SELECT Oscar.type, Oscar.year, Movie.name
--FROM Oscar
--LEFT JOIN Movie ON Movie.id = Oscar.movie_id
--LEFT JOIN Person ON Person.id = Oscar.person_id
--WHERE Person.name = "Steven Spielberg";

-------------------Q4-------------------
--SELECT pob AS "Place Of Birth", COUNT(pob) AS "# Of People Born"
--FROM Person
--GROUP BY pob
--HAVING COUNT(pob) >= 50

-------------------Q5-------------------
--SELECT (COUNT(Movie.id) - COUNT(Oscar.movie_id)) AS "# Of Movies w/out Oscars"
--FROM Movie
--LEFT JOIN Oscar ON Oscar.movie_id = Movie.id

-------------------Q6-------------------
--SELECT Person.name, COUNT(Person.id = Actor.actor_id)
--FROM Person
--LEFT JOIN Actor ON Actor.actor_id = Person.id
--GROUP BY Person.name
--HAVING Person.pob LIKE "%Sweden%"
--ORDER BY COUNT(Person.id = Actor.actor_id) DESC, Person.name ASC

-------------------Q7-------------------
--SELECT COUNT(Person.id) AS "Number Of R-rated Directors"
--FROM Person
--LEFT JOIN Director ON Director.director_id = Person.id
--LEFT JOIN Movie ON Movie.id = Director.movie_id
--WHERE Movie.rating = "R"

-------------------Q8-------------------
--UPDATE Movie
--SET rating = 'PG-13'
--WHERE name = "Indiana%" AND year = 1984;
