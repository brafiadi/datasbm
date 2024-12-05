/*
  Warnings:

  - Added the required column `nama_kategori` to the `kategori` table without a default value. This is not possible if the table is not empty.
  - Added the required column `nama_sub_kategori` to the `sub_kategori` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "kategori" ADD COLUMN     "nama_kategori" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "sub_kategori" ADD COLUMN     "nama_sub_kategori" TEXT NOT NULL;
