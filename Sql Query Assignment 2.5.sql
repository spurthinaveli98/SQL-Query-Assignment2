



select count(distinct film.film_id) from rental 
inner join customer on customer.customer_id=rental.customer_id

inner join inventory on rental.inventory_id=inventory.inventory_id
inner join film on inventory.film_id=film.film_id 

where customer.first_name='susan' and customer.last_name='wilson' and  film.rating='R';