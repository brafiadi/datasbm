import expres, { type Router } from "express";
import honorariumController from "../controllers/honorarium.controller";

const router: Router = expres.Router();

router.get(
	"/pengelola-keuangan",
	honorariumController.getHonorariumPengelolaKeuangan,
);

export default router;
