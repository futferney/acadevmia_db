import { Router } from "express";
import {
  getModules,
  updateModules,
  createModules,
  deleteModules,
  getModule
} from "../controllers/Modules.controller.js";

const router = Router();

router.get("/modules", getModules);
router.get("/modules/:id", getModule);
router.post("/modules", createModules);
router.patch("/modules/:id", updateModules);
router.delete("/modules/:id", deleteModules);

export default router;