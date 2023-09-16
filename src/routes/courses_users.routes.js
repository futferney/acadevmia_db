import { Router } from "express";
import {
  getCourses_users,
  updateCourses_users,
  createCourses_users,
  deleteCourses_users,
  getCourses_user
} from "../controllers/courses_users.controller.js";

const router = Router();

router.get("/courses_users", getCourses_users);
router.get("/course_user/:id", getCourses_user);
router.post("/courses_users", createCourses_users);
router.patch("/courses_users/:id", updateCourses_users);
router.delete("/courses_users/:id", deleteCourses_users);

export default router;