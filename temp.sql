--Temp tables are temporay tables that are created on the fly and are destroyed when the session ends
--to store temporary data or intermediate results.


CREATE TEMPORARY TABLE temp_table (
    id INT,
    name VARCHAR(255),
    age INT
);

-- Insert data into the temporary table
INSERT INTO temp_table VALUES (1, 'John', 25);
INSERT INTO temp_table VALUES (2, 'Jane', 30);
INSERT INTO temp_table VALUES (3, 'Bob', 28);

-- Select data from the temporary table
SELECT * FROM temp_table;
