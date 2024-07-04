CREATE TABLE `ayam` (
  `warna_bulu` varchar(255) PRIMARY KEY,
  `ukuran_tubuh` float,
  `jenis_kelamin` varchar(255)
);

CREATE TABLE `pelanggan` (
  `nama` varchar(255) PRIMARY KEY,
  `telur_ayam` varchar(255),
  `id_lokasi` int
);

CREATE TABLE `kandang` (
  `a_warna_bulu` varchar(255),
  `ukuran` int,
  `bahan` varchar(255),
  `petak_kandang` int
);

CREATE TABLE `jadwal_pakan` (
  `k_a_warna_bulu` varchar(255),
  `waktu` int,
  `frekuensi` varchar(255),
  `konsestesi` varchar(255)
);

CREATE TABLE `pakan` (
  `a_warna_bulu` varchar(255),
  `komposisi` int,
  `kualitas` varchar(255),
  `jumlah` int
);

CREATE TABLE `membeli` (
  `a_warna_bulu` varchar(255),
  `p_nama` varchar(255),
  `total` int,
  `tgl_beli` int,
  `karyawan` varchar(255),
  `qty` int
);

CREATE TABLE `lokasi` (
  `id_lokasi` int,
  `lokasi` varchar(255)
);

ALTER TABLE `kandang` ADD FOREIGN KEY (`a_warna_bulu`) REFERENCES `ayam` (`warna_bulu`);

ALTER TABLE `jadwal_pakan` ADD FOREIGN KEY (`k_a_warna_bulu`) REFERENCES `kandang` (`a_warna_bulu`);

ALTER TABLE `pakan` ADD FOREIGN KEY (`a_warna_bulu`) REFERENCES `ayam` (`warna_bulu`);

ALTER TABLE `membeli` ADD FOREIGN KEY (`a_warna_bulu`) REFERENCES `ayam` (`warna_bulu`);

ALTER TABLE `membeli` ADD FOREIGN KEY (`p_nama`) REFERENCES `pelanggan` (`nama`);

ALTER TABLE `lokasi` ADD FOREIGN KEY (`id_lokasi`) REFERENCES `pelanggan` (`id_lokasi`);
