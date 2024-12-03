import expres, { Router } from "express";
import masterDataControler from "../controllers/master-data.controler";

const router: Router = expres.Router();

router.get("/provinsi", masterDataControler.getProvinsi);

export default router;
