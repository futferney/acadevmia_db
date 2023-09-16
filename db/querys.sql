-- =====================================================================================================================================================
--     ====================================================== VERSIÓN EN INGLES ============================================================
-- =====================================================================================================================================================

USE acadevmia_db;

INSERT INTO roles
VALUES (01, 'super admin'),
(default, 'administrator'),
(default, 'user');

INSERT INTO countries
VALUES (1, 'Colombia');

INSERT INTO genres (genero)
VALUES('male'),
('female'),
('prefer not to say');



INSERT INTO courses (name, description)
VALUES ('html', 'This course aims to introduce students to the world of web development by teaching them the fundamental concepts of HTML.
Provide students with the necessary skills to create static and semantically correct web pages.
Familiarize students with best practices in HTML coding and the structure of a modern web page.
Prepare students to advance to more advanced web technologies and languages, such as CSS and JavaScript.'),
('css', 'This course aims to teach students how to design and style web pages using CSS.
Provide students with the necessary skills to control the presentation and layout of web pages.
Familiarize students with best practices in web design and creating responsive web pages.
Prepare students to work with HTML and CSS in real-world web projects.');

INSERT INTO modules (name, description, id_course)
VALUES ('Module 1 of HTML', 'Description of Module 1 of HTML', 1),
('Module 2 of HTML', 'Description of Module 2 of HTML', 1),
('Module 3 of HTML', 'Description of Module 3 of HTML', 1),
('Module 4 of HTML', 'Description of Module 4 of HTML', 1),
('Module 5 of HTML', 'Description of Module 5 of HTML', 1),
('Module 6 of HTML', 'Description of Module 6 of HTML', 1),
('Module 7 of HTML', 'Description of Module 7 of HTML', 1),
('Module 8 of HTML', 'Description of Module 8 of HTML', 1),
('Module 9 of HTML', 'Description of Module 9 of HTML', 1),
('Module 10 of HTML', 'Description of Module 10 of HTML', 1);

INSERT INTO modules (name, description, id_course)
VALUES ('Module 1 of CSS', 'Description of Module 1 of CSS', 2),
('Module 2 of CSS', 'Description of Module 2 of CSS', 2),
('Module 3 of CSS', 'Description of Module 3 of CSS', 2),
('Module 4 of CSS', 'Description of Module 4 of CSS', 2),
('Module 5 of CSS', 'Description of Module 5 of CSS', 2),
('Module 6 of CSS', 'Description of Module 6 of CSS', 2),
('Module 7 of CSS', 'Description of Module 7 of CSS', 2),
('Module 8 of CSS', 'Description of Module 8 of CSS', 2),
('Module 9 of CSS', 'Description of Module 9 of CSS', 2),
('Module 10 of CSS', 'Description of Module 10 of CSS', 2);

INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for HTML Module 1', 1),
('Lesson 2', 'Content of Lesson 2 for HTML Module 1', 1),
('Lesson 3', 'Content of Lesson 3 for HTML Module 1', 1),
('Lesson 4', 'Content of Lesson 4 for HTML Module 1', 1),
('Lesson 5', 'Content of Lesson 5 for HTML Module 1', 1),
('Lesson 6', 'Content of Lesson 6 for HTML Module 1', 1),
('Lesson 7', 'Content of Lesson 7 for HTML Module 1', 1),
('Lesson 8', 'Content of Lesson 8 for HTML Module 1', 1),
('Lesson 9', 'Content of Lesson 9 for HTML Module 1', 1),
('Lesson 10', 'Content of Lesson 10 for HTML Module 1', 1);

INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for HTML Module 2', 2),
('Lesson 2', 'Content of Lesson 2 for HTML Module 2', 2),
('Lesson 3', 'Content of Lesson 3 for HTML Module 2', 2),
('Lesson 4', 'Content of Lesson 4 for HTML Module 2', 2),
('Lesson 5', 'Content of Lesson 5 for HTML Module 2', 2),
('Lesson 6', 'Content of Lesson 6 for HTML Module 2', 2),
('Lesson 7', 'Content of Lesson 7 for HTML Module 2', 2),
('Lesson 8', 'Content of Lesson 8 for HTML Module 2', 2),
('Lesson 9', 'Content of Lesson 9 for HTML Module 2', 2),
('Lesson 10', 'Content of Lesson 10 for HTML Module 2', 2);

-- Lessons for HTML Module 3
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for HTML Module 3', 3),
('Lesson 2', 'Content of Lesson 2 for HTML Module 3', 3),
('Lesson 3', 'Content of Lesson 3 for HTML Module 3', 3),
('Lesson 4', 'Content of Lesson 4 for HTML Module 3', 3),
('Lesson 5', 'Content of Lesson 5 for HTML Module 3', 3),
('Lesson 6', 'Content of Lesson 6 for HTML Module 3', 3),
('Lesson 7', 'Content of Lesson 7 for HTML Module 3', 3),
('Lesson 8', 'Content of Lesson 8 for HTML Module 3', 3),
('Lesson 9', 'Content of Lesson 9 for HTML Module 3', 3),
('Lesson 10', 'Content of Lesson 10 for HTML Module 3', 3);

-- Lessons for HTML Module 4
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for HTML Module 4', 4),
('Lesson 2', 'Content of Lesson 2 for HTML Module 4', 4),
('Lesson 3', 'Content of Lesson 3 for HTML Module 4', 4),
('Lesson 4', 'Content of Lesson 4 for HTML Module 4', 4),
('Lesson 5', 'Content of Lesson 5 for HTML Module 4', 4),
('Lesson 6', 'Content of Lesson 6 for HTML Module 4', 4),
('Lesson 7', 'Content of Lesson 7 for HTML Module 4', 4),
('Lesson 8', 'Content of Lesson 8 for HTML Module 4', 4),
('Lesson 9', 'Content of Lesson 9 for HTML Module 4', 4),
('Lesson 10', 'Content of Lesson 10 for HTML Module 4', 4);

-- Lessons for HTML Module 5
INSERT INTO lessons (name, description,  id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for HTML Module 5', 5),
('Lesson 2', 'Content of Lesson 2 for HTML Module 5', 5),
('Lesson 3', 'Content of Lesson 3 for HTML Module 5', 5),
('Lesson 4', 'Content of Lesson 4 for HTML Module 5', 5),
('Lesson 5', 'Content of Lesson 5 for HTML Module 5', 5),
('Lesson 6', 'Content of Lesson 6 for HTML Module 5', 5),
('Lesson 7', 'Content of Lesson 7 for HTML Module 5', 5),
('Lesson 8', 'Content of Lesson 8 for HTML Module 5', 5),
('Lesson 9', 'Content of Lesson 9 for HTML Module 5', 5),
('Lesson 10', 'Content of Lesson 10 for HTML Module 5', 5);

-- Lessons for HTML Module 6
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for HTML Module 6', 6),
('Lesson 2', 'Content of Lesson 2 for HTML Module 6', 6),
('Lesson 3', 'Content of Lesson 3 for HTML Module 6', 6),
('Lesson 4', 'Content of Lesson 4 for HTML Module 6', 6),
('Lesson 5', 'Content of Lesson 5 for HTML Module 6', 6),
('Lesson 6', 'Content of Lesson 6 for HTML Module 6', 6),
('Lesson 7', 'Content of Lesson 7 for HTML Module 6', 6),
('Lesson 8', 'Content of Lesson 8 for HTML Module 6', 6),
('Lesson 9', 'Content of Lesson 9 for HTML Module 6', 6),
('Lesson 10', 'Content of Lesson 10 for HTML Module 6', 6);

-- Lessons for HTML Module 7
INSERT INTO lessons (name, description,  id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for HTML Module 7', 7),
('Lesson 2', 'Content of Lesson 2 for HTML Module 7', 7),
('Lesson 3', 'Content of Lesson 3 for HTML Module 7', 7),
('Lesson 4', 'Content of Lesson 4 for HTML Module 7', 7),
('Lesson 5', 'Content of Lesson 5 for HTML Module 7', 7),
('Lesson 6', 'Content of Lesson 6 for HTML Module 7', 7),
('Lesson 7', 'Content of Lesson 7 for HTML Module 7', 7),
('Lesson 8', 'Content of Lesson 8 for HTML Module 7', 7),
('Lesson 9', 'Content of Lesson 9 for HTML Module 7', 7),
('Lesson 10', 'Content of Lesson 10 for HTML Module 7', 7);

-- Lessons for HTML Module 8
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for HTML Module 8', 8),
('Lesson 2', 'Content of Lesson 2 for HTML Module 8', 8),
('Lesson 3', 'Content of Lesson 3 for HTML Module 8', 8),
('Lesson 4', 'Content of Lesson 4 for HTML Module 8', 8),
('Lesson 5', 'Content of Lesson 5 for HTML Module 8', 8),
('Lesson 6', 'Content of Lesson 6 for HTML Module 8', 8),
('Lesson 7', 'Content of Lesson 7 for HTML Module 8', 8),
('Lesson 8', 'Content of Lesson 8 for HTML Module 8', 8),
('Lesson 9', 'Content of Lesson 9 for HTML Module 8', 8),
('Lesson 10', 'Content of Lesson 10 for HTML Module 8', 8);

-- Lessons for HTML Module 9
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for HTML Module 9', 9),
('Lesson 2', 'Content of Lesson 2 for HTML Module 9', 9),
('Lesson 3', 'Content of Lesson 3 for HTML Module 9', 9),
('Lesson 4', 'Content of Lesson 4 for HTML Module 9', 9),
('Lesson 5', 'Content of Lesson 5 for HTML Module 9', 9),
('Lesson 6', 'Content of Lesson 6 for HTML Module 9', 9),
('Lesson 7', 'Content of Lesson 7 for HTML Module 9', 9),
('Lesson 8', 'Content of Lesson 8 for HTML Module 9', 9),
('Lesson 9', 'Content of Lesson 9 for HTML Module 9', 9),
('Lesson 10', 'Content of Lesson 10 for HTML Module 9', 9);

-- Lessons for HTML Module 10
INSERT INTO lessons (name, description,  id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for HTML Module 10', 10),
('Lesson 2', 'Content of Lesson 2 for HTML Module 10', 10),
('Lesson 3', 'Content of Lesson 3 for HTML Module 10', 10),
('Lesson 4', 'Content of Lesson 4 for HTML Module 10', 10),
('Lesson 5', 'Content of Lesson 5 for HTML Module 10', 10),
('Lesson 6', 'Content of Lesson 6 for HTML Module 10', 10),
('Lesson 7', 'Content of Lesson 7 for HTML Module 10', 10),
('Lesson 8', 'Content of Lesson 8 for HTML Module 10', 10),
('Lesson 9', 'Content of Lesson 9 for HTML Module 10', 10),
('Lesson 10', 'Content of Lesson 10 for HTML Module 10', 10);

-- Lessons for CSS Module 1
INSERT INTO lessons (name, description,  id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for CSS Module 1', 11),
('Lesson 2', 'Content of Lesson 2 for CSS Module 1', 11),
('Lesson 3', 'Content of Lesson 3 for CSS Module 1', 11),
('Lesson 4', 'Content of Lesson 4 for CSS Module 1', 11),
('Lesson 5', 'Content of Lesson 5 for CSS Module 1', 11),
('Lesson 6', 'Content of Lesson 6 for CSS Module 1', 11),
('Lesson 7', 'Content of Lesson 7 for CSS Module 1', 11),
('Lesson 8', 'Content of Lesson 8 for CSS Module 1', 11),
('Lesson 9', 'Content of Lesson 9 for CSS Module 1', 11),
('Lesson 10', 'Content of Lesson 10 for CSS Module 1', 11);

-- Lessons for CSS Module 2
INSERT INTO lessons (name, description,  id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for CSS Module 2', 12),
('Lesson 2', 'Content of Lesson 2 for CSS Module 2', 12),
('Lesson 3', 'Content of Lesson 3 for CSS Module 2', 12),
('Lesson 4', 'Content of Lesson 4 for CSS Module 2', 12),
('Lesson 5', 'Content of Lesson 5 for CSS Module 2', 12),
('Lesson 6', 'Content of Lesson 6 for CSS Module 2', 12),
('Lesson 7', 'Content of Lesson 7 for CSS Module 2', 12),
('Lesson 8', 'Content of Lesson 8 for CSS Module 2', 12),
('Lesson 9', 'Content of Lesson 9 for CSS Module 2', 12),
('Lesson 10', 'Content of Lesson 10 for CSS Module 2', 12);

-- Lessons for CSS Module 3
INSERT INTO lessons (name, description,  id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for CSS Module 3', 13),
('Lesson 2', 'Content of Lesson 2 for CSS Module 3', 13),
('Lesson 3', 'Content of Lesson 3 for CSS Module 3', 13),
('Lesson 4', 'Content of Lesson 4 for CSS Module 3', 13),
('Lesson 5', 'Content of Lesson 5 for CSS Module 3', 13),
('Lesson 6', 'Content of Lesson 6 for CSS Module 3', 13),
('Lesson 7', 'Content of Lesson 7 for CSS Module 3', 13),
('Lesson 8', 'Content of Lesson 8 for CSS Module 3', 13),
('Lesson 9', 'Content of Lesson 9 for CSS Module 3', 13),
('Lesson 10', 'Content of Lesson 10 for CSS Module 3', 13);

-- Lessons for CSS Module 4
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for CSS Module 4', 14),
('Lesson 2', 'Content of Lesson 2 for CSS Module 4', 14),
('Lesson 3', 'Content of Lesson 3 for CSS Module 4', 14),
('Lesson 4', 'Content of Lesson 4 for CSS Module 4', 14),
('Lesson 5', 'Content of Lesson 5 for CSS Module 4', 14),
('Lesson 6', 'Content of Lesson 6 for CSS Module 4', 14),
('Lesson 7', 'Content of Lesson 7 for CSS Module 4', 14),
('Lesson 8', 'Content of Lesson 8 for CSS Module 4', 14),
('Lesson 9', 'Content of Lesson 9 for CSS Module 4', 14),
('Lesson 10', 'Content of Lesson 10 for CSS Module 4', 14);

-- Lessons for CSS Module 5
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for CSS Module 5', 15),
('Lesson 2', 'Content of Lesson 2 for CSS Module 5', 15),
('Lesson 3', 'Content of Lesson 3 for CSS Module 5', 15),
('Lesson 4', 'Content of Lesson 4 for CSS Module 5', 15),
('Lesson 5', 'Content of Lesson 5 for CSS Module 5', 15),
('Lesson 6', 'Content of Lesson 6 for CSS Module 5', 15),
('Lesson 7', 'Content of Lesson 7 for CSS Module 5', 15),
('Lesson 8', 'Content of Lesson 8 for CSS Module 5', 15),
('Lesson 9', 'Content of Lesson 9 for CSS Module 5', 15),
('Lesson 10', 'Content of Lesson 10 for CSS Module 5', 15);

-- Lessons for CSS Module 6
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for CSS Module 6', 16),
('Lesson 2', 'Content of Lesson 2 for CSS Module 6', 16),
('Lesson 3', 'Content of Lesson 3 for CSS Module 6', 16),
('Lesson 4', 'Content of Lesson 4 for CSS Module 6', 16),
('Lesson 5', 'Content of Lesson 5 for CSS Module 6', 16),
('Lesson 6', 'Content of Lesson 6 for CSS Module 6', 16),
('Lesson 7', 'Content of Lesson 7 for CSS Module 6', 16),
('Lesson 8', 'Content of Lesson 8 for CSS Module 6', 16),
('Lesson 9', 'Content of Lesson 9 for CSS Module 6', 16),
('Lesson 10', 'Content of Lesson 10 for CSS Module 6', 16);

-- Lessons for CSS Module 7
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for CSS Module 7', 17),
('Lesson 2', 'Content of Lesson 2 for CSS Module 7', 17),
('Lesson 3', 'Content of Lesson 3 for CSS Module 7', 17),
('Lesson 4', 'Content of Lesson 4 for CSS Module 7', 17),
('Lesson 5', 'Content of Lesson 5 for CSS Module 7', 17),
('Lesson 6', 'Content of Lesson 6 for CSS Module 7', 17),
('Lesson 7', 'Content of Lesson 7 for CSS Module 7', 17),
('Lesson 8', 'Content of Lesson 8 for CSS Module 7', 17),
('Lesson 9', 'Content of Lesson 9 for CSS Module 7', 17),
('Lesson 10', 'Content of Lesson 10 for CSS Module 7', 17);

-- Lessons for CSS Module 8
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for CSS Module 8', 18),
('Lesson 2', 'Content of Lesson 2 for CSS Module 8', 18),
('Lesson 3', 'Content of Lesson 3 for CSS Module 8', 18),
('Lesson 4', 'Content of Lesson 4 for CSS Module 8', 18),
('Lesson 5', 'Content of Lesson 5 for CSS Module 8', 18),
('Lesson 6', 'Content of Lesson 6 for CSS Module 8', 18),
('Lesson 7', 'Content of Lesson 7 for CSS Module 8', 18),
('Lesson 8', 'Content of Lesson 8 for CSS Module 8', 18),
('Lesson 9', 'Content of Lesson 9 for CSS Module 8', 18),
('Lesson 10', 'Content of Lesson 10 for CSS Module 8', 18);

-- Lessons for CSS Module 9
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for CSS Module 9', 19),
('Lesson 2', 'Content of Lesson 2 for CSS Module 9', 19),
('Lesson 3', 'Content of Lesson 3 for CSS Module 9', 19),
('Lesson 4', 'Content of Lesson 4 for CSS Module 9', 19),
('Lesson 5', 'Content of Lesson 5 for CSS Module 9', 19),
('Lesson 6', 'Content of Lesson 6 for CSS Module 9', 19),
('Lesson 7', 'Content of Lesson 7 for CSS Module 9', 19),
('Lesson 8', 'Content of Lesson 8 for CSS Module 9', 19),
('Lesson 9', 'Content of Lesson 9 for CSS Module 9', 19),
('Lesson 10', 'Content of Lesson 10 for CSS Module 9', 19);

-- Lessons for CSS Module 10
INSERT INTO lessons (name, description, id_module)
VALUES ('Lesson 1', 'Content of Lesson 1 for CSS Module 10', 20),
('Lesson 2', 'Content of Lesson 2 for CSS Module 10', 20),
('Lesson 3', 'Content of Lesson 3 for CSS Module 10', 20),
('Lesson 4', 'Content of Lesson 4 for CSS Module 10', 20),
('Lesson 5', 'Content of Lesson 5 for CSS Module 10', 20),
('Lesson 6', 'Content of Lesson 6 for CSS Module 10', 20),
('Lesson 7', 'Content of Lesson 7 for CSS Module 10', 20),
('Lesson 8', 'Content of Lesson 8 for CSS Module 10', 20),
('Lesson 9', 'Content of Lesson 9 for CSS Module 10', 20),
('Lesson 10', 'Content of Lesson 10 for CSS Module 10', 20);

-- Users
INSERT INTO users (first_name, last_name, phone, email, birth_date, id_genre, identification, password, id_rol)
VALUES ('Juan', 'Perez', '310-123-4567', 'juan@gmail.com', '1990-05-15', 1, '123456789', 'contrasena1', 3),
('Ana', 'Gomez', '313-987-6543', 'ana@gmail.com', '1995-08-20', 2, '987654321', 'contrasena2', 3),
('Carlos', 'Lopez', '321-555-5555', 'carlos@gmail.com', '1987-03-10', 1, '555555555', 'contrasena3', 3),
('Maria', 'Rodriguez', '310-777-7777', 'maria@gmail.com', '1992-12-02', 2, '777777777', 'contrasena4', 3),
('Luis', 'Martinez', '313-111-1111', 'luis@gmail.com', '1985-09-25', 1, '111111111', 'contrasena5', 3),
('Elena', 'Chavez', '321-999-9999', 'elena@gmail.com', '1998-06-18', 2, '999999999', 'contrasena6', 3),
('David', 'Torres', '310-222-2222', 'david@gmail.com', '1983-11-30', 1, '222222222', 'contrasena7',  3),
('Sara', 'Gonzalez', '313-666-6666', 'sara@gmail.com', '1993-04-12', 2, '666666666', 'contrasena8', 3),
('Pedro', 'Ramirez', '321-888-8888', 'pedro@gmail.com', '1996-07-05', 1, '888888888', 'contrasena9', 3),
('Laura', 'Hernandez', '310-444-4444', 'laura@gmail.com', '1990-02-28', 2, '444444444', 'contrasena10', 3);

-- Inserting data into the address table
INSERT INTO adresses (neighborhood, street_number, department, description, id_country)
VALUES ('Center', '123 Main Street #456', 'Garzón, Huila', 'Green House', 1),
('San Jose', '789 Elm Street #101', 'Garzón, Huila', 'Third Floor', 1),
('Hopeville', '567 Oak Street #202', 'Garzón, Huila', 'Building 2', 1),
('The Forest', '345 Pine Street #303', 'Garzón, Huila', 'Yellow House', 1),
('San Francisco', '678 Maple Street #404', 'Garzón, Huila', 'Apartment 5A', 1),
('Carmen', '432 Redwood Street #505', 'Garzón, Huila', 'Blue House', 1),
('Meadowland', '876 Cherry Street #606', 'Garzón, Huila', 'Building 1', 1),
('Villa Hermosa', '210 Willow Street #707', 'Garzón, Huila', 'Apartment 3B', 1),
('Pine Hills', '543 Cedar Street #808', 'Garzón, Huila', 'Red House', 1),
('The Alps', '999 Spruce Street #909', 'Garzón, Huila', 'Apartment 7C', 1);
  
-- =====================================================================================================================================================
--     ================================= ASSIGNING ADDRESSES TO EACH USER =======================================================
-- =====================================================================================================================================================

-- Updating the users table to assign addresses to specific users
UPDATE users SET id_adress = 1 WHERE id_user = 1;
UPDATE users SET id_adress = 2 WHERE id_user = 2;
UPDATE users SET id_adress = 3 WHERE id_user = 3;
UPDATE users SET id_adress = 4 WHERE id_user = 4;
UPDATE users SET id_adress = 5 WHERE id_user = 5;
UPDATE users SET id_adress = 6 WHERE id_user = 6;
UPDATE users SET id_adress = 7 WHERE id_user = 7;
UPDATE users SET id_adress = 8 WHERE id_user = 8;
UPDATE users SET id_adress = 9 WHERE id_user = 9;
UPDATE users SET id_adress = 10 WHERE id_user = 10;

-- =====================================================================================================================================================
--     ======================================================= COURSES_USERS TABLE ========================================================
-- =====================================================================================================================================================

-- Inserting records into the courses_users table to assign courses to users randomly
INSERT INTO courses_users (id_course, id_user)
SELECT c.id_course, u.id_user
FROM courses c
CROSS JOIN users u;

-- =======================================================================================================================================================
--     ===================================== PROGRESS_USERS TABLE ===============================================================
-- =======================================================================================================================================================

-- Adding records to the progress_users table for all users randomly.
INSERT INTO progress_users (id_user, id_course, id_module)
SELECT cu.id_user, cu.id_course, m.id_module
FROM courses_users cu
CROSS JOIN modules m
WHERE cu.id_course IN (1, 2);

-- =====================================================================================================================================================
--     ===============================================================  TESTING ===================================================================
-- =====================================================================================================================================================

SELECT * FROM courses;
SELECT * FROM courses_users;
SELECT * FROM adresses;
SELECT * FROM genres;
SELECT * FROM lessons;
SELECT * FROM modules;
SELECT * FROM countries;
SELECT * FROM progress_users;
SELECT * FROM roles;
SELECT * FROM users;