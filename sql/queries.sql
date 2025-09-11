SELECT e.EnrollmentID, s.FirstName, s.LastName, c.CourseName, e.Semester, e.`Year`, e.Grade
FROM enrollments e
JOIN students s ON s.StudentID = e.StudentID
JOIN courses  c ON c.CourseID  = e.CourseID
LIMIT 20;
-- simple JOIN with named courses

SELECT c.CourseName, ROUND(AVG(g.Score)2,) AS avg_score, count(*) as n
from grages g
join courses c on c.COURSEID = g.Course.ID
GROUP BY c.CourseID
ORDER BY avg_score DESC
LIMIT 20;
-- average score from grades

select s.StudentID, s.FirstName, s.LastName, s.GPA, COUNT(e.CourseID) as courses_taken
from students s
left join enrollments e on s.StudentID = e.StudentID
GROUP BY s.StudentID, s.FirstName, s.LastName, s.GPA
ORDER BY s.GPA DESC
LIMIT 20;
-- top students by GPA with + course count
