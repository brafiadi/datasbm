import expres, { type Router } from "express";
import perjadinController from "../controllers/perjadin.controller";

const router: Router = expres.Router();

router.get(
	"/uang-harian-dalam-negeri",
	perjadinController.getUangHarianDalamNegeriByTahun,
);

export default router;
