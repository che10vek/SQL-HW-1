
/* HOMEWORK 1
Elina Azrilyan
7/11/2018
*/

/*
1. Which destination in the flights database is the furthest distance away, based on information in the flights table.Show the SQL query(s) that support your conclusion.
*/
SELECT * FROM flights ORDER BY distance DESC LIMIT 1;

/*
2. What are the different numbers of engines in the planes table?
*/
SELECT DISTINCT engines FROM planes;

/*
2b.  For each number of engines, which aircraft have the most number of seats? 
*/
SELECT * FROM planes WHERE engines = 2 ORDER BY seats DESC LIMIT 1;
SELECT * FROM planes WHERE engines = 1 ORDER BY seats DESC LIMIT 1;
SELECT * FROM planes WHERE engines = 3 ORDER BY seats DESC LIMIT 1;
SELECT * FROM planes WHERE engines = 4 ORDER BY seats DESC LIMIT 1;

/*
3. Show the total number of flights.
*/
SELECT COUNT(*) FROM flights;

/*
4. Show the total number of flights by airline (carrier).
*/
SELECT DISTINCT carrier, COUNT(*) FROM flights GROUP BY carrier;
/*
5. Show all of the airlines, ordered by number of flights in descending order.
*/
SELECT DISTINCT carrier, COUNT(*) FROM flights GROUP BY carrier ORDER BY count(*) DESC;
/*
6. Show only the top 5 airlines, by number of flights, ordered by number of flights in descending order.
*/
SELECT DISTINCT carrier, COUNT(*) FROM flights GROUP BY carrier ORDER BY count(*) DESC LIMIT 5;

/* 
7. Show only the top 5 airlines, by number of flights of distance 1,000 miles or greater, ordered by number of flights in descending order.
*/
SELECT DISTINCT carrier, COUNT(*) FROM flights WHERE distance > 1000 GROUP BY carrier ORDER BY count(*) DESC LIMIT 5;

/*
8. Create a question that (a) uses data from the flights database, and (b) requires aggregation to answer it, and write down both the question, and the query that answers the question.
8a) a) Find the flight with the longest departure delay
8b) b) Show average departure delay by airport?
 */
SELECT DISTINCT month, COUNT(*) FROM flights WHERE dest = 'MIA' GROUP BY month ORDER BY count(*) DESC;

SELECT origin, avg(dep_delay) FROM flights GROUP BY origin ORDER BY origin ASC;