SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (completed_at - started_at) AS duration
FROM assistance_requests
JOIN students on students.id = student_id
JOIN teachers on teachers.id = teacher_id
JOIN assignments on assignments.id = assignment_id
ORDER BY duration;