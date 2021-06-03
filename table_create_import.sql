CREATE TABLE Employees (
  emp_no int NOT NULL,
  emp_title_id varchar(50),
  birth_date DATE,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  sex VARCHAR(255),
  hire_date DATE,	
  CONSTRAINT pk_emp_no PRIMARY KEY (Emp_no)
);


CREATE TABLE salaries (
  emp_no int NOT NULL,
  salary int ,	
  FOREIGN KEY (Emp_no) REFERENCES  Employees (Emp_no)
);


CREATE TABLE dept_manager (
  emp_no int NOT NULL,
  dept_no varchar(255) ,	
  PRIMARY KEY (emp_no),
  FOREIGN KEY (Emp_no) REFERENCES  Employees (Emp_no)
);


CREATE TABLE title (
  title_id varchar(255) NOT NULL,
  title varchar(255)
);


CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no varchar(255),
  FOREIGN KEY (Emp_no) REFERENCES  Employees (Emp_no)
);


CREATE TABLE dept (
  dept_no varchar(255) NOT NULL,
  dept_name varchar(255)
);


COPY Employees (emp_no,emp_title_id,birth_date,first_name,last_name,sex,hire_date)
FROM 'C:\Users\uptikool\Desktop\DataViz-Class\homework\WEEK9\data\employees.csv'
DELIMITER ','
CSV HEADER;


COPY salaries (emp_no,salary)
FROM 'C:\Users\uptikool\Desktop\DataViz-Class\homework\WEEK9\data\salaries.csv'
DELIMITER ','
CSV HEADER;


COPY dept_manager (dept_no,emp_no)
FROM 'C:\Users\uptikool\Desktop\DataViz-Class\homework\WEEK9\data\dept_manager.csv'
DELIMITER ','
CSV HEADER;


COPY title (title_id,title)
FROM 'C:\Users\uptikool\Desktop\DataViz-Class\homework\WEEK9\data\titles.csv'
DELIMITER ','
CSV HEADER;


COPY dept_emp (emp_no,dept_no)
FROM 'C:\Users\uptikool\Desktop\DataViz-Class\homework\WEEK9\data\dept_emp.csv'
DELIMITER ','
CSV HEADER;


COPY dept (dept_no,dept_name)
FROM 'C:\Users\uptikool\Desktop\DataViz-Class\homework\WEEK9\data\departments.csv'
DELIMITER ','
CSV HEADER;
