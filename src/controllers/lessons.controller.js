import { pool } from "../db.js";

export const getLessons = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM lessons");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const getLesson = async (req, res) => {
  try {
    const [rows] = await pool.query(
      "SELECT * FROM lessons WHERE id_lesson = ?",
      [req.params.id]
    );
    if (rows.length <= 0)
      return res.status(404).json({
        message: "lessons not found",
      });
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const createLessons = async (req, res) => {
  const {
      name,
      description
  } = req.body;
  try {
    const [rows] = await pool.query(
      "INSERT INTO lessons (name,description) VALUES (?,?,?)",
      [
        name,
        description
      ]
    );
    res.send({
      id: rows.insertId,
      name,
      description
    });
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const deleteLessons = async (req, res) => {
  try {
    const [result] = await pool.query(
      "DELETE FROM lessons WHERE id_lesson = ?",
      [req.params.id]
    );

    if (result.affectedRows <= 0)
      return res.status(404).json({
        message: "lessons not found",
      });

    res.sendStatus(204);
  } catch (error) {
    return res.status(500).json({
      message: "Something Goes wrong",
    });
  }
};

export const updateLessons = async (req, res) => {
  const { id } = req.params;
  const { name } = req.body;
  try {
    const [result] = await pool.query(
      "UPDATE lessons SET name = IFNULL(?, name) WHERE id_lesson = ?",
      [name, id]
    );
    if (result === 0)
      return res.status(404).json({
        message: "name not found",
      });

    const [rows] = await pool.query(
      "SELECT * FROM lessons WHERE id_lesson = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrOoOoOong",
    });
  }
};
