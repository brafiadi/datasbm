-- CreateTable
CREATE TABLE "provinsi" (
    "id" SERIAL NOT NULL,
    "nama_provinsi" TEXT NOT NULL,

    CONSTRAINT "provinsi_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "perjalanan_dinas_uang_harian_dalam_negeri" (
    "id" SERIAL NOT NULL,
    "tahun" TEXT NOT NULL,
    "provinsi_id" INTEGER NOT NULL,
    "satuan" TEXT NOT NULL,
    "luar_kota" INTEGER NOT NULL,
    "dalam_kota_lebih_delapan_jam" INTEGER NOT NULL,
    "diklat" INTEGER NOT NULL,

    CONSTRAINT "perjalanan_dinas_uang_harian_dalam_negeri_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "perjalanan_dinas_uang_harian_dalam_negeri" ADD CONSTRAINT "perjalanan_dinas_uang_harian_dalam_negeri_provinsi_id_fkey" FOREIGN KEY ("provinsi_id") REFERENCES "provinsi"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
