import expres, { type Router } from "express";
import masterDataControler from "../controllers/master-data.controller";

const router: Router = expres.Router();

router.get("/provinsi", masterDataControler.getProvinsi);
router.get(
	"/standar-biaya-masukan",
	masterDataControler.getStandarBiayaMasukanByTahun,
);

export default router;
