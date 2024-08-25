# Write your MySQL query statement below
select D.name as Department , E.name As Employee ,Salary
from Employee  E join Department D
on E.departmentId=D.id
where (departmentId , Salary) 
IN
(
    select departmentId, max(Salary)
    from Employee
    Group by departmentId
)