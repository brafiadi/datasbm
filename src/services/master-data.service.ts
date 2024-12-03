import { PrismaClient } from "@prisma/client";
import { getProvinsi } from "@prisma/client/sql";

const prisma = new PrismaClient();

const getAllProvinsi = async () => {
	// return await prisma.provinsi.findMany();
	// return await prisma.$queryRaw`
	// 	SELECT *
	// 	FROM provinsi
	// `;
	return await prisma.$queryRawTyped(getProvinsi());
};

export default {
	getAllProvinsi,
};
