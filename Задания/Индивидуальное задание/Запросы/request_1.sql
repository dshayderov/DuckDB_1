create table books as select * from read_csv_auto('./books.csv');
copy (select title, authors, average_rating from books
where length(title) < 50 order by average_rating
DESC
limit 10) to 'request_1.csv' (header, delimiter ',');
copy (select title, authors, average_rating from books
where length(title) < 50 order by average_rating
DESC
limit 10) to 'request_1.json';