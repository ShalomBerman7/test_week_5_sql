-- Student Name: Shalom Berman
-- Class: negev
-- ID: 212797740


-- Question 1
-- SQL:
SELECT COUNT(*) FROM `imdb_top_1000` WHERE IMDB_Rating > 8;
-- Answer: 322


-- Question 2
-- SQL:
SELECT MAX(IMDB_Rating) FROM `imdb_top_1000`;
-- Answer: 9.3


-- Question 3
-- SQL:
SELECT COUNT(Genre) FROM `imdb_top_1000` WHERE Genre LIKE "%Drama%";
-- Answer: 289


-- Question 4
-- SQL:
SELECT COUNT(Genre) FROM `imdb_top_1000` WHERE Genre LIKE "%Action%";
-- Answer: 172


-- Question 5
-- SQL:
SELECT COUNT(Released_Year) FROM `imdb_top_1000` WHERE Released_Year = 2010;
-- Answer: 23


-- Question 6
-- SQL:
SELECT MIN(Runtime) FROM `imdb_top_1000`;
-- Answer: 45


-- Question 7
-- SQL:
SELECT COUNT(*) FROM `imdb_top_1000` WHERE Meta_score > 85;
-- Answer: 249


-- Question 8
-- SQL:
SELECT COUNT(*) FROM `imdb_top_1000` WHERE Gross > 100000000;
-- Answer: 186


-- Question 9
-- SQL:
SELECT AVG(IMDB_Rating) FROM `imdb_top_1000`;
-- Answer: 7.94930


-- Question 10
-- SQL:
SELECT COUNT(Certificate) FROM `imdb_top_1000` WHERE Certificate LIKE "R";
-- Answer: 146


-- Question 11
-- SQL:
SELECT Genre, COUNT(*) AS max_genre FROM `imdb_top_1000` GROUP BY Genre ORDER BY max_genre DESC;
-- Answer: Drama


-- Question 12
-- SQL:
SELECT COUNT(*) FROM `imdb_top_1000` WHERE Genre LIKE "Adventure" AND Released_Year > 2010 AND Certificate NOT LIKE "%PG%";
-- Answer: 13


-- Question 13
-- SQL:
SELECT COUNT(*) FROM `imdb_top_1000` WHERE Runtime > 94 AND Runtime < 141;
-- Answer: 669


-- Question 14
-- SQL:
SELECT COUNT(Released_Year), Released_Year FROM `imdb_top_1000` WHERE Released_Year > 1940 GROUP BY Released_Year ORDER BY COUNT(Released_Year);
-- Answer: 1943


-- Question 15
-- SQL:
SELECT MAX(Gross) FROM `imdb_top_1000` WHERE Genre LIKE "Comedy";
-- Answer: 9600000


-- Question 16
-- SQL:
SELECT COUNT(*) FROM `imdb_top_1000` WHERE IMDB_Rating > 7.2 AND IMDB_Rating < 8.2;
-- Answer: 805


-- Question 17
-- SQL:
SELECT AVG(Meta_score) FROM `imdb_top_1000` WHERE Genre LIKE "Thriller";
-- Answer: 81


-- Question 18
-- SQL:
SELECT COUNT(*) FROM `imdb_top_1000` WHERE Released_Year < 1980;
-- Answer: 276


-- Question 19
-- SQL:
SELECT AVG(IMDB_Rating), Genre FROM `imdb_top_1000` GROUP BY Genre ORDER BY AVG(IMDB_Rating);
-- Answer: Family


-- Question 20
-- SQL:
SELECT MAX(Runtime) FROM `imdb_top_1000` WHERE Genre LIKE "Horror";
-- Answer: 122



-- Question 21
-- SQL:
SELECT COUNT(*) FROM `disasters` WHERE year(`date`) = 2020;
-- Answer: 1465


-- Question 22
-- SQL:
SELECT MAX(casualties) FROM `disasters`;
-- Answer: 445


-- Question 23
-- SQL:
SELECT COUNT(*) FROM `disasters` WHERE disaster_type LIKE "FLood";
-- Answer: 996


-- Question 24
-- SQL:
SELECT COUNT(*) FROM `disasters` WHERE disaster_type LIKE "Earthquake" AND country IN ("Brazil", "India");
-- Answer: 99


-- Question 25
-- SQL:
SELECT AVG(casualties) FROM `disasters` WHERE disaster_type IN ("Wildfire", "Hurricane") AND response_time_hours < 10;
-- Answer: 123.9360


-- Question 26
-- SQL:
SELECT COUNT(*) FROM `disasters` WHERE casualties = 0;
-- Answer: 27


-- Question 27
-- SQL:
SELECT MIN(economic_loss_usd) FROM `disasters`;
-- Answer: 876.16


-- Question 28
-- SQL:
SELECT COUNT(*) FROM `disasters` WHERE economic_loss_usd > 1000000000;
-- Answer: 0


-- Question 29
-- SQL:

-- Answer:


-- Question 30
-- SQL:
SELECT MIN(`date`) FROM `disasters` WHERE severity_index > 4 AND aid_amount_usd > 50000;
-- Answer: 2018-01-01


-- Question 31
-- SQL:
SELECT COUNT(*), disaster_type FROM `disasters` GROUP BY disaster_type ORDER BY COUNT(*) DESC;
-- Answer: Landslide


-- Question 32
-- SQL:
SELECT COUNT(*) FROM `disasters` WHERE disaster_type LIKE "%Storm%";
-- Answer: 1005


-- Question 33
-- SQL:
SELECT COUNT(*) FROM `disasters` WHERE casualties > 49 AND casualties < 501;
-- Answer: 7701


-- Question 34
-- SQL:

-- Answer: 


-- Question 35
-- SQL:
SELECT MAX(economic_loss_usd) FROM `disasters` WHERE disaster_type LIKE "Flood";
-- Answer: 21803567.75


-- Question 36
-- SQL:

-- Answer:


-- Question 37
-- SQL:

-- Answer:


-- Question 38
-- SQL:
SELECT MAX(economic_loss_usd) FROM `disasters` WHERE severity_index;
-- Answer: 24442640.70


-- Question 39
-- SQL:

-- Answer:


-- Question 40
-- SQL:
SELECT `date`, MAX(economic_loss_usd + aid_amount_usd) FROM `disasters`;
-- Answer: 2021-01-31


-- Research Section
--part 1
--b1
-- SQL:
ALTER TABLE disasters ADD year_value date;
--b2
-- SQL:

-- Answer: 
