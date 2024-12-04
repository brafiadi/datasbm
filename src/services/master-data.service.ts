import { PrismaClient } from "@prisma/client";
import { getProvinsi, getStandarBiayaMasukanByTahun } from "@prisma/client/sql";

const prisma = new PrismaClient();

const getAllProvinsi = async () => {
	// return await prisma.provinsi.findMany();
	// return await prisma.$queryRaw`
	// 	SELECT *
	// 	FROM provinsi
	// `;
	return await prisma.$queryRawTyped(getProvinsi());
};

const getAllStandarBiayaMasukanByTahun = async (tahun: string) => {
	return await prisma.$queryRawTyped(getStandarBiayaMasukanByTahun(tahun));
};

export default {
	getAllProvinsi,
	getAllStandarBiayaMasukanByTahun,
};
