 select  count( distinct film.film_id),first_name,last_name from film 
 inner join film_category  on film.film_id=film_category.film_id 
 inner join category on film_category.category_id=category.category_id
 inner join inventory on inventory.film_id=film.film_id 
 inner join rental on rental.inventory_id=inventory.inventory_id
 inner join staff on staff.staff_id=rental.staff_id
 where category.name='sci-fi' and staff.first_name='jon'and staff.last_name='stephens';