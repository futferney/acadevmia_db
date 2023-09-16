import { pool } from "../db.js";

export const getCountries = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM countries");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const getCountry = async (req, res) => {
  try {
    const [rows] = await pool.query(
      "SELECT * FROM countries WHERE id_country = ?",
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

export const createCountries = async (req, res) => {
  const {
    name
  } = req.body;
  try {
    const [rows] = await pool.query(
      "INSERT INTO countries (name) VALUES (?,?)",
      [
        name
      ]
    );
    res.send({
      id: rows.insertId,
      name
    });
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const deleteCountries = async (req, res) => {
  try {
    const [result] = await pool.query(
      "DELETE FROM countries WHERE id_country = ?",
      [req.params.id]
    );

    if (result.affectedRows <= 0)
      return res.status(404).json({
        message: "country not found",
      });

    res.sendStatus(204);
  } catch (error) {
    return res.status(500).json({
      message: "Something Goes wrong",
    });
  }
};

export const updateCountries = async (req, res) => {
  const { id } = req.params;
  const { name } = req.body;
  try {
    const [result] = await pool.query(
      "UPDATE countries SET name = IFNULL(?, name) WHERE id_country = ?",
      [name, id]
    );
    if (result === 0)
      return res.status(404).json({
        message: "countries not found",
      });

    const [rows] = await pool.query(
      "SELECT * FROM countries WHERE id_country = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrOoOoOong",
    });
  }
};
