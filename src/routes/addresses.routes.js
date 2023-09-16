import { Router } from "express";
import {
  getAddresses,
  updateAddresses,
  createAddresses,
  deleteAddresses,
  getAddress
} from "../controllers/addresses.controller.js";

const router = Router();

router.get("/addresses", getAddresses);
router.get("/addresses/:id", getAddress);
router.post("/addresses", createAddresses);
router.patch("/addresses/:id", updateAddresses);
router.delete("/addresses/:id", deleteAddresses);

export default router;
