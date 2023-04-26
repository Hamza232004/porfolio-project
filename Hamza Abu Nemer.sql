--Q10
select Pno ,sum(Hours)As 'Total hours of the project'
from Works_On
group by Pno


--Q11
select pno, count(Essn) AS 'count of employee work in the project'
from Works_On
group by pno 


--Q12
select Dno, count(ssn) AS 'count of employee work in the department'
from Employee
Where Salary>1000
group by Dno 



--update Exs
--Q3
update Works_On
set Hours = 10
where pno=20 and ESSn = '888665555'

--Q4
update Employee
set Salary=60000
where Super_ssn is Null

--Q5
update Project
set Plocation ='Houston'
where Pnumber=4

--Q6
update Employee
set Salary= Salary+ 0.10*salary
where Bdate between '1950' and '1970'

--Q12
Delete from Dependent
where  DATEDIFF(yy,Bdate,GetDate())>18
