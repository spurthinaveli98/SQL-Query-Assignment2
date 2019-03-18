select category.name ,count(category.name) from rental 
inner join customer on customer.customer_id=rental.customer_id
inner join inventory on rental.inventory_id=inventory.inventory_id
inner join film on inventory.film_id=film.film_id 
inner join film_category  on film.film_id=film_category.film_id 
inner join category on film_category.category_id=category.category_id 
where customer.first_name='PATRICIA' and customer.last_name='JOHNSON'
GROUP BY category.name
ORDER BY count(category.name) DESC
limit 3;

