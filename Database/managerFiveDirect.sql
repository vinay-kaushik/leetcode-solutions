with t as (
select e1.name from employee e1, employee e2
    where e1.id=e2.ManagerId and e1.name!=e2.name)
    
select name from t group by name having count(name)>=5;