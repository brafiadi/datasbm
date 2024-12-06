-- CreateTable
CREATE TABLE "standar_biaya_masukan" (
    "id" SERIAL NOT NULL,
    "judul" TEXT NOT NULL,
    "jenis" TEXT NOT NULL DEFAULT '',
    "link" TEXT NOT NULL DEFAULT '',

    CONSTRAINT "standar_biaya_masukan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "penjelasan_standar_biaya_masukan" (
    "id" SERIAL NOT NULL,
    "tahun" TEXT NOT NULL,
    "standar_biaya_masukan_id" INTEGER NOT NULL,
    "penjelasan" TEXT NOT NULL DEFAULT '',

    CONSTRAINT "penjelasan_standar_biaya_masukan_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "provinsi" (
    "id" SERIAL NOT NULL,
    "nama_provinsi" TEXT NOT NULL,

    CONSTRAINT "provinsi_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "kategori" (
    "id" SERIAL NOT NULL,
    "standar_biaya_masukan_id" INTEGER NOT NULL,
    "nama_kategori" TEXT NOT NULL,

    CONSTRAINT "kategori_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "sub_kategori" (
    "id" SERIAL NOT NULL,
    "kategori_id" INTEGER NOT NULL,
    "nama_sub_kategori" TEXT NOT NULL,

    CONSTRAINT "sub_kategori_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "uraian" (
    "id" SERIAL NOT NULL,
    "uraian" TEXT,
    "satuan" TEXT,
    "standar_biaya_masukan_id" INTEGER NOT NULL,
    "kategori_id" INTEGER,
    "sub_kategori_id" INTEGER,
    "provinsi_id" INTEGER,

    CONSTRAINT "uraian_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "biaya" (
    "id" SERIAL NOT NULL,
    "uraian_id" INTEGER NOT NULL,
    "tahun" TEXT NOT NULL,
    "nilai_1" INTEGER,
    "nilai_2" INTEGER,
    "nilai_3" INTEGER,
    "nilai_4" INTEGER,
    "nilai_5" INTEGER,
    "nilai_6" INTEGER,

    CONSTRAINT "biaya_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "penjelasan_standar_biaya_masukan" ADD CONSTRAINT "penjelasan_standar_biaya_masukan_standar_biaya_masukan_id_fkey" FOREIGN KEY ("standar_biaya_masukan_id") REFERENCES "standar_biaya_masukan"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "kategori" ADD CONSTRAINT "kategori_standar_biaya_masukan_id_fkey" FOREIGN KEY ("standar_biaya_masukan_id") REFERENCES "standar_biaya_masukan"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "sub_kategori" ADD CONSTRAINT "sub_kategori_kategori_id_fkey" FOREIGN KEY ("kategori_id") REFERENCES "kategori"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

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
