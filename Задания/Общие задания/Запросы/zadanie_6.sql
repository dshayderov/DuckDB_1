select
timezone, count(city) as city_count from city
group by timezone
order by city_count DESC;