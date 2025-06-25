
-- UNF: Unnormalized Form
CREATE TABLE unf_students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    roll_number VARCHAR(20),
    address TEXT,
    class INT,
    grade INT,
    branch VARCHAR(50),
    subjects TEXT -- comma-separated values
);

-- 1NF: Atomic data only
CREATE TABLE students_1nf (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    roll_number VARCHAR(20),
    address TEXT,
    class INT,
    grade INT,
    branch VARCHAR(50)
);

CREATE TABLE student_subjects_1nf (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES students_1nf(id)
);

-- 2NF: Remove partial dependencies
CREATE TABLE students_2nf (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    roll_number VARCHAR(20),
    address TEXT,
    class INT,
    grade INT,
    branch VARCHAR(50)
);

CREATE TABLE subjects_2nf (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50)
);

CREATE TABLE student_subjects_2nf (
    id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject_id INT,
    FOREIGN KEY (student_id) REFERENCES students_2nf(id),
    FOREIGN KEY (subject_id) REFERENCES subjects_2nf(id)
);

-- pre3NF: With transitive dependencies
CREATE TABLE pre3nf_students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    roll_number VARCHAR(20),
    address TEXT,
    class INT,
    grade INT,
    branch VARCHAR(50),
    branch_head VARCHAR(100)
);

-- 3NF: Removed transitive dependency
CREATE TABLE branches_3nf (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    head VARCHAR(100)
);

CREATE TABLE students_3nf (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    roll_number VARCHAR(20),
    address TEXT,
    class INT,
    grade INT,
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES branches_3nf(id)
);

-- pre_BCNF: Functional dependency violation
CREATE TABLE pre_bcnf (
    course VARCHAR(50),
    instructor VARCHAR(100),
    room VARCHAR(50),
    PRIMARY KEY(course, room)
);

-- BCNF: All determinants are candidate keys
CREATE TABLE course_rooms_bcnf (
    id INT PRIMARY KEY AUTO_INCREMENT,
    course VARCHAR(50),
    room VARCHAR(50)
);

CREATE TABLE course_instructors_bcnf (
    id INT PRIMARY KEY AUTO_INCREMENT,
    course VARCHAR(50),
    instructor VARCHAR(100)
);

-- pre_4NF: Multi-valued dependencies
CREATE TABLE student_courses (
    student VARCHAR(50),
    course VARCHAR(50),
    PRIMARY KEY (student, course)
);

CREATE TABLE student_instructors (
    student VARCHAR(50),
    instructor VARCHAR(50),
    PRIMARY KEY (student, instructor)
);

-- 4NF: Removed multi-valued dependencies
CREATE TABLE course_instructors_4nf (
    course VARCHAR(50),
    instructor VARCHAR(50),
    PRIMARY KEY (course, instructor)
);

-- 5NF: Decomposed into projections with join dependency
CREATE TABLE student_courses_5nf (
    student VARCHAR(50),
    course VARCHAR(50),
    PRIMARY KEY (student, course)
);

CREATE TABLE course_instructors_5nf (
    course VARCHAR(50),
    instructor VARCHAR(50),
    PRIMARY KEY (course, instructor)
);

CREATE TABLE student_instructors_5nf (
    student VARCHAR(50),
    instructor VARCHAR(50),
    PRIMARY KEY (student, instructor)
);
