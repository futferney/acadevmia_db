-- ===================================================================================================================================================
--        =======================================================> ENGLISH VERSION <=======================================================
-- ===================================================================================================================================================

CREATE SCHEMA IF NOT EXISTS acadevmia_db;

USE acadevmia_db;

CREATE TABLE IF NOT EXISTS courses ( 
  id_course INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) DEFAULT NULL,
  description TEXT DEFAULT NULL,
  PRIMARY KEY (id_course)
);

CREATE TABLE IF NOT EXISTS countries (
  id_country INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (id_country)
);


CREATE TABLE IF NOT EXISTS addresses (
  id_address INT NOT NULL AUTO_INCREMENT,
  neighborhood VARCHAR(50) DEFAULT NULL,
  street_number VARCHAR(50) DEFAULT NULL,
  department VARCHAR(50) DEFAULT NULL,
  description VARCHAR(50) DEFAULT NULL,
  id_country INT NOT NULL,
  PRIMARY KEY (id_adress),
  INDEX fk_adresses_countries1_idx (id_country ASC),
  CONSTRAINT fk_adresses_countries1
    FOREIGN KEY (id_country)
    REFERENCES countries (id_country)
);

CREATE TABLE IF NOT EXISTS roles (
  id_rol INT NOT NULL AUTO_INCREMENT,
  rol VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (id_rol)
);

CREATE TABLE IF NOT EXISTS genres (
  id_genre INT NOT NULL AUTO_INCREMENT,
  genero VARCHAR(25),
  PRIMARY KEY (id_genre)
);

CREATE TABLE IF NOT EXISTS users (
  id_user INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(50) DEFAULT NULL,
  last_name VARCHAR(50) DEFAULT NULL,
  phone VARCHAR(50) DEFAULT NULL,
  email VARCHAR(50) DEFAULT NULL,
  birth_date DATE DEFAULT NULL,
  identification VARCHAR(50) DEFAULT NULL,
  password VARCHAR(50) DEFAULT NULL,
  id_adress INT NULL,
  id_rol INT NULL,
  id_genre INT NULL,
  PRIMARY KEY (id_user),
  INDEX fk_users_adresses_idx (id_adress ASC),
  INDEX fk_users_roles1_idx (id_rol ASC),
  INDEX fk_users_genres1_idx (id_genre ASC),
  CONSTRAINT fk_users_adresses
    FOREIGN KEY (id_adress)
    REFERENCES adresses (id_adress),
  CONSTRAINT fk_users_roles1
    FOREIGN KEY (id_rol)
    REFERENCES roles (id_rol),
  CONSTRAINT fk_users_genres1
    FOREIGN KEY (id_genre)
    REFERENCES genres (id_genre)
);


CREATE TABLE IF NOT EXISTS courses_users (
  id_course_user INT NOT NULL AUTO_INCREMENT,
  id_course INT NOT NULL,
  id_user INT NOT NULL,
  PRIMARY KEY (id_course_user),
  INDEX fk_courses_has_users_users1_idx (id_user ASC),
  INDEX fk_courses_has_users_courses1_idx (id_course ASC),
  CONSTRAINT fk_courses_has_users_courses1
    FOREIGN KEY (id_course)
    REFERENCES courses(id_course),
  CONSTRAINT fk_courses_has_users_users1
    FOREIGN KEY (id_user)
    REFERENCES users (id_user)
);

CREATE TABLE IF NOT EXISTS modules (
  id_module INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NULL DEFAULT NULL,
  description TEXT NULL DEFAULT NULL,
  id_course INT NOT NULL,
  PRIMARY KEY (id_module),
  INDEX fk_modules_courses1_idx (id_course ASC),
  CONSTRAINT fk_modules_courses1
    FOREIGN KEY (id_course)
    REFERENCES courses (id_course)
);

CREATE TABLE IF NOT EXISTS lessons (
  id_lesson INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) DEFAULT NULL,
  description TEXT DEFAULT NULL,
  id_module INT NOT NULL,
  PRIMARY KEY (id_lesson),
  INDEX fk_lessons_modules1_idx (id_module ASC),
  CONSTRAINT fk_lessons_modules1
    FOREIGN KEY (id_module)
    REFERENCES modules (id_module)
);

CREATE TABLE IF NOT EXISTS progress_users (
  id_progress_user INT NOT NULL AUTO_INCREMENT,
  id_user INT NOT NULL,
  id_course INT NOT NULL,
  id_module INT NOT NULL,
  PRIMARY KEY (id_progress_user),
  INDEX fk_progress_user_users1_idx (id_user ASC),
  INDEX fk_progreso_usuario_courses1_idx (id_course ASC),
  INDEX fk_progreso_usuario_modules1_idx (id_module ASC),
  CONSTRAINT fk_progreso_usuario_courses1
    FOREIGN KEY (id_course)
    REFERENCES courses (id_course),
  CONSTRAINT fk_progreso_usuario_modules1
    FOREIGN KEY (id_module)
    REFERENCES modules (id_module),
  CONSTRAINT fk_progreso_usuario_users1
    FOREIGN KEY (id_user)
    REFERENCES users (id_user)
);

-- ===================================================================================================================================================
--        =======================================================> VERSIÓN EN ESPAÑOL <=======================================================
-- ===================================================================================================================================================


CREATE SCHEMA IF NOT EXISTS acadevmia_db;

USE acadevmia_db;

