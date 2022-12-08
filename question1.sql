select * from actor

-- question one
select last_name
from actor
where last_name like 'Wah%'
--answer is 2


---number 2
select * from payment
select count(amount)
from payment 
where amount>=3.99 and amount<=5.99;




select * from inventory 

--- question 3
select film_id, count(film_id)
from inventory group by film_id
order by count(film_id) desc
--answer is 8 mulitple film ids





--question 4
select last_name
from actor 
where last_name like 'Will%'
--answer is 0

--question 5

select * from rental

select staff_id, count(staff_id)
from rental group by staff_id 
order by count(staff_id) desc limit 1
-- 1 8040

--question 6


select * from address 

select count(distinct district)
from address  
-- 378

--question 7

select * from film_actor 

select film_id, count(actor_id)
from film_actor group by film_id
order by count(actor_id) desc 
-- film id 508 actors 15

--question 8

select * from customer

select count(store_id)
from customer 
where last_name like '%es' and store_id = 1
-- answer 13


--question 9
select * from payment

select amount, count(amount)
from payment
where customer_id >=380 and customer_id <=430 
group by amount having count(amount)>250

--3


--question 10
select * from film

select count(distinct rating)
from film

--5

select rating, count(rating)
from film group by rating
order by count desc
-- pg 13 223





