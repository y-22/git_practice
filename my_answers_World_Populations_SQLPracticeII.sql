------ 3 ------

SELECT COUNT(*)
FROM countries
WHERE lower(continent) = 'africa';

------ 4 ------

SELECT countries.continent, SUM(population_years.population) AS Population_number
FROM countries
INNER JOIN population_years
ON countries.id = population_years.country_id
WHERE countries.continent = 'Oceania' AND population_years.year = '2005';

------ 5 ------

SELECT countries.continent, AVG(population_years.population) AS AVG_Population_number
FROM countries
INNER JOIN population_years
ON countries.id = population_years.country_id
WHERE countries.continent = 'South America' AND population_years.year = '2003';

------ 6 ------

SELECT countries.name, population_years.population
FROM countries
INNER JOIN population_years
ON countries.id = population_years.country_id
WHERE population_years.year = '2007' AND population_years.population IS NOT NULL
ORDER BY population_years.population ASC
LIMIT 1;

------ 7 ------

SELECT countries.name, AVG(population_years.population) AS AVG_Population_number
FROM countries
INNER JOIN population_years
ON countries.id = population_years.country_id
WHERE countries.name = 'Poland';

------ 8 ------

SELECT COUNT(*)
FROM countries
WHERE name LIKE '%The%';

------ 9 ------

SELECT countries.continent, SUM(population_years.population) AS Population_number
FROM countries
INNER JOIN population_years
ON countries.id = population_years.country_id
WHERE year = '2010'
GROUP BY 1
ORDER BY 2 DESC;