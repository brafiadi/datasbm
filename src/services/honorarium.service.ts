import { PrismaClient } from "@prisma/client";
import { selectHonorPengelolaKeuangan } from "@prisma/client/sql";

const prisma = new PrismaClient();

const getHonorPengelolaKeuangan = async (tahun: string, sbm_id: number) => {
	return await prisma.$queryRawTyped(
		selectHonorPengelolaKeuangan(tahun, sbm_id),
	);
};

export default {
	getHonorPengelolaKeuangan,
};
