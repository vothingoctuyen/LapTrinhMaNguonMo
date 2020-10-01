-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2019 at 02:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_banhangthietbididong`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitiethd`
--

CREATE TABLE `chitiethd` (
  `SoHD` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `MaSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiethd`
--

INSERT INTO `chitiethd` (`SoHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
('HD01', 'SP06', 2, 2500000),
('HD03', 'SP10', 6, 260000),
('HD04', 'SP01', 1, 6990000),
('HD05', 'SP04', 1, 11000000),
('HD05', 'SP23', 2, 4000000),
('HD07', 'SP16', 20, 100000),
('HD08', 'SP02', 1, 7000000),
('HD08', 'SP09', 1, 5990000),
('HD09', 'SP18', 3, 2000000),
('HD09', 'SP30', 70, 100000),
('HD10', 'SP21', 2, 3000000),
('HD13', 'SP15', 100, 80000),
('HD14', 'SP08', 1, 6990000),
('HD14', 'SP20', 4, 1250000),
('HD15', 'SP17', 5, 1290000),
('HD16', 'SP09', 10, 100000),
('HD16', 'SP22', 5, 2500000),
('HD17', 'SP06', 40, 250000),
('HD18', 'SP12', 15, 50000),
('HD19', 'SP20', 4, 1250000),
('HD20', 'SP14', 5, 100000),
('HD21', 'SP10', 2, 260000),
('HD25', 'SP11', 7, 2900000),
('HD25', 'SP29', 8, 1000000),
('HD26', 'SP17', 3, 1290000),
('HD28', 'SP15', 30, 80000),
('HD29', 'SP05', 80, 100000),
('HD29', 'SP08', 1, 6990000),
('HD30', 'SP11', 1, 2900000),
('HD30', 'SP26', 6, 1250000);

-- --------------------------------------------------------

--
-- Table structure for table `hangsp`
--

CREATE TABLE `hangsp` (
  `MaHang` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `TenHang` text COLLATE utf8_unicode_ci,
  `DiaChiHang` text COLLATE utf8_unicode_ci,
  `SoDienThoaiHang` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hangsp`
--

INSERT INTO `hangsp` (`MaHang`, `TenHang`, `DiaChiHang`, `SoDienThoaiHang`) VALUES
('H001', 'Apple', 'Cupertino, California, Mỹ', '18001127'),
('H002', 'SAMSUNG', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H003', 'OPPO', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H004', 'NOKIA', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H005', 'HUAWEI', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H006', 'BKAV', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H007', 'VIVI', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H008', 'PHILIPS', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H009', 'MOBELL', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H010', 'MOBIISTAR', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H011', 'ITEL', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H012', 'BlackBerry', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H013', 'LENOVO', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157310'),
('H014', 'LG', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H015', 'TCL Communication', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H016', 'Sony', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H017', 'Lumia', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H018', 'Xiaomi', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H019', 'Vertu', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H020', 'Acer', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H021', 'ASus', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H022', 'HTC', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H023', 'Motorola', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H024', 'NEC', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H025', 'Panasonic', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H026', 'QMobile', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H027', 'Wiko', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H028', 'Viettel', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H029', 'Meizu', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684'),
('H030', 'Asanzo', 'Số 2, đường Hải Triều, Phường Bến Nghé, Quận 1, TP. Hồ Chí Minh', '02839157684');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `SoHD` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` date NOT NULL,
  `MaKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TriGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`SoHD`, `NgayLap`, `MaKH`, `TriGia`) VALUES
('HD01', '2019-01-01', 'KH001', 5000000),
('HD02', '2019-02-12', 'KH030', 3000000),
('HD03', '2019-02-04', 'KH002', 3500000),
('HD04', '2019-01-15', 'KH005', 5500000),
('HD05', '2019-03-03', 'KH008', 8000000),
('HD06', '2019-02-09', 'KH004', 7000000),
('HD07', '2019-01-24', 'KH003', 4000000),
('HD08', '2019-02-27', 'KH020', 5000000),
('HD09', '2019-03-22', 'KH003', 8300000),
('HD10', '2019-01-07', 'KH012', 9000000),
('HD11', '2019-02-19', 'KH007', 7500000),
('HD12', '2019-01-08', 'KH025', 8000000),
('HD13', '2019-02-05', 'KH009', 6000000),
('HD14', '2019-01-22', 'KH011', 9500000),
('HD15', '2019-01-09', 'KH016', 3000000),
('HD16', '2019-02-03', 'KH013', 3500000),
('HD17', '2019-02-24', 'KH022', 2500000),
('HD18', '2019-02-28', 'KH018', 1000000),
('HD19', '2019-03-20', 'KH010', 1500000),
('HD20', '2019-03-24', 'KH019', 4500000),
('HD21', '2019-03-15', 'KH014', 5000000),
('HD22', '2019-03-19', 'KH021', 8000000),
('HD23', '2019-03-14', 'KH027', 6000000),
('HD24', '2019-03-24', 'KH015', 9000000),
('HD25', '2019-04-01', 'KH023', 2500000),
('HD26', '2019-04-03', 'KH026', 10000000),
('HD27', '2019-04-05', 'KH029', 7000000),
('HD28', '2019-04-08', 'KH028', 4500000),
('HD29', '2019-04-15', 'KH006', 7500000),
('HD30', '2019-04-18', 'KH009', 8000000);

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenKH` text COLLATE utf8_unicode_ci NOT NULL,
  `Phai` text COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `Mail` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `password` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Phai`, `DienThoai`, `Mail`, `password`) VALUES
