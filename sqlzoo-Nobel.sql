
--nobel Nobel Laureates


--Winners FROM 1950

/*1.
Change the query shown so that it displays Nobel prizes for 1950. 
*/
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950

/*
1962 Literature

2.
Show who won the 1962 prize for Literature. 
*/
SELECT winner
	FROM nobel
 WHERE yr = 1962
    AND subject = 'Literature'Submit 

/*
Albert Einstein

3.
Show the year and subject that won 'Albert Einstein' his prize. 
*/

SELECT yr, subject 
FROM nobel 
WHERE winner = 'Albert Einstein'
/*
Recent Peace Prizes
4.
Give the name of the 'Peace' winners since the year 2000, including 2000. 
*/

SELECT wINner 
FROM nobel 
WHERE (yr >= 2000 AND subject = 'Peace')

/*
Literature in the 1980's

5.
Show all details (yr, subject, winner) of the Literature prize winners for 1980 to 1989 inclusive. 
*/

SELECT yr, subject, winner 
FROM nobel 
WHERE subject = 'Literature' and (yr >= 1980 AND yr <= 1989)

/*
Only Presidents

6.
Show all details of the presidential winners: 
Theodore Roosevelt
Woodrow Wilson
Jimmy Carter
Barack Obama
*/
SELECT * FROM nobel
 WHERE winner IN ('Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter',
                   'Barack Obama')

/*
John

7.
Show the winners with first name John 
*/
SELECT winner 
FROM nobel 
WHERE winner LIKE 'john%'
 
/*
Chemistry and Physics FROM different years
8.
Show the year, subject, and name of Physics winners for 1980 together with the Chemistry winners for 1984.
*/
SELECT yr, subject, winner 
FROM nobel 
WHERE (subject = 'Physics' and yr = 1980 )OR (subject = 'Chemistry' AND yr = 1984 )

/*
Exclude Chemists and Medics

9.
Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
*/

SELECT * FROM nobel 
WHERE (subject <> 'Chemistry' AND subject <> 'Medicine') AND yr = 1980

/*
Nobel Quiz
Harder Questions
Umlaut

11.
Find all details of the prize won by PETER GRÜNBERG 

Non-ASCII characters
*/

SELECT * FROM nobel WHERE winner like 'PETER GR%BERG'

/*
12.
Find all details of the prize won by EUGENE O'NEILL 

Escaping single quotes
*/

SELECT * FROM nobel 
WHERE winner = 'EUGENE O''NEILL'

/*
13
List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
*/

SELECT winner, yr, subject  
FROM nobel 
WHERE winner 
LIKE 'Sir%' 
ORDER BY yr DESC

