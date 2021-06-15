CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
      # Write your MySQL query statement below.
      select distinct salary from (
      select id,salary,dense_rank() over (order by salary desc) salary_rank from employee) r
     where r.salary_rank=N
  );
END