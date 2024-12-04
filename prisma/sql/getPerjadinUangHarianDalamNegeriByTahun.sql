SELECT
    perjadin.tahun,
    perjadin.provinsi_id,
    provinsi.nama_provinsi,
    perjadin.satuan,
    perjadin.luar_kota,
    perjadin.dalam_kota_lebih_delapan_jam,
    perjadin.diklat
FROM
    perjalanan_dinas_uang_harian_dalam_negeri perjadin
JOIN
    provinsi provinsi
ON
    perjadin.provinsi_id = provinsi.id
WHERE
    perjadin.tahun = $1