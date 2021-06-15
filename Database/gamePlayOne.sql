select player_id , event_date as first_login from 
(
    select player_id, event_date ,
    rank() over ( partition by player_id order by event_date) as rnk
    from activity 
) temp 

where temp.rnk=1;