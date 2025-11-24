CREATE DATABASE IF NOT EXISTS QuanLyPhim;
USE QuanLyPhim;
CREATE TABLE QuocGia(
    id INT NOT NULL AUTO_INCREMENT,
    ten_quoc_gia VARCHAR(100) NOT NULL,
    CONSTRAINT pk_QuocGia PRIMARY KEY(id)
    );

CREATE TABLE TheLoai(
    id INT NOT NULL AUTO_INCREMENT,
    ten_the_loai VARCHAR(100) NOT NULL,
    CONSTRAINT pk_TheLoai PRIMARY KEY(id)
    );
CREATE TABLE LoaiTaiKhoan(
    id INT NOT NULL AUTO_INCREMENT,
    ten_loai VARCHAR(100) NOT NULL,
    CONSTRAINT pk_LoaiTaiKhoan PRIMARY KEY(id)
    );
CREATE TABLE NguoiDung(
    id INT NOT NULL AUTO_INCREMENT,
    ten_dang_nhap VARCHAR(50) NOT NULL,
    mat_khau VARCHAR(255) NOT NULL,
    loai_tai_khoan_id INT,
    tuoi INT,
    so_dien_thoai VARCHAR(15) NOT NULL,
    email VARCHAR(100) NOT NULL,
    CONSTRAINT pk_NguoiDung PRIMARY KEY(id),
    
    CONSTRAINT fk_NguoiDung FOREIGN KEY(loai_tai_khoan_id) REFERENCES LoaiTaiKhoan(id)
    );
    
CREATE TABLE Phim(
    id INT NOT NULL AUTO_INCREMENT,
    ten_phim VARCHAR (200) NOT NULL,
    ma_phim VARCHAR(100)  NULL,
    thoi_luong INT,
    nam INT,
    dien_vien VARCHAR(100)  NULL,
    tuoi INT,
    dao_dien VARCHAR(100)  NULL,
    duong_dan_phim VARCHAR(100)  NULL,
    duong_dan_trailer VARCHAR(200)  NULL,
    poster VARCHAR(150)  NULL,
    noi_dung TEXT,
    mo_ta TEXT,
    anh VARCHAR(100)  NULL,
    quoc_gia_id INT,
    the_loai_id INT,
    CONSTRAINT pk_Phim PRIMARY KEY(id),
    
    CONSTRAINT fk_Phim_QuocGia FOREIGN KEY(quoc_gia_id) REFERENCES QuocGia(id),
    CONSTRAINT fk_Phim_TheLoai FOREIGN KEY(the_loai_id) REFERENCES TheLoai(id)
    );
  
-- 50 quốc gia 
INSERT INTO QuocGia (ten_quoc_gia) VALUES 
('Việt Nam'), ('Hàn Quốc'), ('Mỹ'), ('Nhật Bản'), ('Trung Quốc'), ('Ấn Độ'), ('Pháp'), ('Anh'), ('Đức'), ('Tây BanNha'), ('Ý'), ('Thái Lan'), ('Canada'), ('Úc'), ('Nga'), ('Brazil'), ('Argentina'), ('Mexico'), ('Malaysia'), ('Singapore'), ('Indonesia'), ('Philippines'), ('Pakistan'), ('Bangladesh'), ('Iran'), ('Thổ Nhĩ Kỳ'), ('Ai Cập'), ('Nam Phi'), ('Kenya'), ('Nigeria'), ('Colombia'), ('Chile'), ('Peru'), ('Venezuela'), ('Saudi Arabia'), ('Iraq'), ('Afghanistan'), ('Israel'), ('New Zealand'), ('Na Uy'), ('Thụy Điển'), ('Đan Mạch'), ('Bỉ'), ('Hà Lan'), ('Hy Lạp'), ('Bồ Đào Nha'), ('Ireland'), ('Thụy Sĩ'), ('Áo'), ('Hungary'), ('Ba Lan');
-- 10 THỂ LOẠI PHIM
INSERT INTO TheLoai (ten_the_loai) VALUES 
('Hành động'),('Hài'),('Kinh dị'),('Tình cảm'),('Phiêu lưu'),('Viễn tưởng'),('Hoạt hình'),('Tâm lý'),('Chiến tranh'),('Tài liệu');
-- USER
INSERT INTO LoaiTaiKhoan (ten_loai) VALUES
('Admin'),('Nguoi Dung'),('Dien Vien'), ('Dao Dien');
-- dữ liêu 20 người dùng
INSERT INTO NguoiDung (ten_dang_nhap, mat_khau, loai_tai_khoan_id, tuoi, so_dien_thoai, email) VALUES
('admin1', 'adminpass1', 1, 35, '0912345670', 'admin1@example.com'),
('user1', 'userpass1', 2, 22, '0912345671', 'user1@example.com'),
('user2', 'userpass2', 2, 25, '0912345672', 'user2@example.com'),
('user3', 'userpass3', 2, 28, '0912345673', 'user3@example.com'),
('user4', 'userpass4', 2, 30, '0912345674', 'user4@example.com'),
('user5', 'userpass5', 2, 27, '0912345675', 'user5@example.com'),
('user6', 'userpass6', 2, 23, '0912345676', 'user6@example.com'),
('user7', 'userpass7', 2, 24, '0912345677', 'user7@example.com'),
('user8', 'userpass8', 2, 26, '0912345678', 'user8@example.com'),
('user9', 'userpass9', 2, 29, '0912345679', 'user9@example.com'),
('daodien1', 'dp1', 3, 40, '0922345670', 'daodien1@example.com'),
('daodien2', 'dp2', 3, 45, '0922345671', 'daodien2@example.com'),
('daodien3', 'dp3', 3, 38, '0922345672', 'daodien3@example.com'),
('dienvien1', 'dv1', 4, 30, '0932345670', 'dienvien1@example.com'),
('dienvien2', 'dv2', 4, 27, '0932345671', 'dienvien2@example.com'),
('dienvien3', 'dv3', 4, 25, '0932345672', 'dienvien3@example.com'),
('dienvien4', 'dv4', 4, 29, '0932345673', 'dienvien4@example.com'),
('dienvien5', 'dv5', 4, 31, '0932345674', 'dienvien5@example.com'),
('dienvien6', 'dv6', 4, 26, '0932345675', 'dienvien6@example.com'),
('dienvien7', 'dv7', 4, 28, '0932345676', 'dienvien7@example.com');

