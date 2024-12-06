import type { Request, Response } from "express";
import sbmService from "../services/sbm.service";

const getSBMData = async (req: Request, res: Response) => {
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
				.json({ error: '"sbm" query parameter is required' });
		}
		const data = await sbmService.getSBMByIdAndTahun(sbm_id, tahun as string);
		res.status(200).json({ status: 200, data: data });
	} catch (error) {
		res.status(500).json({ error: error });
	}
};

export default {
	getSBMData,
};
