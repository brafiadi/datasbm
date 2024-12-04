import type { Request, Response } from "express";
import honorariumService from "../services/honorarium.service";

export const getKategoriHonorariumPengelolaKeuangan = async (
	req: Request,
	res: Response,
) => {
	try {
		const data =
			await honorariumService.getListKategoriHonorariumPengelolaKeuangan();
		return res.status(200).json({ status: 200, data: data });
	} catch (error) {
		return res.status(500).json({ error: error });
	}
};

export const getHonorariumPengelolaKeuangan = async (
	req: Request,
	res: Response,
) => {
	try {
		const { kategori_id } = req.query;
		if (!kategori_id) {
			return res
				.status(400)
				.json({ error: '"kategori_id" query parameter is required' });
		}
		const data =
			await honorariumService.getListHonorariumPengelolaKeuanganByKategori(
				kategori_id as string,
			);
		return res.status(200).json({ status: 200, data: data });
	} catch (error) {
		return res.status(500).json({ error: error });
	}
};

export default {
	getKategoriHonorariumPengelolaKeuangan,
	getHonorariumPengelolaKeuangan,
};
