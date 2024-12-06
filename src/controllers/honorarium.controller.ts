import type { Request, Response } from "express";
import honorariumService from "../services/honorarium.service";

export const getHonorariumPengelolaKeuangan = async (
	req: Request,
	res: Response,
) => {
	try {
		const { tahun, sbm } = req.query;
		const sbm_id = Number(sbm);
		if (!tahun) {
			return res
				.status(400)
				.json({ error: '"tahun" query parameter is required' });
		}
		if (!sbm) {
			return res
				.status(400)
				.json({ error: '"tahun" sbm parameter is required' });
		}
		const data = await honorariumService.getHonorPengelolaKeuangan(
			tahun,
			sbm_id,
		);
		return res.status(200).json({ status: 200, data: data });
	} catch (error) {
		return res.status(500).json({ error: error });
	}
};

export default {
	getHonorariumPengelolaKeuangan,
};
