import type { Request, Response } from "express";
import masterDataService from "../services/master-data.service";

const getProvinsi = async (req: Request, res: Response) => {
	try {
		const data = await masterDataService.getAllProvinsi();
		res.status(200).json({ status: 200, data: data });
	} catch (error) {
		res.status(500).json({ error: error });
	}
};

const getStandarBiayaMasukan = async (req: Request, res: Response) => {
	try {
		const data = await masterDataService.getAllStandarBiayaMasukan();
		return res.status(200).json({ status: 200, data: data });
	} catch (error) {
		return res.status(500).json({ error: error });
	}
};

const getKategori = async (req: Request, res: Response) => {
	try {
		const { sbm } = req.query;
		const sbmId = Number(sbm);
		// console.log(sbm);
		// let data;
		if (sbm) {
			const data = await masterDataService.getKategoriBySbmId(sbmId);
			res.status(200).json({ status: 200, data: data });
		}
		const data = await masterDataService.getAllKategori();
		res.status(200).json({ status: 200, data: data });
	} catch (error) {
		res.status(500).json({ error: error });
	}
};

export default {
	getProvinsi,
	getStandarBiayaMasukan,
	getKategori,
};
