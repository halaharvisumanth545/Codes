CREATE TABLE employees(
 emp_id int,
 name VARCHAR(50),
 dept_id int,
 salary int
);
INSERT INTO employees VALUES (1, 'Ram', 1, 5000);
INSERT INTO employees VALUES (2, 'Mary', 2, 6000);
INSERT INTO employees VALUES (3, 'Johnson', 1, 5500);
INSERT INTO employees VALUES (4, 'David', 2, 7000);
SELECT * FROM employees;
DELIMITER //
CREATE PROCEDURE GetHighestPaidEmployee()
BEGIN
    SELECT 
        e.name,
        e.dept_id,
        e.salary
    FROM 
        employees e
    WHERE 
        e.salary = (SELECT MAX(salary) FROM employees);
END //
DELIMITER ;
 call GetHighestPaidEmployee();




CREATE TABLE item_master (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(255),
    balance_stock INT
);
INSERT INTO item_master VALUES (1, 'A', 100);
INSERT INTO item_master VALUES (2, 'B', 200);
INSERT INTO item_master VALUES (3, 'C', 300);
SELECT * FROM item_master;
CREATE TABLE item_transaction (
    transaction_id INT PRIMARY KEY,
    item_id INT,
    quantity INT
);
INSERT INTO item_transaction VALUES (1, 1, 20);
INSERT INTO item_transaction VALUES (2, 2, 50);
INSERT INTO item_transaction VALUES (3, 1, 10);
INSERT INTO item_transaction VALUES (4, 3, 30);
SELECT * FROM item_transaction;
DELIMITER //
CREATE PROCEDURE update_balance_stock(IN p_item_id INT,IN p_quantity INT)
BEGIN
    DECLARE v_existing_balance INT;
    SELECT balance_stock INTO v_existing_balance
    FROM item_master
    WHERE item_id = p_item_id;
    IF v_existing_balance IS NOT NULL THEN
        UPDATE item_master
        SET balance_stock = balance_stock - p_quantity
        WHERE item_id = p_item_id;
    ELSE
        INSERT INTO item_master (item_id, balance_stock)
        VALUES (p_item_id, -p_quantity); 
    END IF;
END //
DELIMITER ;
CALL update_balance_stock(1, 5); 
SELECT * FROM item_master;



CREATE TABLE employees1 (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(255),
    salary DECIMAL(10, 2)
);
INSERT INTO employees1 (employee_name, salary) VALUES
('Pandu', 5000.00),
('Kittu', 6000.00),
('Deepu', 5500.00);
DELIMITER //
CREATE PROCEDURE display_employee_salary()
BEGIN
    DECLARE emp_id INT;
    DECLARE emp_name VARCHAR(255);
    DECLARE emp_salary DECIMAL(10, 2);
    DECLARE emp_cursor CURSOR FOR
        SELECT employee_id, employee_name, salary FROM employees1;
    OPEN emp_cursor;
    emp_loop: LOOP
        FETCH emp_cursor INTO emp_id, emp_name, emp_salary;
        IF emp_id IS NULL THEN
            LEAVE emp_loop;
        END IF;
        SELECT CONCAT('Employee ID: ', emp_id, ', Name: ', emp_name, ', Salary: ', emp_salary) AS Employee_Details;
    END LOOP;
    CLOSE emp_cursor;
END //
DELIMITER ;
CALL display_employee_salary();


CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    position VARCHAR(255)
);

INSERT INTO employee (id, name, position) VALUES
(1, 'Hema', 'Developer'),
(2, 'Ramu', 'Manager'),
(3, 'Manu', 'Manager'),
(4, 'Sushma', 'Tester'),
(5, 'Charitha', 'Analyst'),
(6, 'Keerthi', 'Developer');

DELIMITER //

CREATE PROCEDURE GetManagersAndAnalysts()
BEGIN
    -- Declare variable for the loop
    DECLARE done BOOLEAN DEFAULT FALSE;

    -- Declare variables for cursor
    DECLARE employee_id INT;
    DECLARE employee_name VARCHAR(255);
    DECLARE employee_position VARCHAR(255);

    -- Declare cursor
    DECLARE employee_cursor CURSOR FOR
        SELECT id, name, position
        FROM employee
        WHERE position IN ('Manager', 'Analyst');

    -- Declare continue handler
    DECLARE CONTINUE HANDLER FOR NOT FOUND
        SET done = TRUE;

    -- Open the cursor
    OPEN employee_cursor;

    -- Fetch data from the cursor
    FETCH employee_cursor INTO employee_id, employee_name, employee_position;

    -- Start looping through the cursor data
    WHILE NOT done DO
        -- Display the employee information
        SELECT employee_id, employee_name, employee_position;

        -- Fetch the next row
	    fetch employee_cursor into employee_id, employee_name, employee_position;
    END WHILE;

    -- Close the cursor
    CLOSE employee_cursor;
END //

DELIMITER ;

-- Call the stored procedure
CALL GetManagersAndAnalysts();



CREATE TABLE employee1 (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(255),
    job_title VARCHAR(255),
    department_number INT
);
INSERT INTO employee1 (employee_name, job_title, department_number) VALUES
('David', 'Clerk', 10),
('John', 'Manager', 20),
('Sushu', 'Analyst', 30),
('Mary', 'Clerk', 10),
('Praveen', 'Developer', 20);
DELIMITER //
CREATE PROCEDURE find_employee_by_job_dept1(IN job_title_param VARCHAR(255), IN dept_number_param INT)
BEGIN
    DECLARE emp_id INT;
    DECLARE emp_name VARCHAR(255);
    DECLARE emp_job_title VARCHAR(255);
    DECLARE emp_dept_no INT;
    DECLARE emp_cursor CURSOR FOR
        SELECT employee_id, employee_name, job_title, department_number
        FROM employee1
        WHERE job_title = job_title_param AND department_number = dept_number_param;
    OPEN emp_cursor;
    emp_loop: LOOP
        fetch emp_cursor INTO emp_id, emp_name, emp_job_title, emp_dept_no;
        IF emp_id IS NULL THEN
            LEAVE emp_loop;
        END IF;
        SELECT CONCAT('Employee ID: ', emp_id, ', Name: ', emp_name, ', Job Title: ', emp_job_title, ', Department Number: ', emp_dept_no) AS Employee_Details;
    END LOOP;
    CLOSE emp_cursor;
END //
DELIMITER ;
CALL find_employee_by_job_dept1('Manager', 20);


CREATE TABLE emp4 (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(255),
    salary DECIMAL(10, 2)
);
INSERT INTO emp4 (emp_name, salary) VALUES
('Alice', 35000),
(' Bob', 50000),
('Charan', 40000);
DELIMITER //
CREATE PROCEDURE update_salaries()
BEGIN
    DECLARE updated_count INT;
    UPDATE emp4 SET salary = salary * 1.1 WHERE emp_id = 1;
    SELECT COUNT(*) INTO updated_count FROM emp4 WHERE salary <> (SELECT salary FROM emp4 WHERE emp_id = 1);
    IF updated_count > 0 THEN
        SELECT CONCAT('Salaries for ', updated_count, ' employees are updated') AS message;
    ELSE
        SELECT 'None of the salaries were updated' AS message;
    END IF;
END //
DELIMITER ;
CALL update_salaries();
select * from emp4;