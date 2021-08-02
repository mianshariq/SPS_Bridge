drop table VIDEOS;

CREATE TABLE VIDEOS(
ID INT(10) not null, 
title varchar(360),
runtime time,
url_if varchar(100) Unique);

insert into videos(ID,title, runtime,url_if)
VALUES(1,"Hulk Saves Iron Man - Final Battle Scene","01:26","https://www.youtube.com/watch?v=U0USJJZk3GQ"),
(2,"World Record Domino Robot","15:57","https://www.youtube.com/watch?v=8HEfIJlcFbs"),
(3,"Liquid Sand Hot Tub- Fluidized air bed","09:08","https://www.youtube.com/watch?v=My4RA5I0FKs");

drop table reviews;

CREATE TABLE REVIEWS(
reviews_ID INT(10) not null,
userid varchar(12) null, 
ratings float(10),
text_review varchar(36));

insert into reviews(reviews_ID, userid, ratings,text_review)
VALUES(1,"23434","4.7","Hulk is Awesome"),
(2,"345435","3.8","lots of Dominoes"),
(3,"45656","4.9","great science");

select * from videos
left join reviews
on ID=reviews_ID;

