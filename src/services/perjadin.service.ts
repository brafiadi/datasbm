import { PrismaClient } from "@prisma/client";
import {
	getPerjadinUangHarianDalamNegeriByTahun,
	getPerjadinPenginapanDalamNegeriByTahun,
} from "@prisma/client/sql";

const prisma = new PrismaClient();

const getUangHarianDalamNegeriByTahun = async (tahun: string) => {
	return await prisma.$queryRawTyped(
		getPerjadinUangHarianDalamNegeriByTahun(tahun),
	);
};

const getPenginapanDalamNegeriByTahun = async (tahun: string) => {
	return await prisma.$queryRawTyped(
		getPerjadinPenginapanDalamNegeriByTahun(tahun),
	);
};

export default {
	getUangHarianDalamNegeriByTahun,
	getPenginapanDalamNegeriByTahun,
};
