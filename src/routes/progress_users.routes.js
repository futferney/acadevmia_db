import { Router } from "express";
import {
  getProgress_users,
  updateProgress_users,
  createProgress_users,
  deleteProgress_users,
  getProgress_user
} from "../controllers/progress_users.controller.js";

const router = Router();

router.get("/progress", getProgress_users);
router.get("/progress/:id", getProgress_user);
router.post("/progress", createProgress_users);
router.patch("/progress/:id", updateProgress_users);
router.delete("/progress/:id", deleteProgress_users);

export default router;
