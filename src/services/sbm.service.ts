import { PrismaClient } from "@prisma/client";
import { selectSBMByTahun } from "@prisma/client/sql";

const prisma = new PrismaClient();

const getSBMByIdAndTahun = async (id: number, tahun: string) => {
	return await prisma.$queryRawTyped(selectSBMByTahun(tahun, id));
};

export default {
	getSBMByIdAndTahun,
};
