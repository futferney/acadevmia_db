import { pool } from "../db.js";

export const getModules = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM modules");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const getModule = async (req, res) => {
  try {
    const [rows] = await pool.query(
      "SELECT * FROM modules WHERE id_module = ?",
      [req.params.id]
    );
    if (rows.length <= 0)
      return res.status(404).json({
        message: "modules not found",
      });
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const createModules = async (req, res) => {
  const {
    name,
    description
  } = req.body;
  try {
    const [rows] = await pool.query(
      "INSERT INTO modules (name,description) VALUES (?,?,?)",
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

export const deleteModules = async (req, res) => {
  try {
    const [result] = await pool.query(
      "DELETE FROM modules WHERE id_module = ?",
      [req.params.id]
    );

    if (result.affectedRows <= 0)
      return res.status(404).json({
        message: "modules not found",
      });

    res.sendStatus(204);
  } catch (error) {
    return res.status(500).json({
      message: "Something Goes wrong",
    });
  }
};

export const updateModules = async (req, res) => {
  const { id } = req.params;
  const { name } = req.body;
  try {
    const [result] = await pool.query(
      "UPDATE modules SET nombre = IFNULL(?, name) WHERE id_module = ?",
      [name, id]
    );
    if (result === 0)
      return res.status(404).json({
        message: "name not found",
      });

    const [rows] = await pool.query(
      "SELECT * FROM modules WHERE id_module = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrOoOoOong",
    });
  }
};
