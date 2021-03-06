/*
1.
List each country name where the population is larger than that of 'Russia'.

world(name, continent, area, population, gdp)
*/

SELECT name FROM world
  WHERE population >
     (SELECT population FROM world
      WHERE name='Russia')
/*
2.
Show the countries in Europe with a per capita GDP greater than 'United Kingdom'.

Per Capita GDP
*/

SELECT name FROM world WHERE  gdp/population > 
(SELECT gdp/population FROM world WHERE name = 'United Kingdom') 
AND Continent = 'Europe'

/*
3.
List the name and continent of countries in the continents containing 
either Argentina or Australia. Order by name of the country.
*/

SELECT name, continent FROM world 
WHERE continent = (SELECT continent FROM world WHERE name = 'Argentina') 
OR continent = (select continent from world where name = 'Australia') 
ORDER by name
