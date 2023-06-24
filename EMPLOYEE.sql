create database empolyee_dataset;
use empolyee_dataset;
create table employee(
    smv FLOAT,
    wip VARCHAR(45),
    over_time INT,
    no_of_workers INT,
    month INT,
    actual_productivity FLOAT,
    department VARCHAR(45));
    SELECT * 
    FROM employee;
    SELECT department 
    FROM employee 
    WHERE over_time=(SELECT MAX(over_time) FROM employee);
    SELECT department,SUM(over_time) AS DEPARTMENT_OVERTIME
    FROM employee
    GROUP BY department
    ORDER BY DEPARTMENT_OVERTIME DESC
    LIMIT 1;
    INSERT INTO employee VALUES(15,'700',1000,20,2,0,'IT');
    SELECT department,SUM(over_time) AS DEPARTMENT_OVERTIME
    FROM employee
    GROUP BY department
    ORDER BY DEPARTMENT_OVERTIME DESC;
    SELECT department,SUM(wip) AS MOST_WORK
    FROM employee 
    GROUP BY department
    ORDER BY MOST_WORK DESC
    LIMIT 1;
    SELECT department,SUM(actual_productivity) AS TOTAL_PRODUCTIVITY
    FROM employee
    GROUP BY department
    ORDER BY TOTAL_PRODUCTIVITY DESC
    LIMIT 2;
    SELECT month ,SUM(wip) AS TOTAL_MONTH_WIP
    FROM employee
    GROUP BY month
    ORDER BY month;
    INSERT INTO employee (smv, no_of_workers)VALUES (123, 10);
    SELECT COUNT(*)
    FROM employee;
    