CREATE TABLE IF NOT EXISTS cursos (
  id_curso INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NULL DEFAULT NULL,
  descripcion TEXT NULL DEFAULT NULL,
  PRIMARY KEY (id_curso)
);

CREATE TABLE IF NOT EXISTS paises (
  id_pais INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (id_pais)
);

CREATE TABLE IF NOT EXISTS direcciones (
  id_direccion INT NOT NULL AUTO_INCREMENT,
  barrio VARCHAR(45) NULL DEFAULT NULL,
  calle_numero VARCHAR(45) NULL DEFAULT NULL,
  departamento VARCHAR(45) NULL DEFAULT NULL,
  descripcion VARCHAR(45) NULL DEFAULT NULL,
  id_pais INT NOT NULL,
  PRIMARY KEY (id_direccion),
  INDEX fk_direcciones_paises1_idx (id_pais ASC),
  CONSTRAINT fk_direcciones_paises1
    FOREIGN KEY (id_pais)
    REFERENCES paises (id_pais)
);
CREATE TABLE IF NOT EXISTS roles (
  id_roles INT NOT NULL AUTO_INCREMENT,
  rol VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (id_roles)
);

CREATE TABLE IF NOT EXISTS generos (
  id_genero INT NOT NULL AUTO_INCREMENT,
  genero VARCHAR(25) NULL,
  PRIMARY KEY (id_genero)
);

CREATE TABLE IF NOT EXISTS usuarios (
  id_usuario INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(50) NULL DEFAULT NULL,
  apellido VARCHAR(45) NULL DEFAULT NULL,
  telefono VARCHAR(45) NULL DEFAULT NULL,
  correo VARCHAR(45) NULL DEFAULT NULL,
  fecha_nacimiento DATE NULL DEFAULT NULL,
  identificacion VARCHAR(45) NULL DEFAULT NULL,
  contrasenia VARCHAR(45) NULL DEFAULT NULL,
  id_direccion INT NULL,
  id_rol INT NOT NULL,
  id_genero INT NULL,
  PRIMARY KEY (id_usuario),
  INDEX fk_usuarios_direcciones_idx (id_direccion ASC),
  INDEX fk_usuarios_roles1_idx (id_rol ASC),
  INDEX fk_usuarios_Generos1_idx (id_genero ASC),
  CONSTRAINT fk_usuarios_direcciones
    FOREIGN KEY (id_direccion)
    REFERENCES direcciones (id_direccion),
  CONSTRAINT fk_usuarios_roles1
    FOREIGN KEY (id_rol)
    REFERENCES roles (id_roles),
  CONSTRAINT fk_usuarios_Generos1
    FOREIGN KEY (id_genero)
    REFERENCES generos (id_genero)
);

CREATE TABLE IF NOT EXISTS cursos_usuarios (
  id_curso_usuario INT NOT NULL AUTO_INCREMENT,
  id_curso INT NOT NULL,
  id_usuario INT NOT NULL,
  PRIMARY KEY (id_curso_usuario),
  INDEX fk_cursos_has_usuarios_usuarios1_idx (id_usuario ASC),
  INDEX fk_cursos_has_usuarios_cursos1_idx (id_curso ASC),
  CONSTRAINT fk_cursos_has_usuarios_cursos1
    FOREIGN KEY (id_curso)
    REFERENCES cursos (id_curso),
  CONSTRAINT fk_cursos_has_usuarios_usuarios1
    FOREIGN KEY (id_usuario)
    REFERENCES usuarios (id_usuario)
);

CREATE TABLE IF NOT EXISTS modulos (
  id_modulo INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NULL DEFAULT NULL,
  descripcion TEXT NULL DEFAULT NULL,
  id_curso INT NOT NULL,
  PRIMARY KEY (id_modulo),
  INDEX fk_modulos_cursos1_idx (id_curso ASC),
  CONSTRAINT fk_modulos_cursos1
    FOREIGN KEY (id_curso)
    REFERENCES cursos (id_curso)
);

CREATE TABLE IF NOT EXISTS lecciones (
  id_leccion INT NOT NULL AUTO_INCREMENT,
  nombre VARCHAR(45) NULL DEFAULT NULL,
  descripcion TEXT NULL DEFAULT NULL,
  id_modulo INT NOT NULL,
  PRIMARY KEY (id_leccion),
  INDEX fk_lecciones_modulos1_idx (id_modulo ASC),
  CONSTRAINT fk_lecciones_modulos1
    FOREIGN KEY (id_modulo)
    REFERENCES modulos (id_modulo)
);

CREATE TABLE IF NOT EXISTS progresos_usuarios (
  id_progreso_usuario INT NOT NULL AUTO_INCREMENT,
  id_usuario INT NOT NULL,
  id_curso INT NOT NULL,
  id_modulo INT NOT NULL,
  PRIMARY KEY (id_progreso_usuario),
  INDEX fk_progreso_usuario_usuarios1_idx (id_usuario ASC),
  INDEX fk_progreso_usuario_cursos1_idx (id_curso ASC),
  INDEX fk_progreso_usuario_modulos1_idx (id_modulo ASC),
  CONSTRAINT fk_progreso_usuario_cursos1
    FOREIGN KEY (id_curso)
    REFERENCES cursos (id_curso),
  CONSTRAINT fk_progreso_usuario_modulos1
    FOREIGN KEY (id_modulo)
    REFERENCES modulos (id_modulo),
  CONSTRAINT fk_progreso_usuario_usuarios1
    FOREIGN KEY (id_usuario)
    REFERENCES usuarios (id_usuario)
);
