select * from film limit 10; 
select last_name, first_name from actor
where last_name like'BER%';
select distinct first_name from actor
where first_name like '%Y'
order by first_name ASC;
insert into customer (customer_id, store_id, first_name, last_name, email, address_id, active)
values (631, 2, 'TESTOWY', 'TEST', 'testowy@gmail.com', 10, 1);
insert into customer (customer_id, store_id, first_name, last_name, email, address_id, active)
values (632, 2, 'DŻONY', 'MIELONY', 'dzonytestowy@gmail.com', 10, 1);
delete from customer where first_name='DŻONY';
update address set address2= 'polskagurom';
select customer.first_name, customer.last_name, rental.rental_date, rental.return_date
from customer
join rental
on customer.store_id=rental.customer_id;
select customer.first_name, customer.last_name, rental.rental_date, rental.return_date
from customer
inner join rental
on customer.store_id=rental.customer_id;
select customer.first_name, customer.last_name, rental.rental_date, rental.return_date
from customer
left join rental
on customer.store_id=rental.customer_id;
select customer.first_name, customer.last_name, rental.rental_date, rental.return_date
from customer
join rental
on customer.store_id=rental.customer_id
where rental.return_date is null;
