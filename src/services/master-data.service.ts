import { PrismaClient } from "@prisma/client";

const prisma = new PrismaClient();

const getAllProvinsi = async () => {
	return await prisma.provinsi.findMany();
};

export default {
	getAllProvinsi,
};
