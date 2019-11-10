/*--------------a-------------------------------------------------
  TABLE: `soal`
  ---------------------------------------------------------------*/
SET NAMES 'utf8';
COLLATE 'utf8_general_ci';
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
) ENGINE=InnoDB AUTO_INCREMENT=832 DEFAULT CHARSET=utf8;
INSERT INTO `soal` VALUES ('824','1','1','<p>Untuk mengatasi masalah sampah plastik, pemerintah telah menerapkan undang-undang yang berisi pengaturan <strong>penggunaan</strong> plastik. Salah satu pengaturan tersebut adalah pengenaan cukai kemasan plastik. Diharapkan dengan pengaturan tersebut penggunaan kemasan plastik dapat berkurang. <br />Makna istilah <em>cukai</em> pada paragraf ana tersebut adalah&hellip;</p>','1','<p><strong><span style=\"font-size: 24pt;\">ï·½</span></strong></p>','<p><span style=\"font-family: huruf_jawa; font-size: 14pt;\">tuku baya</span></p>','<p>Pajak</p>','','','A','1_1_1.jpg','','','1_1_B.jpg','','1_1_D.png','');
INSERT INTO `soal` VALUES ('828','1','2','<p>Untuk mengatasi masalah sampah plastik, pemerintah telah menerapkan undang-undang yang berisi pengaturan <strong>penggunaan</strong> plastik. Salah satu pengaturan tersebut adalah pengenaan cukai kemasan plastik. Diharapkan dengan pengaturan tersebut penggunaan kemasan plastik dapat berkurang. <br />Makna istilah <em>cukai</em> pada paragraf ana tersebut adalah&hellip;</p>','1','<p><strong><span style=\"font-size: 24pt;\">ï·½</span></strong></p>','<p><span style=\"font-family: huruf_jawa; font-size: 14pt;\">tuku baya</span></p>','<p>Pajak</p>','','','B','1_1_1.jpg','','','1_1_B.jpg','','1_1_D.png','');
INSERT INTO `soal` VALUES ('829','1','3','<p>Untuk mengatasi masalah sampah plastik, pemerintah telah menerapkan undang-undang yang berisi pengaturan <strong>penggunaan</strong> plastik. Salah satu pengaturan tersebut adalah pengenaan cukai kemasan plastik. Diharapkan dengan pengaturan tersebut penggunaan kemasan plastik dapat berkurang. <br />Makna istilah <em>cukai</em> pada paragraf ana tersebut adalah&hellip;</p>','1','<p><strong><span style=\"font-size: 24pt;\">ï·½</span></strong></p>','<p><span style=\"font-family: huruf_jawa; font-size: 14pt;\">tuku baya</span></p>','<p>Pajak</p>','','','C','1_1_1.jpg','','','1_1_B.jpg','','1_1_D.png','');
INSERT INTO `soal` VALUES ('830','1','4','<p>Untuk mengatasi masalah sampah plastik, pemerintah telah menerapkan undang-undang yang berisi pengaturan <strong>penggunaan</strong> plastik. Salah satu pengaturan tersebut adalah pengenaan cukai kemasan plastik. Diharapkan dengan pengaturan tersebut penggunaan kemasan plastik dapat berkurang. <br />Makna istilah <em>cukai</em> pada paragraf ana tersebut adalah&hellip;</p>','1','<p><strong><span style=\"font-size: 24pt;\">ï·½</span></strong></p>','<p><span style=\"font-family: huruf_jawa; font-size: 14pt;\">tuku baya</span></p>','<p>Pajak</p>','','','D','1_1_1.jpg','','','1_1_B.jpg','','1_1_D.png','');
INSERT INTO `soal` VALUES ('831','1','5','<p>Untuk mengatasi masalah sampah plastik, pemerintah telah menerapkan undang-undang yang berisi pengaturan <strong>penggunaan</strong> plastik. Salah satu pengaturan tersebut adalah pengenaan cukai kemasan plastik. Diharapkan dengan pengaturan tersebut penggunaan kemasan plastik dapat berkurang. <br />Makna istilah <em>cukai</em> pada paragraf ana tersebut adalah&hellip;</p>','1','<p><strong><span style=\"font-size: 24pt;\">ï·½</span></strong></p>','<p><span style=\"font-family: huruf_jawa; font-size: 14pt;\">tuku baya</span></p>','<p>Pajak</p>','','','A','1_1_1.jpg','','','1_1_B.jpg','','1_1_D.png','');
