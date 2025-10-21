INSERT INTO departments (id, name) VALUES (1, 'IRC') ON CONFLICT DO NOTHING;
INSERT INTO departments (id, name) VALUES (2, 'ETI') ON CONFLICT DO NOTHING;
INSERT INTO departments (id, name) VALUES (3, 'CGP') ON CONFLICT DO NOTHING;

INSERT INTO students (id, first_name, last_name, department_id) VALUES (1, 'Eli', 'Copter', 1) ON CONFLICT DO NOTHING;
INSERT INTO students (id, first_name, last_name, department_id) VALUES (2, 'Emma', 'Carena', 1) ON CONFLICT DO NOTHING;
INSERT INTO students (id, first_name, last_name, department_id) VALUES (3, 'Jack', 'Uzzi', 2) ON CONFLICT DO NOTHING;
