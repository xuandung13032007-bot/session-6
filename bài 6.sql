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
SELECT *
FROM TacGia 
WHERE QuocTich = 'Việt Nam';
SELECT *
FROM DocGia 
WHERE DiaChi like  'Hà Nội%';
SELECT TenDocGia, SoDienThoai
FROM DocGia;
UPDATE DocGia
SET DiaChi = '200 Đường XYZ, TP. Thủ Đức'
WHERE MaDocGia = 2;
DELETE FROM TacGia
WHERE MaTacGia = 3;
CREATE TABLE Sach (
    MaSach INT PRIMARY KEY AUTO_INCREMENT,
    TenSach VARCHAR(200) NOT NULL,
    NamXuatBan INT,
    MaTacGia INT NULL,
    FOREIGN KEY (MaTacGia) REFERENCES TacGia(MaTacGia)
);
INSERT INTO Sach (TenSach, NamXuatBan, MaTacGia)
VALUES ('Cho tôi xin một vé đi tuổi thơ', 2008, 1),
('Mắt biếc', 1990, 1),
('Harry Potter và Hòn đá Phù thủy', 1997, 2),
('Harry Potter và Phòng chứa Bí mật', 1998, 2),
('Đắc nhân tâm', 1936, 4);
SELECT *
FROM Sach
WHERE NamXuatBan >= 1990 AND NamXuatBan <= 2000;
SELECT *
FROM Sach
WHERE TenSach = 'Harry Potter và Hòn đá Phù thủy' OR TenSach = 'Harry Potter và Phòng chứa Bí mật';
SELECT *
FROM Sach
WHERE MaTacGia = 1 AND NamXuatBan > 2000;



