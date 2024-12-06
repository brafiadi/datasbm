SELECT 
  k.standar_biaya_masukan_id, 
  s.judul as standar_biaya_masukan,
  k.id, 
  k.nama_kategori
FROM 
  kategori k
JOIN 
  standar_biaya_masukan s ON k.standar_biaya_masukan_id = s.id