import { pool } from "../db.js";

export const getProgress_users = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM progress_users");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const getProgress_user = async (req, res) => {
  try {
    const [rows] = await pool.query(
      "SELECT * FROM progress_users WHERE id_progress_user = ?",
      [req.params.id]
    );
    if (rows.length <= 0)
      return res.status(404).json({
        message: "progress_users not found",
      });
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

//es nesesario ??? (ferney para jorge)
export const createProgress_users = async (req, res) => {
  const {
    nombre
  } = req.body;
  try {
    const [rows] = await pool.query(
      "INSERT INTO progress_users (nombre) VALUES (?,?)",
      [
        nombre
      ]
    );
    res.send({
      id: rows.insertId,
      nombre
    });
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const deleteProgress_users = async (req, res) => {
  try {
    const [result] = await pool.query(
      "DELETE FROM progress_users WHERE id_progress_user = ?",
      [req.params.id]
    );

    if (result.affectedRows <= 0)
      return res.status(404).json({
        message: "progress_users not found",
      });

    res.sendStatus(204);
  } catch (error) {
    return res.status(500).json({
      message: "Something Goes wrong",
    });
  }
};

export const updateProgress_users = async (req, res) => {
  const { id } = req.params;
  const { nombre } = req.body;
  try {
    const [result] = await pool.query(
      "UPDATE progress_users SET nombre = IFNULL(?, nombre) WHERE id_progress_user = ?",
      [nombre, id]
    );
    if (result === 0)
      return res.status(404).json({
        message: "User not found",
      });

    const [rows] = await pool.query(
      "SELECT * FROM progress_users WHERE id_progress_user = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrOoOoOong",
    });
  }
};
