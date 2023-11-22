--SET OPERATIONS


--UNION
SELECT  * FROM EMPLOYEE
union
SELECT * FROM EMPLOYEE2;
--union will remove the duplicate values

--UNION ALL
SELECT  * FROM EMPLOYEE
union all
SELECT * FROM EMPLOYEE2;
--union all will not remove the duplicate values


--INTERSECT
SELECT  * FROM EMPLOYEE
INTERSECT
SELECT * FROM EMPLOYEE2;


--EXCEPT
SELECT  * FROM EMPLOYEE
EXCEPT
SELECT * FROM EMPLOYEE2;
--tuples IN table1 but not in table 2

--QUERIES
--IN OPERATOR
SELECT * FROM EMPLOYEE
WHERE empId IN (1,2);
--multiple or conditions can be given in IN operator

--or
SELECT * FROM Customers
WHERE Country IN (SELECT COUNTRY FROM Customers WHERE Country='UK');

--NOT IN OPERATOR
SELECT * FROM Customers
WHERE NOT Country in 'Spain';
--= or in can be used ....single values or multiples values resp

--ANY
SELECT * FROM EMPLOYEE
WHERE empId > ANY (SELECT empId FROM EMPLOYEE WHERE empId>2);
--any will check for the condition for all the values in the subquery AND IF ANY TRUE COMes then it will return the tuple

--ALL
SELECT ProductName 
FROM Products
WHERE ProductID = ALL (SELECT ProductID FROM OrderDetails WHERE Quantity = 10);
--all will check for the condition for all the values in the subquery AND IF ALL TRUE COMes then it will return the tuple
--MP RETURNS ntng..