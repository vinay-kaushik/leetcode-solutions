WITH temp
AS
( 
  SELECT
        dep.Name AS Department,
        emp.Name AS Employee,
        Salary,
        DENSE_RANK() OVER (PARTITION BY
                         DepartmentId
                     ORDER BY
                         Salary DESC
                    ) SalaryRank
    FROM
        Employee emp , department dep
where emp.DepartmentId = dep.Id
)
SELECT Department, Employee, Salary
FROM temp
WHERE SalaryRank <= 3;