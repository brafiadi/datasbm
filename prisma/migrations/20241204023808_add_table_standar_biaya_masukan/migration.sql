-- CreateTable
CREATE TABLE "standar_biaya_masukan" (
    "id" SERIAL NOT NULL,
    "judul" TEXT NOT NULL,
    "jenis" TEXT NOT NULL DEFAULT '',
    "penjelasan" TEXT NOT NULL DEFAULT '',

    CONSTRAINT "standar_biaya_masukan_pkey" PRIMARY KEY ("id")
);
