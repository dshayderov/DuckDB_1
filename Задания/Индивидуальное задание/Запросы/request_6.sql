create table books as select * from read_csv_auto('./books.csv');
copy(
select title, language_code as language, num_pages from books
where length(title) < 50 and language_code in ('fre', 'spa') and num_pages > 500
limit 15) to 'request_6.csv' (header, delimiter ',');
copy(
select title, language_code as language, num_pages from books
where length(title) < 50 and language_code in ('fre', 'spa') and num_pages > 500
limit 15) to 'request_6.json';