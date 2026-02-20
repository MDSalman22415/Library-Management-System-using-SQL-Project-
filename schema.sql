--Library Management System

-- creating branch table


CREATE TABLE branch (
    branch_id VARCHAR(10) PRIMARY KEY,
    manager_id VARCHAR(10) NOT NULL,
    branch_address VARCHAR(200) NOT NULL,
    contact_no VARCHAR(15) NOT NULL
);

--create employees table
CREATE TABLE employees (
emp_id VARCHAR (25)PRIMARY KEY,
emp_name VARCHAR (25),
position VARCHAR (25),
salary INT ,
branch_id VARCHAR (25)
);


DROP TABLE IF EXISTS KEY,
CREATE TABLE books(
isbn  VARCHAR (20)PRIMARY KEY,
book_title	VARCHAR (76),
category	VARCHAR (10),
rental_price  FLOAT,
status	VARCHAR(15),
author	VARCHAR(35),
publisher VARCHAR (55)
);

DROP TABLE IF EXISTS members;
CREATE TABLE members(
member_id VARCHAR(10)PRIMARY KEY,
member_name VARCHAR (25),
member_address VARCHAR(75),
reg_date DATE
);


CREATE TABLE issued_status(
issued_id VARCHAR (10) PRIMARY KEY,
issued_member_id VARCHAR (10), --FK
issued_book_name VARCHAR (75), 
issued_date	DATE,
issued_book_isbn VARCHAR (25), --FK
issued_emp_id VARCHAR (25)  --FK
);

DROP TABLE EXISTS return_status;
CREATE TABLE return_status(
return_id VARCHAR (10) PRIMARY KEY,
issued_id	VARCHAR (10), FK 
return_book_name VARCHAR (75),
return_date DATE,
return_book_isbn  VARCHAR (20) FK-
);


--FOREIGN KEY
ALTER TABLE issued_status
ADD CONSTRAINT fk_members
FOREIGN KEY (issued_member_id)
REFERENCES members(member_id);

ALTER TABLE issued_status
ADD CONSTRAINT fk_books
FOREIGN KEY (issued_book_isbn)
REFERENCES books(isbn);

ALTER TABLE issued_status
ADD CONSTRAINT fk_employees
FOREIGN KEY (issued_emp_id)
REFERENCES employees(emp_id)





ALTER TABLE return_status
ADD CONSTRAINT fk_retuns
FOREIGN KEY (issued_id)
REFERENCES  issued_status(issued_id);












