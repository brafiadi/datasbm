import { PrismaClient } from "@prisma/client";
import {
	getKategoriHonorariumPengelolaKeuangan,
	getHonorariumPengelolaKeuangan,
} from "@prisma/client/sql";

const prisma = new PrismaClient();

const getListKategoriHonorariumPengelolaKeuangan = async () => {
	// return await prisma.$queryRawTyped(getKategoriHonorariumPengelolaKeuangan());
	return await prisma.$queryRaw`
	SELECT *
	FROM kategori_honorarium_penanggung_jawab_pengelola_keuangan`;
};

const getListHonorariumPengelolaKeuanganByKategori = async (
	kategori_id: string,
) => {
	return await prisma.$queryRawTyped(
		getHonorariumPengelolaKeuangan(Number(kategori_id)),
	);
};

export default {
	getListKategoriHonorariumPengelolaKeuangan,
	getListHonorariumPengelolaKeuanganByKategori,
};
