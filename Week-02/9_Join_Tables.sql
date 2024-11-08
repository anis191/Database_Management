use dummydb;
/* Join two table without using "JOIN" query */
select employee_id,first_name,employees.department_id,department_name
from employees,departments
where employees.department_id = departments.department_id;

/* Join two table "countries" and "location" table
We need two show location_id,city,country_id from 'locations' table. And show country_name from 'countries' table. 
*/
select location_id,city,locations.country_id,country_name
from locations,countries
where locations.country_id = countries.country_id;

/* Now we join three tables: locations, countries and region */
select location_id,city,locations.country_id,country_name,countries.region_id,region_name
from locations,countries,regions
where locations.country_id = countries.country_id and countries.region_id = regions.region_id;

/* Join two table with using "JOIN" query */
select employee_id,first_name,employees.department_id,department_name
from employees join departments
on employees.department_id = departments.department_id;

select location_id,city,locations.country_id,country_name
from locations join countries
on locations.country_id = countries.country_id;

select location_id,city,locations.country_id,country_name,countries.region_id,region_name
from locations join countries join regions
on locations.country_id = countries.country_id and countries.region_id = regions.region_id;