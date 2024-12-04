import type { Request, Response } from "express";
import masterDataService from "../services/master-data.service";

const getProvinsi = async (req: Request, res: Response) => {
	try {
		const provinsi = await masterDataService.getAllProvinsi();
		res.status(200).json({ status: 200, data: provinsi });
	} catch (error) {
		res.status(500).json({ error: "Error fetching provinsi data" });
	}
};

const getStandarBiayaMasukanByTahun = async (req: Request, res: Response) => {
	try {
		const { tahun } = req.query;
		if (!tahun) {
			return res
				.status(400)
				.json({ error: '"tahun" query parameter is required' });
		}

		const data = await masterDataService.getAllStandarBiayaMasukanByTahun(
			tahun as string,
		);
		return res.status(200).json({ status: 200, data: data });
	} catch (error) {
		return res.status(500).json({ error: error });
	}
};

export default {
	getProvinsi,
	getStandarBiayaMasukanByTahun,
};
