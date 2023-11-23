--commit
--is used to save changes permanently
UPDATE Customers SET country = 'INDIA' WHERE first_name= 'David';
COMMIT;

--rollback
--is used to undo the changes
UPDATE Customers SET first_name= 'Peter' WHERE last_name = 'Doe';
ROLLBACK;
--will rollback the changes made by the last update query

--savepoint
--temporarily saves 
INSERT INTO Employee VALUES(113, 'Rose');

COMMIT;

UPDATE Employee SET name = 'Oliver' WHERE id = '110';

SAVEPOINT A;

INSERT INTO Employee VALUES(114, 'Prince');

SAVEPOINT B;

INSERT INTO Employee VALUES(115, 'Smith');

SAVEPOINT C;

SELECT * FROM Employee;
