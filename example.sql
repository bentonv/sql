
/*small example database*/
USE[Example]
GO
/*
CREATE TABLE employees (
    emp_no      INT PRIMARY KEY IDENTITY,            
    birth_date  DATE,           
    first_name  VARCHAR(14),    
    last_name   VARCHAR(16),     
    hire_date   DATE,            
                    
);
*/
CREATE TABLE salaries (
    emp_no      INT PRIMARY KEY IDENTITY,     
    salary      INT,    
    from_date   DATE,   
    to_date     DATE,  
    emp_num		INT FOREIGN KEY REFERENCES employees(emp_no)
);
