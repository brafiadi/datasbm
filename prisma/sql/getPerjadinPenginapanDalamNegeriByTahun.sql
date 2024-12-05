SELECT 
    perjadin.tahun,
    perjadin.provinsi_id,
    provinsi.nama_provinsi,
    perjadin.satuan,
    perjadin.pejabat_eselon_1,
    perjadin.pejabat_eselon_2,
    perjadin.pejabat_eselon_3,
    perjadin.pejabat_eselon_4
FROM 
    perjalanan_dinas_penginapan_dalam_negeri perjadin
JOIN
    provinsi provinsi
ON
    perjadin.provinsi_id = provinsi.id
WHERE
    perjadin.tahun = $1;