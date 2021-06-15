select player_id,device_id from 
(
select player_id,device_id ,
    rank() over (partition by player_id order by event_date) rnk  from activity
) temp
where temp.rnk=1
;