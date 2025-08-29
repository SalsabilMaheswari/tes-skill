import express from "express";
import { authenticateJWT } from "../middleware/authMiddleware.js";
import { authorizeRoles } from "../middleware/roleMiddleware.js";
import {
  createPlant,
  getAllPlants,
  getPlantById, 
  updatePlant,
  deletePlant,
} from "../controllers/plantController.js";

const router = express.Router();

router.post("/", authenticateJWT, authorizeRoles("admin"), createPlant);
router.get("/", authenticateJWT, getAllPlants);
router.put("/:id", authenticateJWT, authorizeRoles("admin"), updatePlant);
router.delete("/:id", authenticateJWT, authorizeRoles("admin"), deletePlant);
router.get("/:id", authenticateJWT, getPlantById);

export default router;