-- 50 tên phim
INSERT INTO Phim (ten_phim, ma_phim) VALUES
('Địa Đàng Sụp Đổ', 'P001'),
('Bí Ẩn Đêm Trắng', 'P002'),
('Chuyến Phiêu Lưu Cuối Cùng', 'P003'),
('Hành Trình Kỳ Diệu', 'P004'),
('Ngọn Lửa Tình Yêu', 'P005'),
('Mật Mã Bí Ẩn', 'P006'),
('Cơn Bão Cuối Cùng', 'P007'),
('Vùng Đất Lạ', 'P008'),
('Hồn Ma Trong Lâu Đài', 'P009'),
('Người Hùng Bất Tử', 'P010'),
('Trận Chiến Cuối Cùng', 'P011'),
('Thế Giới Ngầm', 'P012'),
('Hành Trình Về Quá Khứ', 'P013'),
('Cánh Cửa Bí Ẩn', 'P014'),
('Ngôi Nhà Ma Ám', 'P015'),
('Chuyến Tàu Tốc Hành', 'P016'),
('Vùng Đất Cổ Tích', 'P017'),
('Mật Mã Cuộc Sống', 'P018'),
('Người Bảo Vệ Bí Mật', 'P019'),
('Ánh Sáng Cuối Đường Hầm', 'P020'),
('Ngọn Núi Bí Ẩn', 'P021'),
('Cuộc Phiêu Lưu Kỳ Thú', 'P022'),
('Truy Tìm Kho Báu', 'P023'),
('Hòn Đảo Bí Ẩn', 'P024'),
('Người Trong Bóng Tối', 'P025'),
('Thành Phố Ngầm', 'P026'),
('Mùa Hè Rực Rỡ', 'P027'),
('Chuyến Xe Bí Ẩn', 'P028'),
('Ngọn Hải Đăng Cuối Cùng', 'P029'),
('Người Lạ Trong Đêm', 'P030'),
('Bí Ẩn Rừng Sâu', 'P031'),
('Hành Tinh Xa Xôi', 'P032'),
('Ngôi Sao Tối Thượng', 'P033'),
('Chuyến Phiêu Lưu Không Lối Thoát', 'P034'),
('Người Hùng Bí Ẩn', 'P035'),
('Vùng Đất Băng Giá', 'P036'),
('Ngọn Lửa Cuối Cùng', 'P037'),
('Trận Chiến Bí Ẩn', 'P038'),
('Người Băng', 'P039'),
('Hành Trình Tới Thiên Đường', 'P040'),
('Cơn Lốc Bí Ẩn', 'P041'),
('Ngọn Núi Thiêng', 'P042'),
('Người Phiêu Lưu', 'P043'),
('Ánh Sáng Trong Bóng Tối', 'P044'),
('Vương Quốc Bí Ẩn', 'P045'),
('Hồn Ma Trong Thành Phố', 'P046'),
('Cánh Cửa Thời Gian', 'P047'),
('Ngôi Nhà Bí Ẩn', 'P048'),
('Cuộc Chiến Không Tên', 'P049'),
('Người Giữ Bí Mật', 'P050');

