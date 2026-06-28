a) INSERT INTO Advisors VALUES (1,'Dr. Sen','sen@univ.edu'), (2,'Dr. Roy','roy@univ.edu');

INSERT INTO Instructors VALUES (1,'Prof. Sharma','sharma@univ.edu'), (2,'Prof. Das','das@univ.edu');

INSERT INTO Courses VALUES ('CS101','Database Systems',1), ('CS202','Operating Systems',2), ('CS303','Computer Networks',1), ('CS404','Artificial Intelligence',2);

INSERT INTO Students VALUES (101,'Amit','CSE',1), (102,'Riya','CSE',2), (103,'Rahul','ECE',1);

INSERT INTO Enrollments VALUES (101,'CS101',2024,82), (101,'CS202',2025,76), (102,'CS202',2025,67), (102,'CS303',2024,91), (103,'CS101',2025,31);

b) UPDATE Instructors SET instructor_email='newemail@univ.edu' WHERE instructor_id=1;

c) DELETE FROM Enrollments WHERE marks_obtained < 35;

d) DELETE FROM StudentRecords;