-- Schema for college_db
CREATE TABLE IF NOT EXISTS students (
  StudentID  INT PRIMARY KEY,
  FirstName  VARCHAR(100),
  LastName  VARCHAR(100),
  Gender  VARCHAR(10),
  DateOfBirth DATE,
  Major VARCHAR(100),
  GPA  DECIMAL(3,2)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS courses (
  CourseID VARCHAR(20) PRIMARY KEY,
  CourseName VARCHAR(100),
  Department VARCHAR(100),
  Credits INT,
  Instructor VARCHAR(100)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS enrollments (
  EnrollmentID INT PRIMARY KEY,
  StudentID INT,
  CourseID VARCHAR(20),
  Semester VARCHAR(20),
  `Year` INT,
  Grade  VARCHAR(5),
  FOREIGN KEY (StudentID) REFERENCES students(StudentID),
  FOREIGN KEY (CourseID)  REFERENCES courses(CourseID)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS attendance (
  AttendanceID INT PRIMARY KEY,
  StudentID INT,
  CourseID VARCHAR(20),
  `Date` DATE,
  AttendanceStatus VARCHAR(10),
  FOREIGN KEY (StudentID) REFERENCES students(StudentID),
  FOREIGN KEY (CourseID)  REFERENCES courses(CourseID)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS grades (
  GradeID INT PRIMARY KEY,
  StudentID INT,
  CourseID VARCHAR(20),
  AssignmentType VARCHAR(50),
  Score DECIMAL(5,2),
  `Date` DATE,
  FOREIGN KEY (StudentID) REFERENCES students(StudentID),
  FOREIGN KEY (CourseID)  REFERENCES courses(CourseID)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE IF NOT EXISTS feedback (
  FeedbackID INT PRIMARY KEY,
  StudentID INT,
  FeedbackDate DATE,
  FeedbackText TEXT,
  FOREIGN KEY (StudentID) REFERENCES students(StudentID)
) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Helpful indexes
CREATE INDEX IF NOT EXISTS idx_enrollments_student ON enrollments(StudentID);
CREATE INDEX IF NOT EXISTS idx_enrollments_course ON enrollments(CourseID);
CREATE INDEX IF NOT EXISTS idx_attendance_student ON attendance(StudentID);
CREATE INDEX IF NOT EXISTS idx_attendance_course ON attendance(CourseID);
CREATE INDEX IF NOT EXISTS idx_grades_student ON grades(StudentID);
CREATE INDEX IF NOT EXISTS idx_grades_course ON grades(CourseID);
