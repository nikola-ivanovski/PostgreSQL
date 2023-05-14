CREATE TABLE Student (
	ID INTEGER PRIMARY KEY,
 	firstName varchar(100) NOT NULL,
 	lastName varchar(100) NOT NULL,
 	dateOfBirth date NULL,
 	enrolledDate date NULL,
	gender nchar(1) NULL,
 	nationalIdNumber integer NULL,
 	studentCardNumber varchar(100) NULL
)

CREATE TABLE Teacher (
	ID integer PRIMARY KEY,
 	firstName varchar(100) NOT NULL,
 	lastName varchar(100) NOT NULL,
 	dateOfBirth date NULL,
 	academicRank varchar(100) NULL,
 	hireDate date NULL
)

CREATE TABLE Grade (
	ID integer PRIMARY KEY,
	studentId integer NOT NULL,
	courseId integer NOT NULL,
	teacherId integer NOT NULL,
	grade nchar(1) NULL,
	comment varchar(500) NULL,
	createdDate date NULL
)

CREATE TABLE Course (
	ID integer PRIMARY KEY,
	name varchar(100) NOT NULL,
	credit varchar(100) NULL,
	academicYear date NULL,
	semester integer NULL
)

CREATE TABLE AchievementType (
	ID integer PRIMARY KEY,
	name varchar(100) NOT NULL,
	description varchar(500) NULL,
	participationRate integer NULL
)

CREATE TABLE GradeDetails (
	ID integer PRIMARY KEY,
	gradeId integer NOT NULL,
	achievementTypeId integer NOT NULL,
	achievementPoints integer NULL,
	achievementMaxPoints integer NULL,
	achievementDate date NULL
)