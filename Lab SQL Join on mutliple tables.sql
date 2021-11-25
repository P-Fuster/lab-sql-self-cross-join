-- Lab | SQL Self and cross join
-- 1. Get all pairs of actors that worked together.
select A1.actor_id, A2.actor_id, A1.film_id, f.title from film_actor A1
join fil m_actor A2
on A1.actor_id <> A2.actor_id
and A1.film_id = A2.film_id
join film f
on A1.film_id = f.film_id
order by A1.actor_id;

-- 2. Get all pairs of customers that have rented the same film more than 3 times.
select a1.customer_id, a2.customer_id,i.inventory_id, i.film_id from customer a1
join customer a2
on a1.customer_id <> a2.customer_id
join rental r 
on a1.customer_id = r.customer_id
and a2.customer_id = r.customer_id
join inventory i
on r.inventory_id = i.inventory_id;


-- 3. Get all possible pairs of actors and films.
select f.title, a.first_name, a.last_name from sakila.actor a
cross join sakila.film f;