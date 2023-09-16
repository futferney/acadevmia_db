import { Router } from "express";
import {
  getCountries,
  updateCountries,
  createCountries,
  deleteCountries,
  getCountry
} from "../controllers/countries.controller.js";

const router = Router();

router.get("/countries", getCountries);
router.get("/countries/:id", getCountry);
router.post("/countries", createCountries);
router.patch("/countries/:id", updateCountries);
router.delete("/countries/:id", deleteCountries);

export default router;
