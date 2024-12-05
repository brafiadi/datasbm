/*
  Warnings:

  - You are about to drop the column `kategori_id` on the `biaya` table. All the data in the column will be lost.
  - You are about to drop the column `provinsi_id` on the `biaya` table. All the data in the column will be lost.
  - You are about to drop the column `standar_biaya_masukan_id` on the `biaya` table. All the data in the column will be lost.
  - You are about to drop the column `sub_kategori_id` on the `biaya` table. All the data in the column will be lost.
  - Added the required column `uraian_id` to the `biaya` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE "biaya" DROP CONSTRAINT "biaya_kategori_id_fkey";

-- DropForeignKey
ALTER TABLE "biaya" DROP CONSTRAINT "biaya_provinsi_id_fkey";

-- DropForeignKey
ALTER TABLE "biaya" DROP CONSTRAINT "biaya_standar_biaya_masukan_id_fkey";

-- DropForeignKey
ALTER TABLE "biaya" DROP CONSTRAINT "biaya_sub_kategori_id_fkey";

-- AlterTable
ALTER TABLE "biaya" DROP COLUMN "kategori_id",
DROP COLUMN "provinsi_id",
DROP COLUMN "standar_biaya_masukan_id",
DROP COLUMN "sub_kategori_id",
ADD COLUMN     "uraian_id" INTEGER NOT NULL;

-- CreateTable
CREATE TABLE "uraian" (
    "id" SERIAL NOT NULL,
    "uraian" TEXT,
    "standar_biaya_masukan_id" INTEGER NOT NULL,
    "kategori_id" INTEGER,
    "sub_kategori_id" INTEGER,
    "provinsi_id" INTEGER,

    CONSTRAINT "uraian_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "uraian" ADD CONSTRAINT "uraian_standar_biaya_masukan_id_fkey" FOREIGN KEY ("standar_biaya_masukan_id") REFERENCES "standar_biaya_masukan"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "uraian" ADD CONSTRAINT "uraian_kategori_id_fkey" FOREIGN KEY ("kategori_id") REFERENCES "kategori"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "uraian" ADD CONSTRAINT "uraian_sub_kategori_id_fkey" FOREIGN KEY ("sub_kategori_id") REFERENCES "sub_kategori"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "uraian" ADD CONSTRAINT "uraian_provinsi_id_fkey" FOREIGN KEY ("provinsi_id") REFERENCES "provinsi"("id") ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "biaya" ADD CONSTRAINT "biaya_uraian_id_fkey" FOREIGN KEY ("uraian_id") REFERENCES "uraian"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
