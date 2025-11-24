CREATE DATABASE IF NOT EXISTS QuanLyPhim;

1.Phim
-mã Phim
- tên Phim
-đánh giá
-thời lượng
-quốc gia
-bình luận
-ngôn ngữ
-năm sản xuất

-id int 
-mã Phim varchar 
-thời lượng int
-năm sản xuất int
-diễn viên varchar
-đạo diễn varchar
-quốc gia varchar
-thể loại varchar
-tuổi varchar
-đường dẫn Phim
-mô tả
-ảnh Phim
-đường dẫn trailer
-poster
2.người dùng
-id int
-tên đăng nhập varchar
- mật khẩu varchar
-loại tài khoản(admin, người dùng, đạo diễn, diễn viên) varchar
-email varchar
- so dien thoại varchar
3.thể loại
-id int
-tên thể loại varchar
4.Quốc gia
-id int
-tên quốc gia varchar
50 1uoocs gia
10 thể loại Phimtài khoản người dùng 20 dữ liêu
1 tk addmin, nguowifd dùng diễn viên, đạo diễn 
50 Phim


1. phim 
    - id int
    - mã phim varchar
    - thời lượng
    - năm 
    - --diễn viên
    - tuổi
    - đạo diễn (int)
    - đường dẫn phim
    - đương dẫn trailer
    - poster 
    - Nôi dung
    - Mô tả
    - quốc gia (Id)
    - Thể loại (Id)
2. người dùng
    - id
    - tên đăng nhập
    - mật khẩu
    - loại tài khoản (admin, người dùng, đạo diễn, diễn viên)
    - tuổi
    - sđt
    - email
3. Thể loại
    - Id
    - Tên thể loại
4. Quốc gia
    - id
    - Tên Quốc gia
5 phim- dieenc viên
-id (int)
-id phim(int)
id diễn viên(int)
