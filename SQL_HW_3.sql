select employee_name, monthly_salary
from employee_salary 
join employees on employee_id=employees.id 
join salary on salary_id=salary.id 
where monthly_salary notnull 

select employee_name
from employee_salary 
join employees on employee_id=employees.id 
join salary on salary_id=salary.id 
where monthly_salary<2000

select monthly_salary
from employee_salary 
left join employees on employee_id=employees.id 
join salary on salary_id=salary.id 
where employee_name is null

select monthly_salary
from employee_salary 
left join employees on employee_id=employees.id 
join salary on salary_id=salary.id 
where employee_name is null and monthly_salary<2000

select employee_name
from employees 
left join employee_salary on employee_id=employees.id 
where salary_id is null 

select employee_name, role_name 
from employees 
join roles_employee on employees.id=employee_id
join roles on role_id=roles.id 

select employee_name, role_name 
from employees 
join roles_employee on employees.id=employee_id
join roles on role_id=roles.id 
where role_name like '%Java%' and role_name not like '%JavaScript%'

select employee_name, role_name 
from employees 
join roles_employee on employees.id=employee_id
join roles on role_id=roles.id 
where role_name like '%Python%'

select employee_name, role_name 
from employees 
join roles_employee on employees.id=employee_id
join roles on role_id=roles.id 
where role_name like '%QA%'

select employee_name, role_name 
from employees 
join roles_employee on employees.id=employee_id
join roles on role_id=roles.id 
where role_name like '%Manual_QA%'

select employee_name, role_name 
from employees 
join roles_employee on employees.id=employee_id
join roles on role_id=roles.id 
where role_name like '%Automation_QA%'

select employee_name, role_name 
from employees 
join roles_employee on employees.id=employee_id
join roles on role_id=roles.id 
where role_name like 'Junior%'

select employee_name, role_name 
from employees 
join roles_employee on employees.id=employee_id
join roles on role_id=roles.id 
where role_name like 'Middle%'

select employee_name, role_name 
from employees 
join roles_employee on employees.id=employee_id
join roles on role_id=roles.id 
where role_name like 'Senior%'

select monthly_salary 
from salary 
join employee_salary on salary.id=salary_id 
join roles_employee on employee_salary.employee_id =roles_employee.employee_id 
join roles on role_id=roles.id
where role_name like '%Java%' and role_name not like '%JavaScript%'

select monthly_salary 
from salary 
join employee_salary on salary.id=salary_id 
join roles_employee on employee_salary.employee_id =roles_employee.employee_id 
join roles on role_id=roles.id
where role_name like '%Python%' 

select monthly_salary 
from salary 
join employee_salary on salary.id=salary_id 
join roles_employee on employee_salary.employee_id =roles_employee.employee_id 
join roles on role_id=roles.id
where role_name like '%Middle JavaScript%' 

select monthly_salary 
from salary 
join employee_salary on salary.id=salary_id 
join roles_employee on employee_salary.employee_id =roles_employee.employee_id 
join roles on role_id=roles.id
where role_name like '%Senior Java%' 

select monthly_salary
from salary 
join employee_salary on salary.id=salary_id 
join roles_employee on employee_salary.employee_id =roles_employee.employee_id 
join roles on role_id=roles.id
where role_name like '%Junior%QA%' 

select AVG(monthly_salary)
from salary 
join employee_salary on salary.id=salary_id 
join roles_employee on employee_salary.employee_id =roles_employee.employee_id 
join roles on role_id=roles.id
where role_name like '%Junior%' 

select SUM(monthly_salary)
from salary 
join employee_salary on salary.id=salary_id 
join roles_employee on employee_salary.employee_id =roles_employee.employee_id 
join roles on role_id=roles.id
where role_name like '%JavaScript%' 

select MIN(monthly_salary)
from salary 
join employee_salary on salary.id=salary_id 
join roles_employee on employee_salary.employee_id =roles_employee.employee_id 
join roles on role_id=roles.id
where role_name like '%QA%' 

select MAX(monthly_salary)
from salary 
join employee_salary on salary.id=salary_id 
join roles_employee on employee_salary.employee_id =roles_employee.employee_id 
join roles on role_id=roles.id
where role_name like '%QA%' 

select COUNT(employee_name) as count_qa
from employees 
join roles_employee on employee_id=employees.id 
join roles on role_id=roles.id 
where role_name like '%QA%'

select COUNT(employee_name) as count_middle 
from employees 
join roles_employee on employee_id=employees.id 
join roles on role_id=roles.id 
where role_name like '%Middle%'

select COUNT(employee_name) as count_dev
from employees 
join roles_employee on employee_id=employees.id 
join roles on role_id=roles.id 
where role_name like '%developer%'

select SUM(monthly_salary) 
from salary 
where monthly_salary in (select monthly_salary from salary 
join employee_salary on salary.id=salary_id 
join roles_employee on employee_salary.employee_id =roles_employee.employee_id 
join roles on role_id=roles.id 
where role_name like '%developer%')

select employee_name, role_name, monthly_salary
from employees 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on role_id=roles.id
join employee_salary on employee_salary.employee_id=employees.id
join salary on salary_id=salary.id 
order by monthly_salary 

select employee_name, role_name, monthly_salary
from employees 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on role_id=roles.id
join employee_salary on employee_salary.employee_id=employees.id
join salary on salary_id=salary.id 
where monthly_salary >=1700 and monthly_salary<=2300
order by monthly_salary 

select employee_name, role_name, monthly_salary
from employees 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on role_id=roles.id
join employee_salary on employee_salary.employee_id=employees.id
join salary on salary_id=salary.id 
where monthly_salary<2300
order by monthly_salary 

select employee_name, role_name, monthly_salary
from employees 
join roles_employee on roles_employee.employee_id=employees.id 
join roles on role_id=roles.id
join employee_salary on employee_salary.employee_id=employees.id
join salary on salary_id=salary.id 
where  monthly_salary=1100 or monthly_salary=1500 or monthly_salary=2000 
order by monthly_salary 