('KH001', 'TRẦN VŨ NGUYÊN', 'Nam', '0291237567', 'Nguyen@gmail.com', '@123'),
('KH002', 'LÝ HẢI MỘNG', 'Nam', ' 0291639067', 'Mong123@gmail.com', '@123'),
('KH003', 'NGUYỄN MINH NAM', 'Nam', '0291134547', 'Nam45@gmail.com', '@123'),
('KH004', 'LÂM THỊ CHI', 'Nữ', '0291334767', 'Chi123@gmail.com', '@123'),
('KH005', 'VĂN KHÚC NGHỆ', 'Nữ', '0290284567', 'Nghe123@gmail.com', '@123'),
('KH006', 'THÁI CÔNG VINH', 'Nam', '0291214867', 'Vinh1234@gmail.com', '@123'),
('KH007', 'NGÔ TÚ TRINH', 'Nữ', '0291204577', 'trinh09@gmail.com', '@123'),
('KH008', 'CAO VĂN ANH', 'Nam', '0291038567', 'anh12@gmail.com', '@123'),
('KH009', 'LẠI HỒNG NHẬT', 'Nam', '0291204067', 'nhat76@gmail.com', '@123'),
('KH010', 'BÙI THỊ PHƯỢNG', 'Nữ', '0291204567', 'phuong1232gmail.com', '@123'),
('KH011', 'TRẦN ĐĂNG KHOA', 'Nam', '0291834967', 'khoa123@gmail.com', '@123'),
('KH012', 'LÊ HẢI TRIỀU', 'Nam', '0291234517', 'trieu98@gmail.com', '@123'),
('KH013', 'MAI THỊ TUYẾT', 'Nữ', '0291234517', 'Tuyet123@gmail.com', '@123'),
('KH014', 'VÕ MINH TÚ', 'Nam', '291234563', 'tu123@gmail.com', '@123'),
('KH015', 'NGUYỄN ANH KHOA', 'Nam', '0291231567', 'khoa09@gmail.com', '@123'),
('KH016', 'LÊ THỊ HOA', 'Nữ', '0291234767', 'hoa43@gmail.com', '@123'),
('KH017', 'LÝ MẠNH', 'Nam', '0291224567', 'manh123@gmail.com', '@123'),
('KH018', 'NGUYỄN NGỌC NỮ', 'Nữ', '0291134567', 'nu123@gmail.com', '@123'),
('KH019', 'NGÔ KIẾN MINH', 'Nam', '0298234567', 'minh123@gmail.com', '@123'),
('KH020', 'NGUYỄN HÀ NAM', 'Nam', '0291239567', 'nam123@gmail.com', '@123'),
('KH021', 'NGUYỄN VĂN ANH', 'NỮ', '0291239567', 'anh098@gmail.com', '@123'),
('KH022', 'TRẦN THỊ THẮM', 'NỮ', '0291239567', 'tham123@gmail.com', '@123'),
('KH023', 'LÊ VĂN TÁM', 'NAM', '0291239567', 'tam1234@gmail.com', '@123'),
('KH024', 'VÕ THỊ BƯỞI', 'NỮ', '0291239567', 'buoi87@gmail.com', '@123'),
('KH025', 'TRẦN VĂN NGUYÊN', 'NAM', '0291239567', 'nguyen65@gmail.com', '@123'),
('KH026', 'LÊ THỊ HIỀN', 'NỮ', '0291239567', 'hien123@gmail.com', '@123'),
('KH027', 'LÊ THỊ PHUONG MAI', 'NỮ', '0346123203', 'mai1232gmail.com', '@123'),
('KH028', 'NGUYỄN MINH SƠN', 'NAM', '0909637634', 'son20@gmail.com', '@123'),
('KH029', 'VÕ THỊ NGỌC TUYỀN', 'NỮ', '0123456791', 'tuyen123@gmail.com', '@123');

