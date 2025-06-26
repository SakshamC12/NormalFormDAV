import React from 'react';
import { BrowserRouter as Router, Routes, Route, Link, Navigate } from 'react-router-dom';
import NormalFormTable from './components/NormalFormTable';
import './App.css';

const logoUrl = process.env.PUBLIC_URL + '/DavLogo.svg';

const tables = [
  {
    label: 'UNF',
    endpoints: ['students_unf'],
    path: 'unf',
    description: 'Data is stored without any structure — repeated groups and redundancies are common.'
  },
  {
    label: '1NF',
    endpoints: ['students_1nf', 'student_subjects_1nf'],
    path: '1nf',
    description: 'Eliminates repeating groups by ensuring each field contains only atomic (indivisible) values. Tables follow a clear row-column format with no arrays or multivalued columns.'
  },
  {
    label: '2NF',
    endpoints: ['students_2nf', 'addresses', 'branches', 'subjects', 'student_subjects_2nf'],
    path: '2nf',
    description: 'Removes partial dependencies by separating data into related tables. Every non-key attribute is fully functionally dependent on the entire primary key.'
  },
  {
    label: '3NF',
    endpoints: ['students_pre3nf', 'students_3nf', 'class_teachers'],
    path: '3nf',
    description: 'Eliminates transitive dependencies to ensure data is dependent only on the primary key. Helps minimize redundancy and update anomalies further.'
  },
  {
    label: 'Pre-BCNF & BCNF',
    endpoints: ['student_class_teacher_prebcnf', 'students_bcnf'],
    path: 'bcnf',
    description: 'A stricter version of 3NF where every determinant is a candidate key. Resolves anomalies not handled by 3NF in edge cases.'
  },
  {
    label: '4NF',
    endpoints: ['student_hobbies_languages_pre4nf', 'student_hobbies_4nf', 'student_languages_4nf'],
    path: '4nf',
    description: 'Handles multi-valued dependencies by splitting independent many-to-many relationships into separate tables. Ensures each fact is stored only once.'
  },
  {
    label: '5NF',
    endpoints: ['student_course_instructor_pre5nf', 'student_courses', 'course_instructors', 'student_instructors'],
    path: '5nf',
    description: 'Resolves join dependencies by decomposing data into the smallest meaningful units. Ensures all relationships can be reconstructed through natural joins.'
  }
];

function Navbar() {
  return (
    <nav className="navbar">
      {tables.map(({ label, path }) => (
        <Link key={path} to={`/${path}`} className="nav-link">{label}</Link>
      ))}
    </nav>
  );
}

function FormPage({ label, endpoints, description }) {
  return (
    <section style={{ marginBottom: 40 }}>
      <h2>{label}</h2>
      {description && <p style={{ fontStyle: 'italic', marginBottom: 24 }}>{description}</p>}
      {endpoints.map((endpoint) => (
        <NormalFormTable key={endpoint} endpoint={endpoint} />
      ))}
    </section>
  );
}

function App() {
  return (
    <Router>
      <div className="container">
        <header className="header">
          <img src={logoUrl} alt="DAV Logo" className="logo" />
          <h1>Database Normalization Forms</h1>
          <span className="author-credit">
            Made by Saksham Chaturvedi
            <br />
            <span className="collab-credit">In Collaboration with DAV Secondary School</span>
          </span>
        </header>
        <Navbar />
        <p style={{ marginTop: 24 }}>This site demonstrates the differences between various forms of normalization using real data from a MySQL database.</p>
        <Routes>
          <Route path="/" element={<Navigate to="/unf" replace />} />
          {tables.map(({ label, endpoints, path, description }) => (
            <Route
              key={path}
              path={`/${path}`}
              element={<FormPage label={label} endpoints={endpoints} description={description} />}
            />
          ))}
        </Routes>
      </div>
    </Router>
  );
}

export default App; 