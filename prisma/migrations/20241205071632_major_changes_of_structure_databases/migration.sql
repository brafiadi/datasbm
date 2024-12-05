/*
  Warnings:

  - You are about to drop the `honorarium_penanggung_jawab_pengelola_keuangan` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `kategori_honorarium_penanggung_jawab_pengelola_keuangan` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `perjalanan_dinas_penginapan_dalam_negeri` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `perjalanan_dinas_uang_harian_dalam_negeri` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "honorarium_penanggung_jawab_pengelola_keuangan" DROP CONSTRAINT "honorarium_penanggung_jawab_pengelola_keuangan_kategori_id_fkey";

-- DropForeignKey
ALTER TABLE "perjalanan_dinas_penginapan_dalam_negeri" DROP CONSTRAINT "perjalanan_dinas_penginapan_dalam_negeri_provinsi_id_fkey";

-- DropForeignKey
ALTER TABLE "perjalanan_dinas_uang_harian_dalam_negeri" DROP CONSTRAINT "perjalanan_dinas_uang_harian_dalam_negeri_provinsi_id_fkey";

-- DropTable
DROP TABLE "honorarium_penanggung_jawab_pengelola_keuangan";

-- DropTable
DROP TABLE "kategori_honorarium_penanggung_jawab_pengelola_keuangan";

-- DropTable
DROP TABLE "perjalanan_dinas_penginapan_dalam_negeri";

-- DropTable
DROP TABLE "perjalanan_dinas_uang_harian_dalam_negeri";

-- CreateTable
CREATE TABLE "biaya" (
    "id" SERIAL NOT NULL,
    "standar_biaya_masukan_id" INTEGER NOT NULL,
    "kategori_id" INTEGER,
    "sub_kategori_id" INTEGER,
    "provinsi_id" INTEGER,
    "nilai_1" INTEGER,
    "nilai_2" INTEGER,
    "nilai_3" INTEGER,
    "nilai_4" INTEGER,
    "nilai_5" INTEGER,
    "nilai_6" INTEGER,
    "tahun" TEXT NOT NULL,

    CONSTRAINT "biaya_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "biaya" ADD CONSTRAINT "biaya_standar_biaya_masukan_id_fkey" FOREIGN KEY ("standar_biaya_masukan_id") REFERENCES "standar_biaya_masukan"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "biaya" ADD CONSTRAINT "biaya_kategori_id_fkey" FOREIGN KEY ("kategori_id") REFERENCES "kategori"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "biaya" ADD CONSTRAINT "biaya_sub_kategori_id_fkey" FOREIGN KEY ("sub_kategori_id") REFERENCES "sub_kategori"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "biaya" ADD CONSTRAINT "biaya_provinsi_id_fkey" FOREIGN KEY ("provinsi_id") REFERENCES "provinsi"("id") ON DELETE SET NULL ON UPDATE CASCADE;
