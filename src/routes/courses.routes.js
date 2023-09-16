import { Router } from "express";
import {
  getCourses,
  updateCourses,
  createCourses,
  deleteCourses,
  getCourse
} from "../controllers/courses.controllers.js";

const router = Router();

router.get("/courses", getCourses);
router.get("/course/:id", getCourse);
router.post("/courses", createCourses);
router.patch("/courses/:id", updateCourses);
router.delete("/courses/:id", deleteCourses);

export default router;