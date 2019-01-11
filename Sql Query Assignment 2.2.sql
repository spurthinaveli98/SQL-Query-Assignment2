

select count(*) from film
inner join inventory on film.film_id=inventory.film_id
inner join store on inventory.store_id=store.store_id
inner join staff on store.store_id=staff.store_id
inner join film_category on film.film_id=film_category.film_id
inner join category on film_category.category_id=category.category_id
where category.name='Sci-Fi' and staff.first_name='Jon' and staff.last_name='Stephens';

