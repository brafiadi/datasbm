import expres, { type Router } from "express";
import honorariumController from "../controllers/honorarium.controller";

const router: Router = expres.Router();

router.get(
	"/kategori-pengelola-keuangan",
	honorariumController.getKategoriHonorariumPengelolaKeuangan,
);
router.get(
	"/pengelola-keuangan",
	honorariumController.getHonorariumPengelolaKeuangan,
);

export default router;
