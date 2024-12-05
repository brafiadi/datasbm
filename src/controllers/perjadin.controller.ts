import type { Request, Response } from "express";
import perjadinService from "../services/perjadin.service";

export const getUangHarianDalamNegeriByTahun = async (
	req: Request,
	res: Response,
) => {
	try {
		const { tahun } = req.query;
		if (!tahun) {
			return res
				.status(400)
				.json({ error: '"tahun" query parameter is required' });
		}

		const data = await perjadinService.getUangHarianDalamNegeriByTahun(
			tahun as string,
		);
		return res.status(200).json({ status: 200, data: data });
	} catch (error) {
		return res.status(500).json({ error: error });
	}
};

export const getPenginapanDalamNegeriByTahun = async (
	req: Request,
	res: Response,
) => {
	try {
		const { tahun } = req.query;
		if (!tahun) {
			return res
				.status(400)
				.json({ error: '"tahun" query parameter is required' });
		}

		const data = await perjadinService.getPenginapanDalamNegeriByTahun(
			tahun as string,
		);
		return res.status(200).json({ status: 200, data: data });
	} catch (error) {
		return res.status(500).json({ error: error });
	}
};

export default {
	getUangHarianDalamNegeriByTahun,
	getPenginapanDalamNegeriByTahun,
};
