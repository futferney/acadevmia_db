import { pool } from "../db.js";

export const getAddresses = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM addresses");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const getAddress = async (req, res) => {
  try {
    const [rows] = await pool.query(
      "SELECT * FROM addresses WHERE id_address = ?",
      [req.params.id]
    );
    if (rows.length <= 0)
      return res.status(404).json({
        message: "address not found",
      });
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const createAddresses = async (req, res) => {
  const {
    neighborhood,
    street_number,
    department,
    description
  } = req.body;
  try {
    const [rows] = await pool.query(
      "INSERT INTO addresses (neighborhood,street_number,department,description) VALUES (?,?,?,?)",
      [
        neighborhood,
        street_number,
        department,
        description
      ]
    );
    res.send({
      id: rows.insertId,
      neighborhood,
      street_number,
      department,
      description
    });
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const deleteAddresses = async (req, res) => {
  try {
    const [result] = await pool.query(
      "DELETE FROM addresses WHERE id_address = ?",
      [req.params.id]
    );

    if (result.affectedRows <= 0)
      return res.status(404).json({
        message: "addresses not found",
      });

    res.sendStatus(204);
  } catch (error) {
    return res.status(500).json({
      message: "Something Goes wrong",
    });
  }
};

export const updateAddresses = async (req, res) => {
  const { id } = req.params;
  const { neighborhood } = req.body;
  try {
    const [result] = await pool.query(
      "UPDATE addresses SET neighborhood = IFNULL(?, neighborhood) WHERE id_address = ?",
      [neighborhood, id]
    );
    if (result === 0)
      return res.status(404).json({
        message: "neighborhood not found",
      });

    const [rows] = await pool.query(
      "SELECT * FROM addresses WHERE id_address = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrOoOoOong",
    });
  }
};


