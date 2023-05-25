create table books as select * from read_csv_auto('./books.csv');
copy(
select title, text_reviews_count from books
where length(title) < 50 and text_reviews_count between 1000 and 2000 limit 15) to 'request_5.csv' (header, delimiter ',');
copy(
select title, text_reviews_count from books
where length(title) < 50 and text_reviews_count between 1000 and 2000 limit 15) to 'request_5.json';