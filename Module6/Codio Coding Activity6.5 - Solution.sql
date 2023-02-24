-- Codio Coding Activity 6.5: Date and Time in SQL 

-- Question 1: Selecting Records
-- In the Terminal window, type the correct commands to retrieve all the records where order date is equal to `2008-11-11`.

-- Solution:
USE Times;
SELECT * FROM Orders WHERE OrderDate='2008-11-11';


-- Question 2: Determining the Difference Between Two Dates
-- In the Terminal window, type the correct commands to retrieve the difference, in days, between the placements for Steaks and Cheese.

-- Solution:
USE Times;
SELECT DATEDIFF('2008-11-11', '2008-10-13') AS DiffDate;



-- Question 3: Computing the Difference Between Time stamps

-- In the Terminal window, run the correct queries to compute the time difference between the order placed by the Smith's and the Sanchez's. Ensure that the output table has the column `TimeDiff`


-- Solution:
Use Times;
SELECT TIMEDIFF('07:24:09', '08:10:45') as TimeDiff;



-- Question 4: Subtract a Time Value
-- In the Terminal window, type the correct commands to update the timestamp of the order placed by the White's. Make sure that the output table has a column named updated_order_time.

-- Solution:
USE Times;
SELECT SUBTIME('07:35:45', '0:17:00') as updated_order_time;


-- Question 5: Choose the Correct Function
-- What is the correct MySQL function to convert a value to Unix Time?

-- Solution:
-- UNIX_TIMESTAMP()

-- Question 6: Convert a Value to Unix Time
-- In the Terminal window, type the correct commands to convert the value `599462445.99999` to Unix Time. Ensure that the output table has the column `Unix`.

-- Solution:
USE times;
SELECT FROM_UNIXTIME(599462445.99999) AS Unix;
