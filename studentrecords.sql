USE StudentRecords;
--creating the department table
CREATE TABLE Departments (DepartmentID INT PRIMARY KEY, DepartmentName VARCHAR(100) NOT NULL UNIQUE);

--creating the courses table
CREATE TABLE Courses (CourseID INT PRIMARY KEY, CourseName VARCHAR(100) NOT NULL, DepartmentID INT, Credits INT, FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID));

--creating the students table
CREATE TABLE Students ( StudentID INT PRIMARY KEY, FirstName VARCHAR(100) NOT NULL, LastName VARCHAR(100) NOT NULL, Email VARCHAR(100) UNIQUE, DateOfBirth DATE);

--creating the enrollments table
CREATE TABLE Enrollments (EnrollmentID INT PRIMARY KEY, StudentID INT, CourseID INT, EnrollmentDate DATE NOT NULL, FOREIGN KEY (StudentID) REFERENCES Students(StudentID), FOREIGN KEY (CourseID) REFERENCES Courses(CourseID));

--inserting data in the department table
INSERT INTO Departments (DepartmentID, DepartmentName) VALUES (1, 'Biology'), (2, 'Mathematics'), (3, 'Physics');

--inserting data in the courses table
INSERT INTO Courses (CourseID, CourseName, DepartmentID, Credits)
VALUES (101, 'Anatomy', 1, 4), (102, 'Calculus I', 2, 3), (103, 'Force', 3, 4);

--inserting data in the students table
INSERT INTO Students (StudentID, FirstName, LastName, Email, DateOfBirth) VALUES (1, 'Ann', 'Mwangi', 'annmwangi323@gmail.com', '2000-01-15'), (2, 'Jane', 'Wanjiku', 'janewanj@hotmail.com', '2000-03-22');

--inserting data in the enrollment table
INSERT INTO Enrollments (EnrollmentID, StudentID, CourseID, EnrollmentDate) VALUES (1, 1, 101, '2023-08-01'), (2, 1, 102, '2023-08-01'), (3, 2, 103, '2023-08-01');
 

