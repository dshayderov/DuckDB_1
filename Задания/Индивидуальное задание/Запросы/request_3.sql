create table books as select * from read_csv_auto('./books.csv');
copy(
select language_code as language, count(title) as book_count from books
group by language) to 'request_3.csv' (header, delimiter ',');
copy(
select language_code as language, count(title) as book_count from books
group by language) to 'request_3.json';