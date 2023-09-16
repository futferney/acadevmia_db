import { Router } from "express";
import {
  getRoles,
  updateRoles,
  createRoles,
  deleteRoles,
  getRol
} from "../controllers/roles.controller.js";

const router = Router();

router.get("/Roles", getRoles);
router.get("/Rol/:id", getRol);
router.post("/Roles", createRoles);
router.patch("/Roles/:id", updateRoles);
router.delete("/Roles/:id", deleteRoles);

export default router;
