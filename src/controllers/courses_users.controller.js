import { pool } from "../db.js";

export const getCourses_users = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM courses_users");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const getCourses_user = async (req, res) => {
  try {
    const [rows] = await pool.query(
      "SELECT * FROM courses_users WHERE id_course_user = ?",
      [req.params.id]
    );
    if (rows.length <= 0)
      return res.status(404).json({
        message: "Country not found",
      });
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};


export const createCourses_users = async (req, res) => {
  const {
    id_course_user
  } = req.body;
  try {
    const [rows] = await pool.query(
      "INSERT INTO courses_users (nombre) VALUES (?,?)",
      [
        id_course_user
      ]
    );
    res.send({
      id: rows.insertId,
      id_course_user
    });
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const deleteCourses_users = async (req, res) => {
  try {
    const [result] = await pool.query(
      "DELETE FROM courses_users WHERE id_course_user = ?",
      [req.params.id]
    );

    if (result.affectedRows <= 0)
      return res.status(404).json({
        message: "Courses_users not found",
      });

    res.sendStatus(204);
  } catch (error) {
    return res.status(500).json({
      message: "Something Goes wrong",
    });
  }
};

//se nesesita esta tabla (ferney)
export const updateCourses_users = async (req, res) => {
  const { id } = req.params;
  const { id_course_user } = req.body;
  try {
    const [result] = await pool.query(
      "UPDATE courses_users SET id_course_user = IFNULL(?, id_course_user) WHERE id_course_user = ?",
      [id_course_user, id]
    );
    if (result === 0)
      return res.status(404).json({
        message: "courses_users not found",
      });

    const [rows] = await pool.query(
      "SELECT * FROM courses_users WHERE id_course_user = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrOoOoOong",
    });
  }
};
