select round(sum(case when temp.mindate+1=a.event_date then 1 else 0 end)/count(distinct a.player_id),2) as fraction
from (select player_id,min(event_date) as mindate from Activity group by player_id) as temp
join Activity a on a.player_id = temp.player_id;