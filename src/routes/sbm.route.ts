import expres, { type Router } from "express";
import sbmController from "../controllers/sbm.controller";

const router: Router = expres.Router();

router.get("/data", sbmController.getSBMData);

export default router;
