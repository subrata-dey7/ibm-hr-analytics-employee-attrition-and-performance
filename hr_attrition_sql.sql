
-- --------- IBM_HR_ANALYTICS_EMPLOYEE_ATTRITION_AND_PERFORMANCE -----------

-- Check Data by Loading the Dataset
	select * from hr_employee_attrition limit 10;

--  1) Rank Employees by Monthly Income Within Each Job Role
	select 
		EmployeeNumber, 
		JobRole,
		MonthlyIncome,
		Rank() over(
			partition by JobRole
			order by MonthlyIncome desc
			) as income_rank		-- Salary rank within job role
	from hr_employee_attrition;
    
    
-- 2) How many employees left vs stayed in the organization?
	select 
		Attrition,						-- Attrition status (Yes / No)
        count(*) as employee_count		-- Number of employees in each group
	from hr_employee_attrition
    group by Attrition;					-- Group by attrition status
    
    
-- 3) Which departments have the highest attrition count?
	select
		Department,
        count(*) as attrition_count
	from hr_employee_attrition
    where Attrition = 'Yes'
    group by Department
    order by attrition_count desc;
   
   
-- 4) Top 3 Departments with the Highest Attrition Count
	select 
		Department,
        count(*) as total_employees,
        sum(case when Attrition = 'Yes' then 1 else 0 end) as attrition_count,
        dense_rank() over(
			order by sum(case when Attrition = 'Yes' then 1 else 0 end) desc
			) as dept_rank
	from hr_employee_attrition
    group by Department
    order by dept_rank
    limit 3;
    
    
-- 5) Compare average monthly income for employees who left vs stayed
	select 
		Attrition, 
        round(avg(MonthlyIncome),2)	 -- upto 2 decimal places
        as avg_monthly_income
	from hr_employee_attrition
    group by Attrition;
    
    
-- 6) Which job roles have the highest attrition rate (%)?
	select 
		JobRole,
		Round(
			sum(case when Attrition = 'Yes' then 1 else 0 end) * 100.0 / count(*), 2
        ) as att_rate_perc
	from hr_employee_attrition
    group by JobRole
    order by att_rate_perc desc;
    
    
-- 7) How does work-life balance differ for employees who left vs stayed?
	select
		WorkLifeBalance,
        Attrition,
        count(*) as employee_count
	from hr_employee_attrition
    group by WorkLifeBalance, Attrition
    order by WorkLifeBalance;
    
    
-- 8) Top 5 Job Roles with the Lowest Average Job Satisfaction
	select
		JobRole,
        round(avg(JobSatisfaction), 2) as avg_job_satis,
        rank() over(
			order by avg(JobSatisfaction) asc
        ) as satis_rank
	from hr_employee_attrition
    group by JobRole
    order by satis_rank
    limit 5;
    
    
-- 9) How does attrition vary across different education levels?
	select Education, Attrition, count(*) as employee_count
    from hr_employee_attrition
    group by Education, Attrition
    order by Education;
    
    
-- 10) What is the average age of employees who left vs stayed?
	select Attrition, round(avg(Age), 2) as avg_age
    from hr_employee_attrition
    group by Attrition;
    
             

    