CREATE DATABASE IF NOT EXISTS QuanLyPhim;
USE QuanLyPhim;

CREATE TABLE vai_tro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vai_tro VARCHAR(50)
);

CREATE TABLE nguoi_dung (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ten_dang_nhap VARCHAR(30),
    mat_khau VARCHAR(255),
    tuoi INT,
    so_dien_thoai VARCHAR(10),
    email VARCHAR(50),
    vai_tro_id INT,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

CREATE TABLE the_loai (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenTheLoai VARCHAR(40)
);

CREATE TABLE quoc_gia (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tenQuocGia VARCHAR(30)
);

CREATE TABLE phim (
    id INT AUTO_INCREMENT PRIMARY KEY,
    ma_phim VARCHAR(10),
    thoi_luong INT,
    nam INT,
    tuoi INT,
    dao_dien INT,
    link_phim VARCHAR(255),
    trailer VARCHAR(255),
    poster VARCHAR(255),
    noi_dung TEXT,
    mo_ta TEXT,
    quoc_gia_id INT,
    the_loai_id INT,
    FOREIGN KEY (dao_dien) REFERENCES nguoi_dung(id),
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);

CREATE TABLE phim_dien_vien (
    id INT AUTO_INCREMENT PRIMARY KEY,
    phim_id INT,
    dien_vien_id INT, 
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES nguoi_dung(id)
);

SELECT p.ma_phim, nd.ten_dang_nhap as dao_dien ,qg.tenQuocGia, tl.tenTheLoai  FROM `phim` p
join nguoi_dung nd on p.dao_dien = nd.id
join quoc_gia qg on p.quoc_gia_id = qg.id
join the_loai tl on p.the_loai_id = tl.id
an tơ tên phim

ALTER TABLE phim 
ADD COLUMN ten_phim VARCHAR(255) AFTER ma_phim;
