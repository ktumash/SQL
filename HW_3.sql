--1.Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

SELECT employees.employee_name, salary.monthly_salary
FROM employees 
INNER join employee_salary ON employee_salary.employee_id=employees.id
INNER join salary ON employee_salary.salary_id=salary.id;

 --2. Вывести всех работников у которых ЗП меньше 2000.

SELECT employees.employee_name, salary.monthly_salary
FROM employees 
INNER join employee_salary ON employee_salary.employee_id=employees.id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE monthly_salary<2000
order by employees.employee_name;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. 
--(ЗП есть, но не понятно кто её получает.)

SELECT employees.employee_name, salary.monthly_salary
from employees right join
employee_salary ON employee_salary.employee_id=employees.id
right join
salary ON employee_salary.salary_id=salary.id
where employee_name is null;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен.
-- (ЗП есть, но не понятно кто её получает.)

SELECT employees.employee_name, salary.monthly_salary
from employees right join
employee_salary ON employee_salary.employee_id=employees.id
right join
salary ON employee_salary.salary_id=salary.id
where employees.employee_name is null and monthly_salary<2000;

--5.Найти всех работников кому не начислена ЗП.

SELECT employees.employee_name, salary.monthly_salary
from employees left join
employee_salary ON employee_salary.employee_id=employees.id
left join
salary ON employee_salary.salary_id=salary.id
where monthly_salary is null;

--6. Вывести всех работников с названиями их должности.

SELECT employees.employee_name, roles.role_name
FROM employees 
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id;

--7. Вывести имена и должность только Java разработчиков.

SELECT employees.employee_name, roles.role_name
FROM employees 
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
WHERE role_name like '%Java developer';

--8. Вывести имена и должность только Python разработчиков.

SELECT employees.employee_name, roles.role_name
FROM employees 
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
WHERE role_name like '%Python developer';

--9. Вывести имена и должность всех QA инженеров.

SELECT employees.employee_name, roles.role_name
FROM (employees INNER join
roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id)
WHERE role_name like '%QA%';

--10. Вывести имена и должность ручных QA инженеров.

SELECT employees.employee_name, roles.role_name
FROM (employees INNER join
roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id)
WHERE role_name like '%Manual QA%';

--11. Вывести имена и должность автоматизаторов QA

SELECT employees.employee_name, roles.role_name
FROM (employees INNER join
roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id)
WHERE role_name like '%Automation QA%';

--12. Вывести имена и зарплаты Junior специалистов

SELECT employees.employee_name, roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like 'Junior%';

--13. Вывести имена и зарплаты Middle специалистов

SELECT employees.employee_name, roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like '%Middle%';

--14. Вывести имена и зарплаты Senior специалистов

SELECT employees.employee_name, roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like '%Senior%';

--15. Вывести зарплаты Java разработчиков

SELECT roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like '%Java developer%';

--16.Вывести зарплаты Python разработчиков

SELECT roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like '%Python developer%';

--17. Вывести имена и зарплаты Junior Python разработчиков

SELECT employees.employee_name, roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like 'Junior Python%';

--18. Вывести имена и зарплаты Middle JS разработчиков

SELECT employees.employee_name, roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like 'Middle JavaScript%';

--19. Вывести имена и зарплаты Senior Java разработчиков

SELECT employees.employee_name, roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like 'Senior Java developer';

--20. Вывести зарплаты Junior QA инженеров

SELECT roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like 'Junior%QA%';

--21. Вывести среднюю зарплату всех Junior специалистов

SELECT AVG(salary.monthly_salary)
FROM employees 
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like 'Junior%';

--22. Вывести сумму зарплат JS разработчиков

SELECT SUM(salary.monthly_salary)
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like '%JavaScript developer%';

-- 23. Вывести минимальную ЗП QA инженеров

SELECT MIN(salary.monthly_salary)
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like '%QA%';

--24. Вывести максимальную ЗП QA инженеров

SELECT MAX(salary.monthly_salary)
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like '%QA%';

--25. Вывести количество QA инженеров

SELECT count(employee_name)
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
WHERE role_name like '%QA engineer%'

--26. Вывести количество Middle специалистов.

SELECT count(employee_name)
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
WHERE role_name like '%Middle%'

--27. Вывести количество разработчиков

SELECT count(employee_name)
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
WHERE role_name like '%developer%'

--28. Вывести фонд (сумму) зарплаты разработчиков.

SELECT SUM(monthly_salary)
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE role_name like '%developer%';

--29. Вывести имена, должности и ЗП всех специалистов по возрастанию

SELECT DISTINCT employees.employee_name, roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
order by salary.monthly_salary;

--30. Вывести имена, должности и ЗП всех специалистов по возрастанию
--у специалистов у которых ЗП от 1700 до 2300

SELECT DISTINCT employees.employee_name, roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE monthly_salary>1700 and monthly_salary<2300
order by salary.monthly_salary;

--31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов 
--у которых ЗП меньше 2300

SELECT DISTINCT employees.employee_name, roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE monthly_salary<2300
order by salary.monthly_salary;

--32. Вывести имена, должности и ЗП всех специалистов по возрастанию 
--у специалистов у которых ЗП равна 1100, 1500, 2000

SELECT DISTINCT employees.employee_name, roles.role_name, salary.monthly_salary
FROM employees
INNER join roles_employee ON roles_employee.employee_id=employees.id
INNER join roles ON roles_employee.role_id=roles.id
INNER join employee_salary ON employees.id=employee_salary.employee_id
INNER join salary ON employee_salary.salary_id=salary.id
WHERE monthly_salary=1100 or monthly_salary=1500 or monthly_salary=2000
order by salary.monthly_salary;
