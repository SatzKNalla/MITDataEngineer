-- Codio Coding Activity 6.4: Cleaning Data in SQL

-- Question 1: Retrieve Records in Entries Table
-- What is the command to return all the records in the Entries table?

-- Solution:
USE Schools;
SELECT * FROM Entries;


-- Question 2: Compute Average Weight
-- In the Terminal window, type the correct commands to get the average weight value from the `Entries` table. Make sure that the output entry has a column named average_weight_in_lbs.

-- Solution:
USE Schools;
select avg(weight_in_lbs) as average_weight_in_lbs from Entries;


-- Question 3: Imputing Values

-- Rearrange the code blocks below so that the table Entries contains an extra column, corrected_weights, containing not NULL entries for the weights of the students.


-- Solution:
USE Schools;
select *, COALESCE(weight_in_lbs, 90.6) as corrected_weights from Entries;


-- Question 4: Data Types
-- What is the data type in the column deptID in the Students and Department tables?

-- Solution:
-- deptID is of type integer in the Students table and varchar in the Departments tables.

-- Question 5: Joining Tables
-- What is the command to join the Students and Departments tables as described above?

-- Solution:
USE Schools;
select studentID, name, dept_name from Students join Departments on Students.deptID = cast(Departments.deptID as UNSIGNED);

-- Question 6: Replacing Strings
-- What are the correct commands to convert the strings Information Technology and i.t. to I.T. and to group them?

-- Solution:
USE Schools;
select upper(replace(dept_name, 'Information Technology', 'I.T.')) as dept_cleaned, count(dept_name) as student_count from Student_details group by dept_cleaned;

