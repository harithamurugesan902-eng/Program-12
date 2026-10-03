USE CollegeDB;

CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);

CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    StudentName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

CREATE TABLE Faculty (
    FacultyID INT PRIMARY KEY,
    FacultyName VARCHAR(50),
    DepartmentID INT,
    FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    FacultyID INT,
    FOREIGN KEY (FacultyID)
        REFERENCES Faculty(FacultyID)
);

CREATE TABLE Enrollment (
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    PRIMARY KEY (StudentID, CourseID),
    FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID),
    FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
);

INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'Computer Science'),
(2, 'Mathematics'),
(3, 'Commerce');

INSERT INTO Student (StudentID, StudentName, DepartmentID) VALUES
(1001, 'Arun', 1),
(1002, 'Priya', 2),
(1003, 'Kumar', 1),
(1004, 'Divya', 3);

INSERT INTO Faculty (FacultyID, FacultyName, DepartmentID) VALUES
(101, 'Dr. Ravi', 1),
(102, 'Dr. Meena', 2),
(103, 'Dr. Kumar', 3);

INSERT INTO Course (CourseID, CourseName, FacultyID) VALUES
(201, 'Database Systems', 101),
(202, 'Data Structures', 101),
(203, 'Mathematics', 102),
(204, 'Accounting', 103);

INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES
(1001, 201, '2026-01-10'),
(1001, 202, '2026-01-10'),
(1002, 203, '2026-01-11'),
(1003, 201, '2026-01-12'),
(1004, 204, '2026-01-13');
