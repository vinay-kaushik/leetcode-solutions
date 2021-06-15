select dep.name Department ,emp.name Employee , (emp.salary) Salary from
employee emp,department dep 
where emp.departmentid=dep.id
and (emp.departmentid,emp.salary) in (select departmentid,max(salary) from employee group by departmentid);