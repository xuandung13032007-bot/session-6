CREATE DATABASE QuanLyThuVien;
USE QuanLyThuVien;
CREATE TABLE TacGia (
    MaTacGia INT PRIMARY KEY AUTO_INCREMENT,
    TenTacGia VARCHAR(100) NOT NULL,
    QuocTich VARCHAR(50)
);

CREATE TABLE DocGia (
    MaDocGia INT PRIMARY KEY AUTO_INCREMENT,
    TenDocGia VARCHAR(100) NOT NULL,
    DiaChi VARCHAR(255),
    SoDienThoai VARCHAR(15) UNIQUE
);
INSERT INTO TacGia (TenTacGia, QuocTich)
VALUES ('Nguyễn Nhật Ánh', 'Việt Nam'),
('J.K. Rowling', 'Anh'),
('Haruki Murakami', 'Nhật Bản'),
('Dale Carnegie', 'Mỹ');
INSERT INTO DocGia (TenDocGia, DiaChi, SoDienThoai)
VALUES ('Nguyễn Văn A', '123 Đường ABC, Hà Nội', '097865432'),
('Trần Thị B', '456 Đường XYZ, TP.HCM', '0786543213'),
('Lê Văn C', '789 Đường LMN, Đà Nẵng', '034567854'),
('Phạm Thị D', '101 Đường QRS, Hà Nội', '0981234567'),
('Hoàng Văn E', '202 Đường UVW, Cần Thơ', '0765321456');