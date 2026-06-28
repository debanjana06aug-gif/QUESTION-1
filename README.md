# QUESTION-1
TASK 1.1:-
a)Partial Dependencies:-
student_id → student_name
student_id → department
student_id → advisor_name
course_code → course_name
course_code → instructor_name
course_code → instructor_email

Transitive Dependencies:-
advisor_name → advisor_email
instructor_name → instructor_email

Hence,
student_id → advisor_email (transitive)
course_code → instructor_email (transitive)

b)Students
---------
student_id (PK)
student_name
department
advisor_id (FK)

Advisors
---------
advisor_id (PK)
advisor_name
advisor_email

Instructors
------------
instructor_id (PK)
instructor_name
instructor_email

Courses
--------
course_code (PK)
course_name
instructor_id (FK)

Enrollments
-----------
student_id (PK, FK)
course_code (PK, FK)
enrollment_year
marks_obtained
All relations satisfy Boyce-Codd Normal Form (BCNF) because every determinant is a candidate key in its respective relation.

c) 
The final BCNF schema satisfies all four data integrity types. **Entity integrity** is maintained because each table has a well-defined primary key (`student_id`, `advisor_id`, `instructor_id`, `course_code`, or the composite key `(student_id, course_code)`), and primary key values cannot be NULL, ensuring that every record is uniquely identifiable. **Referential integrity** is also satisfied through foreign key constraints, where `advisor_id` in the `Students` table references `Advisors`, `instructor_id` in the `Courses` table references `Instructors`, and `student_id` and `course_code` in the `Enrollments` table reference the `Students` and `Courses` tables, respectively. This prevents orphan records and maintains valid relationships between tables. **Domain integrity** is satisfied by assigning appropriate data types to each attribute, such as `INT` for identifiers and years, `VARCHAR` for names and email addresses, and `DECIMAL` for marks, thereby restricting values to valid formats. Finally, **user-defined integrity** is preserved by the schema design, which enforces business rules such as each student being linked to a valid advisor, each course being assigned to a valid instructor, and each enrollment referring to an existing student and course. Therefore, the normalized BCNF schema satisfies all four integrity types while eliminating update, insertion, and deletion anomalies.



TASK 1.5:-
a) BEGIN;

DELETE FROM Enrollments
WHERE student_id=101
AND course_code='CS101';

INSERT INTO Enrollments
(student_id,course_code,enrollment_year,marks_obtained)
VALUES
(101,'CS404',2025,82);

COMMIT;

-- If INSERT fails

ROLLBACK;

b) Concurrency anomaly: Non-repeatable Read

Minimum isolation level: REPEATABLE READ

c) Concurrency anomaly: Lost Update / Write Skew (overbooking due to concurrent inserts)

Isolation level: SERIALIZABLE

d) Under MVCC, the reporting transaction continues reading the same snapshot.
It does not see the committed update while it is active.
Isolation level: REPEATABLE READ (or Snapshot Isolation, depending on the DBMS).
Trade-off: stronger consistency but reduced concurrency and higher resource usage due to version maintenance.
