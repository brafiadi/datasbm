import { PrismaClient } from "@prisma/client";
import { getPerjadinUangHarianDalamNegeriByTahun } from "@prisma/client/sql";

const prisma = new PrismaClient();

const getUangHarianDalamNegeriByTahun = async (tahun: string) => {
	return await prisma.$queryRawTyped(
		getPerjadinUangHarianDalamNegeriByTahun(tahun),
	);
};

export default {
	getUangHarianDalamNegeriByTahun,
};