-- --------------------------------------------------------

--
-- Table structure for table `loaisp`
--

CREATE TABLE `loaisp` (
  `MaLoai` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `TenLoai` text COLLATE utf8_unicode_ci,
  `MoTa` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `loaisp`
--

INSERT INTO `loaisp` (`MaLoai`, `TenLoai`, `MoTa`) VALUES
('L001', 'Điện thoại thông minh', 'Tổng hợp các dòng điện thoại thông minh hay còn gọi là Smartphone có màn hình cảm ứng'),
('L002', 'Điện thoại phổ thông', 'Tổng hợp các dòng điện thoại phổ thông có mức giá phù hợp cho người có thu nhập thấp'),
('L003', 'Phụ kiện điện thoại', 'Tổng hợp các sản phẩm phụ kiện như Ốp lưng, tai nghe, dán màn hình...');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenSP` text COLLATE utf8_unicode_ci NOT NULL,
  `MaLoai` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `MaHang` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaLoai`, `MaHang`, `DonGia`) VALUES
('SP01', 'OPPO F7', 'L001', 'H003', 6990000),
('SP02', 'OPPO F9', 'L001', 'H003', 7000000),
('SP03', 'SAMSUNG J7', 'L001', 'H002', 4500000),
('SP04', 'SAMSUNG S8', 'L001', 'H002', 11000000),
('SP05', 'TAI NGHE OPPO', 'L003', 'H003', 100000),
('SP06', 'SẠC DỰ PHÒNG OPPO', 'L003', 'H003', 250000),
('SP07', 'MOBELL M228', 'L002', 'H009', 190000),
('SP08', 'HUAWEI NOVA 3I', 'L001', 'H005', 6990000),
('SP09', 'VIVO V9', 'L001', 'H007', 5990000),
('SP10', 'PHILIPS E103', 'L002', 'H008', 260000),
('SP11', 'ITEL S42', 'L001', 'H011', 2900000),
('SP12', 'TAI NGHE SAMSUNG', 'L003', 'H003', 50000),
('SP13', 'ỐP LƯNG OPPO', 'L003', 'H003', 100000),
('SP14', 'ỐP LƯNG SAMSUNG', 'L003', 'H002', 100000),
('SP15', 'TAI NGHE IPHONE', 'L003', 'H001', 80000),
('SP16', 'ỐP LƯNG IPHONE', 'L003', 'H001', 100000),
('SP17', 'ASANZO S3 PLUS', 'L001', 'H030', 1290000),
('SP18', 'ASUS ZENFONE 4', 'L001', 'H029', 2000000),
('SP19', 'NOKIA 1280', 'L002', 'H004', 5000000),
('SP20', 'NOKIA LUMIA 520', 'L001', 'H017', 1250000),
('SP21', 'LENOVO A7000', 'L001', 'H013', 3000000),
('SP22', 'LG G7', 'L001', 'H014', 2500000),
('SP23', 'XIAOMI NOTE 7', 'L001', 'H018', 4000000),
('SP24', 'VERTU', 'L002', 'H019', 1200000),
('SP25', 'HTC DESIRE 628', 'L001', 'H022', 3000000),
('SP26', 'MOTOROLA MOTO 2C', 'L001', 'H023', 1250000),
('SP27', 'SẠC DỰ PHÒNG SAMSUNG', 'L003', 'H002', 400000),
('SP28', 'SẠC ĐIỆN THOẠI IPHONE', 'L003', 'H001', 5000000),
('SP29', 'KÍNH CƯỜNG LỰC OPPO', 'L003', 'H003', 1000000),
('SP30', 'KÍNH  CƯỜNG LỰC SAMSUNG', 'L003', 'H002', 100000);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `User` varchar(20) NOT NULL,
  `Password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`User`, `Password`) VALUES
('KH01', '@12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitiethd`
--
ALTER TABLE `chitiethd`
  ADD PRIMARY KEY (`SoHD`,`MaSP`);

--
-- Indexes for table `hangsp`
--
ALTER TABLE `hangsp`
  ADD PRIMARY KEY (`MaHang`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`SoHD`,`NgayLap`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `loaisp`
--
ALTER TABLE `loaisp`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`User`),
  ADD KEY `User` (`User`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
