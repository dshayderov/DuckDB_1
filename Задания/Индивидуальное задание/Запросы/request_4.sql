create table books as select * from read_csv_auto('./books.csv');
copy(
select authors, (sum(average_rating) / count(title)) as rating from books where length(authors) < 50
group by authors order by rating desc limit 10) to 'request_4.csv' (header, delimiter ',');
copy(
select authors, (sum(average_rating) / count(title)) as rating from books where length(authors) < 50
group by authors order by rating desc limit 10) to 'request_4.json';