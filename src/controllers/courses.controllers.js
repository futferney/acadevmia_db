import { pool } from "../db.js";

export const getCourses = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM courses");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const getCourse = async (req, res) => {
  try {
    const [rows] = await pool.query(
      "SELECT * FROM courses WHERE id_course = ?",
      [req.params.id]
    );
    if (rows.length <= 0)
      return res.status(404).json({
        message: "Course not found",
      });
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const createCourses = async (req, res) => {
  const {
    name,
    description,
  } = req.body;
  try {
    const [rows] = await pool.query(
      "INSERT INTO courses (name, description) VALUES (?,?)",
      [
        name,
        description,
      ]
    );
    res.send({
      id: rows.insertId,
      name,
      description,
    });
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const deleteCourses = async (req, res) => {
  try {
    const [result] = await pool.query(
      "DELETE FROM courses WHERE id_course = ?",
      [req.params.id]
    );

    if (result.affectedRows <= 0)
      return res.status(404).json({
        message: "courses not found",
      });

    res.sendStatus(204);
  } catch (error) {
    return res.status(500).json({
      message: "Something Goes wrong",
    });
  }
};

export const updateCourses = async (req, res) => {
  const { id } = req.params;
  const { name } = req.body;
  try {
    const [result] = await pool.query(
      "UPDATE courses SET name = IFNULL(?, name) WHERE id_course = ?",
      [name, id]
    );
    if (result === 0)
      return res.status(404).json({
        message: "courses not found",
      });

    const [rows] = await pool.query(
      "SELECT * FROM courses WHERE id_course = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrOoOoOong",
    });
  }
};
