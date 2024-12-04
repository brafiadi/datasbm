-- CreateTable
CREATE TABLE "kategori_honorarium_penanggung_jawab_pengelola_keuangan" (
    "id" SERIAL NOT NULL,
    "uraian" TEXT NOT NULL,

    CONSTRAINT "kategori_honorarium_penanggung_jawab_pengelola_keuangan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "honorarium_penanggung_jawab_pengelola_keuangan" (
    "id" SERIAL NOT NULL,
    "kategori_id" INTEGER NOT NULL,
    "uraian" TEXT NOT NULL,
    "satuan" TEXT NOT NULL,
    "besaran" INTEGER NOT NULL,

    CONSTRAINT "honorarium_penanggung_jawab_pengelola_keuangan_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "honorarium_penanggung_jawab_pengelola_keuangan" ADD CONSTRAINT "honorarium_penanggung_jawab_pengelola_keuangan_kategori_id_fkey" FOREIGN KEY ("kategori_id") REFERENCES "kategori_honorarium_penanggung_jawab_pengelola_keuangan"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
