
/*---------------------------------------------------------------
  SQL DBa BACKUPe 23.10.2019 08:15 
  HOST: localhost
  DATABASE: *
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `berita`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `beritae`;
CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `ikut` varchar(10) NOT NULL,
  `susulan` varchar(10) NOT NULL,
  `jumlahujian` int(10) NOT NULL,
  `no_susulan` text NOT NULL,
  `mulai` varchar(10) NOT NULL,
  `selesai` varchar(10) NOT NULL,
  `nama_proktor` varchar(50) NOT NULL,
  `nip_proktor` varchar(50) NOT NULL,
  `nama_pengawas` varchar(50) NOT NULL,
  `nip_pengawas` varchar(50) NOT NULL,
  `catatan` text NOT NULL,
  `tgl_ujian` varchar(20) NOT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
INSERT INTO `berita` VALUES   ('1','1','1','R5','10','0','10','N;','08:00','09:00','1','0','1','','1','2019-10-18');
INSERT INTO `berita` VALUES ('2','1','1','R6','','','0','','','','','','','','','');

/*---------------------------------------------------------------
  TABLE: `hasil_jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `hasil_jawaban`;
CREATE TABLE `hasil_jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` char(1) NOT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text NOT NULL,
  `nilai_esai` int(5) NOT NULL,
  `ragu` int(1) NOT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
INSERT INTO `hasil_jawaban` VALUES   ('1','1','1','10','C','1','','0','0');
INSERT INTO `hasil_jawaban` VALUES ('2','1','1','9','C','1','','0','0');

/*---------------------------------------------------------------
  TABLE: `jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban`;
CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jawaban` char(1) NOT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text NOT NULL,
  `nilai_esai` int(5) NOT NULL,
  `ragu` int(1) NOT NULL,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `kelas` VALUES   ('4','4','KELAS 4A');
INSERT INTO `kelas` VALUES ('5','5','5');
INSERT INTO `kelas` VALUES ('6','6','6');

/*---------------------------------------------------------------
  TABLE: `level`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `level` VALUES   ('4','4');
INSERT INTO `level` VALUES ('5','5');
INSERT INTO `level` VALUES ('6','6');

/*---------------------------------------------------------------
  TABLE: `log`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `login`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `ipaddress` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
INSERT INTO `login` VALUES   ('8','1','','2019-10-18 09:21:29');

/*---------------------------------------------------------------
  TABLE: `mapel`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `idpk` varchar(10) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(2) NOT NULL,
  `statusujian` int(11) NOT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `mapel` VALUES   ('1','','52','ba','30','0','30','0','100','0','5','a:1:{i:0;s:1:\"5\";}','2019-10-21 23:33:33','1','0');

/*---------------------------------------------------------------
  TABLE: `mata_pelajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `mata_pelajaran` VALUES   ('ba','BAHASA ARAB');
INSERT INTO `mata_pelajaran` VALUES ('BI','BAHASA INDO');

/*---------------------------------------------------------------
  TABLE: `nilai`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) NOT NULL,
  `ujian_selesai` varchar(20) NOT NULL,
  `jml_benar` int(10) NOT NULL,
  `jml_salah` int(10) NOT NULL,
  `nilai_esai` varchar(10) NOT NULL,
  `skor` varchar(10) NOT NULL,
  `total` varchar(10) NOT NULL,
  `status` int(1) NOT NULL,
  `ipaddress` varchar(20) NOT NULL,
  `hasil` int(2) NOT NULL,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
INSERT INTO `nilai` VALUES   ('2','1','1','2019-10-18 09:21:35','2019-10-18 09:22:59','2019-10-22 00:34:36','0','1','','0','','0','192.168.0.22','1');

/*---------------------------------------------------------------
  TABLE: `pengacak`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengacak`;
CREATE TABLE `pengacak` (
  `id_pengacak` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` longtext NOT NULL,
  `id_esai` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pengacak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `pengacakopsi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengacakopsi`;
CREATE TABLE `pengacakopsi` (
  `id_pengacak` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` longtext NOT NULL,
  `id_esai` varchar(255) NOT NULL,
  PRIMARY KEY (`id_pengacak`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `pengawas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengawas`;
CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `level` varchar(10) NOT NULL,
  `no_ktp` varchar(16) NOT NULL,
  `tempat_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` varchar(10) NOT NULL,
  `agama` varchar(10) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `email` varchar(50) NOT NULL,
  `alamat_jalan` varchar(255) NOT NULL,
  `rt_rw` varchar(8) NOT NULL,
  `dusun` varchar(50) NOT NULL,
  `kelurahan` varchar(50) NOT NULL,
  `kecamatan` varchar(30) NOT NULL,
  `kode_pos` int(6) NOT NULL,
  `nuptk` varchar(20) NOT NULL,
  `bidang_studi` varchar(50) NOT NULL,
  `jenis_ptk` varchar(50) NOT NULL,
  `tgs_tambahan` varchar(50) NOT NULL,
  `status_pegawai` varchar(50) NOT NULL,
  `status_aktif` varchar(20) NOT NULL,
  `status_nikah` varchar(20) NOT NULL,
  `sumber_gaji` varchar(30) NOT NULL,
  `ahli_lab` varchar(10) NOT NULL,
  `nama_ibu` varchar(40) NOT NULL,
  `nama_suami` varchar(50) NOT NULL,
  `nik_suami` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `tmt` date NOT NULL,
  `keahlian_isyarat` varchar(10) NOT NULL,
  `kewarganegaraan` varchar(10) NOT NULL,
  `npwp` varchar(16) NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;
INSERT INTO `pengawas` VALUES   ('52','-','Guru 1','','guru1','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('53','-','Guru 2','','guru2','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('54','-','Guru 3','','guru3','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('55','-','Guru 4','','guru4','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('56','-','Guru 5','','guru5','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('57','-','Guru 6','','guru6','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('58','-','Guru 7','','guru7','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('59','-','Guru 8','','guru8','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('60','-','Guru 9','','guru9','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('61','-','Guru 10','','guru10','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('62','-','Guru 11','','guru11','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('63','-','Guru 12','','guru12','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('64','-','Guru 13','','guru13','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('65','-','Guru 14','','guru14','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('66','-','Guru 15','','guru15','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('67','-','Guru 16','','guru16','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('68','-','Guru 17','','guru17','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('69','-','Guru 18','','guru18','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('70','-','Guru 19','','guru19','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('71','-','Guru 20','','guru20','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('72','-','Guru 21','','guru21','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('73','-','Guru 22','','guru22','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('74','-','Guru 23','','guru23','123456','guru','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('77','-','PROKTOR','','admin','$2y$10$3fVC8VJfm8ElEv6PNLT2R.XalOF.sFq7TOgJE54p5KQm2oL/0N1Im','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('78','-','PROKTOR1','','proktor1','$2y$10$KPrbJHJDEUmIlR4PHEeLVO4mcmLj.xIRgIw8qLiO4lT2ppioplSV2','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('79','-','PROKTOR2','','proktor2','$2y$10$.QQK3vIsqB5ZqkQUjSwNH.sH0BHU38AlmtAOzScWdkBGeBuvFEEGa','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');
INSERT INTO `pengawas` VALUES ('80','-','PROKTOR3','','proktor3','$2y$10$KKgXrdlWXr./fAUGNnTyZOTbMnOn.XHjbIF9uwhtJNzO1wvAAQqHO','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','');

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `pengumuman` VALUES   ('1','internal','test','77','<p>tes</p>','2019-10-18 06:35:43');

/*---------------------------------------------------------------
  TABLE: `pk`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pk`;
CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `kode` varchar(10) NOT NULL,
  PRIMARY KEY (`id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `ruang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `ruang` VALUES   ('R5','R5');
INSERT INTO `ruang` VALUES ('R6','R6');

/*---------------------------------------------------------------
  TABLE: `savsoft_options`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_options`;
CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `savsoft_qbank`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_qbank`;
CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT '0',
  `no_time_corrected` int(11) NOT NULL DEFAULT '0',
  `no_time_incorrected` int(11) NOT NULL DEFAULT '0',
  `no_time_unattempted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `server`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `server` VALUES   ('R1','SERVER R1','aktif');
INSERT INTO `server` VALUES ('R2','SERVER R2','aktif');
INSERT INTO `server` VALUES ('ONLINE','ONLINE','aktif');

/*---------------------------------------------------------------
  TABLE: `sesi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sesi`;
CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `sesi` VALUES   ('1','1');

/*---------------------------------------------------------------
  TABLE: `session`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `session` VALUES   ('1','1447610188','$2y$10$dt9BTs7FlTXgpactflaXPOSVWrs.wurWsKBGv18JkzolJmHZOj.B.');

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) NOT NULL,
  `kode_sekolah` varchar(10) NOT NULL,
  `sekolah` varchar(50) NOT NULL,
  `jenjang` varchar(5) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kota` varchar(30) NOT NULL,
  `telp` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `web` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` text NOT NULL,
  `header` text NOT NULL,
  `header_kartu` text NOT NULL,
  `nama_ujian` text NOT NULL,
  `versi` varchar(10) NOT NULL,
  `ip_server` varchar(100) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `logo_header` text NOT NULL,
  `logo_stempel` text NOT NULL,
  `logo_instansi` text NOT NULL,
  `background_admin` text NOT NULL,
  `background_siswa` text NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `setting` VALUES   ('1','MIBA CBT','P01010101','MI. BAITURROHMAH','SMP','Dra. Masfufah','-','JL. Darsono 29','Ngaglik','Batu','0341590883','-','-','-','dist/img/logo83.png','YAYASAN WALI SONGO','KARTU PESERTA<br>\nUJIAN SEKOLAH BERBASIS KOMPUTER','UJIAN SEKOLAH BERBASIS KOMPUTER','1.0','http://192.168.0.201/cbt','Asia/Jakarta','dist/img/logo_header.png','dist/img/logo_stempel.png','dist/img/logo_instansi.png','dist/img/background_admin.png','dist/img/background_siswa.png');

/*---------------------------------------------------------------
  TABLE: `siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(11) NOT NULL,
  `idpk` varchar(10) NOT NULL,
  `nis` varchar(30) NOT NULL,
  `no_peserta` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `level` varchar(5) NOT NULL,
  `ruang` varchar(10) NOT NULL,
  `sesi` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(30) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `agama` varchar(10) NOT NULL,
  `kebutuhan_khusus` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `rt` varchar(5) NOT NULL,
  `rw` varchar(5) NOT NULL,
  `dusun` varchar(100) NOT NULL,
  `kelurahan` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `jenis_tinggal` varchar(100) NOT NULL,
  `alat_transportasi` varchar(100) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(150) NOT NULL,
  `skhun` int(11) NOT NULL,
  `no_kps` varchar(50) NOT NULL,
  `nama_ayah` varchar(150) NOT NULL,
  `tahun_lahir_ayah` int(4) NOT NULL,
  `pendidikan_ayah` varchar(50) NOT NULL,
  `pekerjaan_ayah` varchar(100) NOT NULL,
  `penghasilan_ayah` varchar(100) NOT NULL,
  `nohp_ayah` varchar(15) NOT NULL,
  `nama_ibu` varchar(150) NOT NULL,
  `tahun_lahir_ibu` int(4) NOT NULL,
  `pendidikan_ibu` varchar(50) NOT NULL,
  `pekerjaan_ibu` varchar(100) NOT NULL,
  `penghasilan_ibu` varchar(100) NOT NULL,
  `nohp_ibu` int(15) NOT NULL,
  `nama_wali` varchar(150) NOT NULL,
  `tahun_lahir_wali` int(4) NOT NULL,
  `pendidikan_wali` varchar(50) NOT NULL,
  `pekerjaan_wali` varchar(100) NOT NULL,
  `penghasilan_wali` varchar(50) NOT NULL,
  `angkatan` int(5) NOT NULL,
  `nisn` varchar(50) NOT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `siswa` VALUES   ('1','5','','12','12','1','5','R5','1','1','1','','','','0000-00-00','','','','','','','','','0','','','','','0','','','0','','','','','','0','','','','0','','0','','','','0','');

/*---------------------------------------------------------------
  TABLE: `soal`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `soal`;
CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) NOT NULL,
  `soal` longtext NOT NULL,
  `jenis` int(1) NOT NULL,
  `pilA` longtext NOT NULL,
  `pilB` longtext NOT NULL,
  `pilC` longtext NOT NULL,
  `pilD` longtext NOT NULL,
  `pilE` longtext NOT NULL,
  `jawaban` varchar(1) NOT NULL,
  `file` text,
  `file1` text,
  `fileA` text,
  `fileB` text,
  `fileC` text,
  `fileD` text,
  `fileE` text,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=828 DEFAULT CHARSET=latin1;
INSERT INTO `soal` VALUES   ('824','1','1',' Untuk mengatasi masalah sampah plastik, pemerintah telah menerapkan undang-undang yang berisi pengaturan <b>penggunaan</b> plastik. Salah satu pengaturan tersebut adalah pengenaan cukai kemasan plastik.  Diharapkan dengan pengaturan tersebut penggunaan kemasan plastik dapat berkurang. <br/> Makna istilah <i>cukai</i> pada paragraf  ana tersebut adalah&hellip;','1',' Ø¨ÙØ³Ù’Ù…Ù Ø§Ù„Ù„Ù‡Ù Ø§Ù„Ø±ÙŽÙ‘Ø­Ù’Ù…Ù°Ù†Ù Ø§Ù„Ø±ÙŽÙ‘Ø­ÙŠÙ…Ù','&amp;amp;nbsp;',' Pajak',' fx=a0+n=1&infin;ancosn&pi;xL+bnsinn&pi;xL','','A','15716781473.png','','15716781472.png','15716781471.png','','','');
INSERT INTO `soal` VALUES ('825','1','2',' Untuk mengatasi masalah sampah plastik, pemerintah telah menerapkan undang-undang yang berisi pengaturan <b>penggunaan</b> plastik. Salah satu pengaturan tersebut adalah pengenaan cukai kemasan plastik.  Diharapkan dengan pengaturan tersebut penggunaan kemasan plastik dapat berkurang. <br/> Makna istilah <i>cukai</i> pada paragraf  ana tersebut adalah&hellip; .','1',' Ø¨ÙØ³Ù’Ù…Ù Ø§Ù„Ù„Ù‡Ù Ø§Ù„Ø±ÙŽÙ‘Ø­Ù’Ù…Ù°Ù†Ù Ø§Ù„Ø±ÙŽÙ‘Ø­ÙŠÙ…Ù','&amp;amp;nbsp;',' Pajak',' fx=a0+n=1&infin;ancosn&pi;xL+bnsinn&pi;xL','','B','','','15716781472.png','15716781471.png','','','');
INSERT INTO `soal` VALUES ('826','1','3',' Untuk mengatasi masalah sampah plastik, pemerintah telah menerapkan undang-undang yang berisi pengaturan <b>penggunaan</b> plastik. Salah satu pengaturan tersebut adalah pengenaan cukai kemasan plastik.  Diharapkan dengan pengaturan tersebut penggunaan kemasan plastik dapat berkurang. <br/> Makna istilah <i>cukai</i> pada paragraf  ana tersebut adalah&hellip; .','1',' Ø¨ÙØ³Ù’Ù…Ù Ø§Ù„Ù„Ù‡Ù Ø§Ù„Ø±ÙŽÙ‘Ø­Ù’Ù…Ù°Ù†Ù Ø§Ù„Ø±ÙŽÙ‘Ø­ÙŠÙ…Ù','&amp;amp;nbsp;',' Pajak',' fx=a0+n=1&infin;ancosn&pi;xL+bnsinn&pi;xL','','C','','','15716781472.png','15716781471.png','','','');
INSERT INTO `soal` VALUES ('827','1','4',' Untuk mengatasi masalah sampah plastik, pemerintah telah menerapkan undang-undang yang berisi pengaturan <b>penggunaan</b> plastik. Salah satu pengaturan tersebut adalah pengenaan cukai kemasan plastik.  Diharapkan dengan pengaturan tersebut penggunaan kemasan plastik dapat berkurang. <br/> Makna istilah <i>cukai</i> pada paragraf  ana tersebut adalah&hellip; .','1',' Ø¨ÙØ³Ù’Ù…Ù Ø§Ù„Ù„Ù‡Ù Ø§Ù„Ø±ÙŽÙ‘Ø­Ù’Ù…Ù°Ù†Ù Ø§Ù„Ø±ÙŽÙ‘Ø­ÙŠÙ…Ù','&amp;amp;nbsp;',' Pajak',' fx=a0+n=1&infin;ancosn&pi;xL+bnsinn&pi;xL','','D','','','15716781472.png','15716781471.png','','','');

/*---------------------------------------------------------------
  TABLE: `token`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `token` VALUES   ('1','HYMGPN','2019-05-15 12:14:12','00:15:00');

/*---------------------------------------------------------------
  TABLE: `ujian`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `id_pk` varchar(10) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time NOT NULL,
  `selesai_ujian` time NOT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) NOT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(3) NOT NULL,
  `hasil` int(2) NOT NULL,
  `proktor` varchar(30) NOT NULL,
  `pengawas` varchar(30) NOT NULL,
  `nip_pengawas` varchar(30) NOT NULL,
  `catatan` text NOT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;
INSERT INTO `ujian` VALUES   ('51','','52','1','BAHASA ARAB','10','0','100','0','10','0','120','2019-10-17 05:00:00','2019-10-26 23:00:00','05:00:00','00:00:00','5','a:1:{i:0;s:1:\"5\";}','1','1','0','1','1','','','','');

/*---------------------------------------------------------------
  TABLE: `walikls`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `walikls`;
CREATE TABLE `walikls` (
  `idwali` varchar(3) COLLATE utf8_swedish_ci NOT NULL,
  `id_pengawas` varchar(3) COLLATE utf8_swedish_ci DEFAULT NULL,
  `id_kelas` varchar(10) COLLATE utf8_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`idwali`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_swedish_ci;
INSERT INTO `walikls` VALUES   ('59','59','4');
