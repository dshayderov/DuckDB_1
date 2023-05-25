select timezone, count(city) as city_count from read_csv_auto('./city.csv')
where federal_district in ('Приволжский','Сибирский')
group by timezone
order by timezone ASC;