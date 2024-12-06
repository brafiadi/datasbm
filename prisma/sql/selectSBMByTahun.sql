SELECT
	u.id,
	sbm.judul,
	k.nama_kategori,
	u.uraian,
	b.tahun,
	u.satuan,
	b.nilai_1,
	b.nilai_2,
	b.nilai_3,
	b.nilai_4,
	b.nilai_5,
	b.nilai_6,
	p.nama_provinsi
FROM
	uraian u
JOIN
	biaya b ON b.uraian_id = u.id
LEFT JOIN
	standar_biaya_masukan sbm ON sbm.id = u.standar_biaya_masukan_id
LEFT JOIN
	kategori k ON k.id = u.kategori_id
LEFT JOIN
	provinsi p ON p.id = u.provinsi_id
WHERE
	b.tahun = $1 AND u.standar_biaya_masukan_id = $2