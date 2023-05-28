SELECT*
FROM [SQL Portfolio Project].[dbo].[CovidSummary]
ALTER TABLE CovidSummary
DROP COLUMN continent

--select data that I will be using

SELECT location, date, total_cases, new_cases, total_deaths, population
FROM CovidSummary
ORDER BY 1,2

--looking at total deaths vs total cases

SELECT location, date, total_cases, total_deaths
FROM CovidSummary
WHERE location='United Kingdom'
ORDER BY 1,2 

--looking at total cases in the United Kingdom vs population

SELECT location, date, total_cases, population
FROM CovidSummary
WHERE location='United Kingdom'
ORDER BY 1,2 

--showing countries with highest death count per population
SELECT location, MAX(CAST(total_deaths as int)) as totaldeathcount
FROM [SQL Portfolio Project].[dbo].[CovidSummary]
GROUP BY location
ORDER BY totaldeathcount desc

--total deaths count by continent
SELECT location, MAX(CAST(total_deaths as int)) as totaldeathcount
FROM [SQL Portfolio Project].[dbo].[CovidSummary]
WHERE location = 'Asia' OR location = 'Europe' OR location = 'Africa' OR location = 'European Union' OR location = 'South America' OR location = 'North America'
                  OR location = 'World'
GROUP BY location
ORDER BY totaldeathcount desc

--global numbers

SELECT SUM(CAST(new_cases as int)) as total_cases, SUM(CAST(new_deaths as int)) as total_deaths
FROM [SQL Portfolio Project].[dbo].[CovidSummary]
WHERE location='World'

-- total population vs vaccinations

SELECT location, population, date, new_vaccinations
FROM [SQL Portfolio Project].[dbo].[CovidSummary]
WHERE location = 'united kingdom'
ORDER BY 1,2 desc

SELECT location, SUM(CAST(total_deaths as int)) as totaldeaths
FROM [SQL Portfolio Project].[dbo].[CovidSummary]
WHERE location = 'united kingdom'
GROUP BY location

-










