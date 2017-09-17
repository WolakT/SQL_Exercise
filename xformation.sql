Select country.name, sum(Population) as overall from country  inner join city 
where city.CountryId = country.countryID
group by country.CountryId having overall>400;
Select country.name from country left join (city) on(city.CountryId = country.countryId)
where cityId not in (select CityId from building);