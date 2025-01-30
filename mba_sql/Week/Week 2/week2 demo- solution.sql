/*#511. Game Play Analysis I */
/*
/* MySQL Query: */
select a.player_id, min(a.event_date) as first_login
from Activity a
group by a.player_id

/*#596. Classes More Than 5 Students 

/* MySQL Query */
select class
from courses
group by class
having count(distinct student) >= 5

/*#1050. Actors and Directors Who Cooperated At Least Three Times 
/* MySQL Query */
select actor_id, director_id
from ActorDirector
group by actor_id, director_id
having count(*) >= 3