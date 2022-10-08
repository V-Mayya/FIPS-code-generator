-- import data from three tables: 'other', 'countries' and 'statecode', each of which contain the stated columns below: 

-- County name from city name, state name (table has has three columns: city name, state name which is state full and county name) 
SELECT * from other WHERE city = " " and `state full` = " ";

-- Fips code where columns include 'Name' which is the county name and state is the state code 
SELECT FIPS, Name from countries WHERE state = " " and Name = " ";

-- states and state codes (has 2 columns: abbreviation - [e.g: AL, AP, etc.] and corresponding state names)
SELECT * from statecode;  

-- Creating variable names for city name and state name as user's input from excel sheet
SET @city_name = " ";
SET @state_name = " ";

-- using inputs of state and city name to get final output of county name (which is 'Name') and FIPS code 
SELECT FIPS, Name from countries WHERE state IN (SELECT abbreviation FROM statecode WHERE name = @state_name) and Name IN (SELECT county from other WHERE city = @city_name and `state full` = @state_name);

