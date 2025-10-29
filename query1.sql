Select * from movies where year > 2000;
select last_name from actors where last_name like '%s';
select rankscore, year from movies where rankscore between 5 and 7 and year between 2004 and 2006;
select count(*) AS rankscore_6 from movies where rankscore = '6';