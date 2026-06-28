# QUESTION-1
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
