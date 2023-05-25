create table books as select * from read_csv_auto('./books.csv');
copy(
select title, ratings_count from books
order by ratings_count desc limit 5) to 'request_2.csv' (header, delimiter ',');
copy(
select title, ratings_count from books
order by ratings_count desc limit 5) to 'request_2.json';