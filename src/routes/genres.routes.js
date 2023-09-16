import { Router } from "express";
import {
  getGenres,
  updateGenres,
  createGenres,
  deleteGenres,
  getGenre
} from "../controllers/genres.controller.js";

const router = Router();

router.get("/Genres", getGenres);
router.get("/Genres/:id", getGenre);
router.post("/Genres", createGenres);
router.patch("/Genres/:id", updateGenres);
router.delete("/Genres/:id", deleteGenres);

export default router;
