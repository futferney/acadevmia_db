import { pool } from "../db.js";

export const getUsers = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM users");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const getUser = async (req, res) => {
  try {
    const [rows] = await pool.query(
      "SELECT * FROM users WHERE id_user = ?",
      [req.params.id]
    );
    if (rows.length <= 0)
      return res.status(404).json({
        message: "User not found",
      });
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const createUsers = async (req, res) => {
  const {
    name,
    last_name,
    phone,
    email,
    birth_date,
    identification,
    password,
    role_id,
    gender_id,
  } = req.body;
  try {
    const [rows] = await pool.query(
      "INSERT INTO users(name, last_name, phone, email, birth_date, identification, password, role_id, gender_id) VALUES (?,?,?,?,?,?,?,?,?)",
      [
        name,
        last_name,
        phone,
        email,
        birth_date,
        identification,
        password,
        role_id,
        gender_id,
      ]
    );
    res.send({
      id: rows.insertId,
      name,
      last_name,
      phone,
      email,
      birth_date,
      identification,
      password,
      role_id,
      gender_id,
    });
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const deleteUsers = async (req, res) => {
  try {
    const [result] = await pool.query(
      "DELETE FROM users WHERE id_user = ?",
      [req.params.id]
    );

    if (result.affectedRows <= 0)
      return res.status(404).json({
        message: "User not found",
      });

    res.sendStatus(204);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const updateUsers = async (req, res) => {
  const { id } = req.params;
  const { name } = req.body;
  try {
    const [result] = await pool.query(
      "UPDATE users SET name = IFNULL(?, name) WHERE id_user = ?",
      [name, id]
    );
    if (result === 0)
      return res.status(404).json({
        message: "User not found",
      });

    const [rows] = await pool.query(
      "SELECT * FROM users WHERE id_user = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};
