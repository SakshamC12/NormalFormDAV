require('dotenv').config();
const express = require('express');
const mysql = require('mysql2');
const cors = require('cors');

const app = express();
app.use(cors());

// MySQL connection config using environment variables
const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

// Utility to reduce repetition
function createRoute(tableName) {
  app.get(`/api/${tableName}`, (req, res) => {
    db.query(`SELECT * FROM ${tableName}`, (err, results) => {
      if (err) return res.status(500).send(err);
      res.json(results);
    });
  });
}

// UNF
createRoute('students_unf');
// 1NF
createRoute('students_1nf');
createRoute('student_subjects_1nf');
// 2NF
createRoute('students_2nf');
createRoute('addresses');
createRoute('branches');
createRoute('subjects');
createRoute('student_subjects_2nf');
// 3NF
createRoute('students_pre3nf');
createRoute('students_3nf');
createRoute('class_teachers');
// Pre-BCNF and BCNF
createRoute('student_class_teacher_prebcnf');
createRoute('students_bcnf');
// 4NF
createRoute('student_hobbies_languages_pre4nf');
createRoute('student_hobbies_4nf');
createRoute('student_languages_4nf');
// 5NF
createRoute('student_course_instructor_pre5nf');
createRoute('student_courses');
createRoute('course_instructors');
createRoute('student_instructors');

// Start the server
const PORT = process.env.PORT || 3001;
app.listen(PORT, () => console.log(`API server running at http://localhost:${PORT}`)); 