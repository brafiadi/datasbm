-- CreateTable
CREATE TABLE "kategori" (
    "id" SERIAL NOT NULL,
    "standar_biaya_masukan_id" INTEGER NOT NULL,

    CONSTRAINT "kategori_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "sub_kategori" (
    "id" SERIAL NOT NULL,
    "kategori_id" INTEGER NOT NULL,

    CONSTRAINT "sub_kategori_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "kategori" ADD CONSTRAINT "kategori_standar_biaya_masukan_id_fkey" FOREIGN KEY ("standar_biaya_masukan_id") REFERENCES "standar_biaya_masukan"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "sub_kategori" ADD CONSTRAINT "sub_kategori_kategori_id_fkey" FOREIGN KEY ("kategori_id") REFERENCES "kategori"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
