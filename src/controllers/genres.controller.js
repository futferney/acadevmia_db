import { pool } from "../db.js";

export const getGenres = async (req, res) => {
  try {
    const [rows] = await pool.query("SELECT * FROM genres");
    res.json(rows);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const getGenre = async (req, res) => {
  try {
    const [rows] = await pool.query(
      "SELECT * FROM genres WHERE id_genre = ?",
      [req.params.id]
    );
    if (rows.length <= 0)
      return res.status(404).json({
        message: "genre not found",
      });
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const createGenres = async (req, res) => {
  const {
    genero
  } = req.body;
  try {
    const [rows] = await pool.query(
      "INSERT INTO genres (genero) VALUES (?,?)",
      [
        genero
      ]
    );
    res.send({
      id: rows.insertId,
      genero
    });
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrong",
    });
  }
};

export const deleteGenres = async (req, res) => {
  try {
    const [result] = await pool.query(
      "DELETE FROM genres WHERE id_genre = ?",
      [req.params.id]
    );

    if (result.affectedRows <= 0)
      return res.status(404).json({
        message: "genres not found",
      });

    res.sendStatus(204);
  } catch (error) {
    return res.status(500).json({
      message: "Something Goes wrong",
    });
  }
};

export const updateGenres = async (req, res) => {
  const { id } = req.params;
  const { genero } = req.body;
  try {
    const [result] = await pool.query(
      "UPDATE genres SET genres = IFNULL(?, genres) WHERE id_genre = ?",
      [ genero, id]
    );
    if (result === 0)
      return res.status(404).json({
        message: "genres not found",
      });

    const [rows] = await pool.query(
      "SELECT * FROM genres WHERE id_genre = ?",
      [id]
    );
    res.json(rows[0]);
  } catch (error) {
    return res.status(500).json({
      message: "Something goes wrOoOoOong",
    });
  }
};
