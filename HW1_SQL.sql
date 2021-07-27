#1
select dest, distance
from flights
where distance = (select max(distance) from flights)
limit 1;

#2
SELECT engines, max(seats) FROM planes
group by engines;

#3
select count(*) from flights as total_numb_of_flights;
#336776

#4
select carrier, count(flight) 
from flights as total_numb_of_flights
group by carrier;

#5
select carrier, count(*) 
from flights 
group by carrier
order by count(*) desc;

#6
select carrier, count(*) 
from flights 
group by carrier
order by count(*) desc
limit 5;

#7
select carrier, count(*) 
from flights 
where distance >= 1000
group by carrier
order by count(*) desc
limit 5;

#8
#What are the top delayed  ailine and at which airport do they have the most delays longer than 15 min.
SELECT carrier,origin,count(origin)
FROM flights
where dep_delay > 15
group by carrier, origin
order by count(origin) desc
limit 5;




