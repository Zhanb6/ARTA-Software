SELECT e.EnrollmentID, s.FirstName, s.LastName, c.CourseName, e.Semester, e.`Year`, e.Grade
FROM enrollments e
JOIN students s ON s.StudentID = e.StudentID
JOIN courses  c ON c.CourseID  = e.CourseID
LIMIT 20;
-- simple JOIN with named courses
