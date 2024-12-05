-- CreateTable
CREATE TABLE "perjalanan_dinas_penginapan_dalam_negeri" (
    "id" SERIAL NOT NULL,
    "tahun" TEXT NOT NULL,
    "provinsi_id" INTEGER NOT NULL,
    "satuan" TEXT NOT NULL,
    "pejabat_eselon_1" INTEGER NOT NULL,
    "pejabat_eselon_2" INTEGER NOT NULL,
    "pejabat_eselon_3" INTEGER NOT NULL,
    "pejabat_eselon_4" INTEGER NOT NULL,

    CONSTRAINT "perjalanan_dinas_penginapan_dalam_negeri_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "perjalanan_dinas_penginapan_dalam_negeri" ADD CONSTRAINT "perjalanan_dinas_penginapan_dalam_negeri_provinsi_id_fkey" FOREIGN KEY ("provinsi_id") REFERENCES "provinsi"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
