-- SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS tbl_nilai;
DROP TABLE IF EXISTS tbl_simulasi;
DROP TABLE IF EXISTS tbl_user;
DROP TABLE IF EXISTS tbl_user_role;
DROP TABLE IF EXISTS tbl_bank_soal;
DROP TABLE IF EXISTS tbl_kategori_soal;
-- SET FOREIGN_KEY_CHECKS=1;

CREATE TABLE tbl_user_role (
	id INT(11) NOT NULL AUTO_INCREMENT,
	role VARCHAR(128) NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO tbl_user_role(role)
VALUES ('Admin'), ('Member');

CREATE TABLE tbl_user (
	id INT(11) NOT NULL AUTO_INCREMENT,
	role_id INT(11) NOT NULL,
	nama VARCHAR(128) NOT NULL,
	email VARCHAR(128) NOT NULL,
	password VARCHAR(256) NOT NULL,
	is_active INT(11) NOT NULL,
	date_created INT(11) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(role_id) REFERENCES tbl_user_role(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE tbl_kategori_soal (
	id INT(11) NOT NULL AUTO_INCREMENT,
	nama_kategori VARCHAR(128) NOT NULL,
	singkatan VARCHAR(128) NOT NULL,
	butir_soal INT(11) NOT NULL,
	ambang_batas INT(11) NOT NULL,
	PRIMARY KEY(id)
);

INSERT INTO tbl_kategori_soal(nama_kategori, singkatan, butir_soal, ambang_batas)
VALUES 
('Tes Intelegensi Umum', 'TIU', 35, 80),
('Tes Wawasan Kebangsaan', 'TWK', 30, 65),
('Tes Karakteristik Pribadi', 'TKP', 35, 126);

CREATE TABLE tbl_bank_soal (
	id INT(11) NOT NULL AUTO_INCREMENT,
	kategori_id INT(11) NOT NULL,
	pertanyaan TEXT NOT NULL,
	pilihan_a VARCHAR(256) NOT NULL,
	pilihan_b VARCHAR(256) NOT NULL,
	pilihan_c VARCHAR(256) NOT NULL,
	pilihan_d VARCHAR(256) NOT NULL,
	pilihan_e VARCHAR(256) NOT NULL,
	nilai_a INT NOT NULL,
	nilai_b INT NOT NULL,
	nilai_c INT NOT NULL,
	nilai_d INT NOT NULL,
	nilai_e INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(kategori_id) REFERENCES tbl_kategori_soal(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE tbl_simulasi (
	id INT(11) NOT NULL AUTO_INCREMENT,
	user_id INT(11) NOT NULL,
	list_jawaban LONGTEXT NOT NULL,
	waktu_mulai DATETIME NOT NULL,
	waktu_selesai DATETIME NOT NULL,
	token_simulasi VARCHAR(256) NOT NULL,
	status_simulasi VARCHAR(128) NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(user_id) REFERENCES tbl_user(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE tbl_nilai (
	id INT(11) NOT NULL AUTO_INCREMENT,
	simulasi_id INT(11) NOT NULL,
	kategori_id INT(11) NOT NULL,
	nilai INT NOT NULL,
	PRIMARY KEY(id),
	FOREIGN KEY(simulasi_id) REFERENCES tbl_simulasi(id) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY(kategori_id) REFERENCES tbl_kategori_soal(id) ON DELETE CASCADE ON UPDATE CASCADE
);
