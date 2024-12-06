import { PrismaClient } from "@prisma/client";
import { selectAllKategori, selectAllKategoriById } from "@prisma/client/sql";

const prisma = new PrismaClient();

const getAllProvinsi = async () => {
	return await prisma.$queryRaw`
		SELECT *
		FROM provinsi
	`;
};

const getAllStandarBiayaMasukan = async () => {
	return await prisma.$queryRaw`
		SELECT id, judul, jenis, link
		FROM standar_biaya_masukan
		ORDER BY id
	`;
};

const getAllKategori = async () => {
	return await prisma.$queryRawTyped(selectAllKategori());
};

const getKategoriBySbmId = async (sbmId: number) => {
	return await prisma.$queryRawTyped(selectAllKategoriById(sbmId));
};

export default {
	getAllProvinsi,
	getAllStandarBiayaMasukan,
	getAllKategori,
	getKategoriBySbmId,
};
