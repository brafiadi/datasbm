import { type Request, type Response } from "express";
import masterDataService from "../services/master-data.service";

const getProvinsi = async (req: Request, res: Response) => {
	try {
		const provinsi = await masterDataService.getAllProvinsi();
		res.status(200).json({ status: 200, data: provinsi });
	} catch (error) {
		res.status(500).json({ error: "Error fetching provinsi data" });
	}
};

export default {
	getProvinsi,
};
