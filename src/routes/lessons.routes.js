import { Router } from "express";
import {
  getLessons,
  updateLessons,
  createLessons,
  deleteLessons,
  getLesson
} from "../controllers/lessons.controller.js";

const router = Router();

router.get("/lessons", getLessons);
router.get("/lessons/:id", getLesson);
router.post("/lessons", createLessons);
router.patch("/lessons/:id", updateLessons);
router.delete("/lessons/:id", deleteLessons);

export default router;