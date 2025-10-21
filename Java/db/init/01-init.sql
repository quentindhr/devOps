-- Création des tables (si elles n'existent pas déjà)
CREATE TABLE IF NOT EXISTS departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS students (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    department_id INTEGER REFERENCES departments(id)
);

-- Insertion des données
INSERT INTO departments (id, name) VALUES 
    (1, 'IRC'),
    (2, 'ETI'),
    (3, 'CGP')
ON CONFLICT (id) DO NOTHING;

INSERT INTO students (id, first_name, last_name, department_id) VALUES 
    (1, 'Eli', 'Copter', 1),
    (2, 'Emma', 'Carena', 1),
    (3, 'Jack', 'Uzzi', 2),
    (4, 'Sarah', 'Connor', 2),
    (5, 'John', 'Doe', 3)
ON CONFLICT (id) DO NOTHING;

-- Reset les séquences pour les prochains inserts
SELECT setval('departments_id_seq', (SELECT MAX(id) FROM departments));
SELECT setval('students_id_seq', (SELECT MAX(id) FROM students));
