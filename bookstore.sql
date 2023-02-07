
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietchuongtrinhgiamgia`
--

CREATE TABLE `chitietchuongtrinhgiamgia` (
  `MaGG` varchar(5) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `phanTramGiam` float NOT NULL,
  `MaSach` varchar(5) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chitietchuongtrinhgiamgia`
--

INSERT INTO `chitietchuongtrinhgiamgia` (`MaGG`, `phanTramGiam`, `MaSach`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `MaSach` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `TenSach` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `SoLuong` int(20) NOT NULL,
  `DonGia` float NOT NULL,
  `GiamGia` int(3) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSach`, `TenSach`, `SoLuong`, `DonGia`, `GiamGia`, `ThanhTien`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `MaCTPN` varchar(5) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `MaPN` varchar(5) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `MaSach` varchar(5) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `DonGia` int(10) NOT NULL,
  `SoLuong` int(10) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`MaCTPN`, `MaPN`, `MaSach`, `DonGia`, `SoLuong`, `ThanhTien`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `chuongtrinhgiamgia`
--

CREATE TABLE `chuongtrinhgiamgia` (
  `MaGG` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `TenChuongTrinh` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `LoaiChuongTrinh` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `NgayBD` date NOT NULL,
  `NgayKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `chuongtrinhgiamgia`
--

INSERT INTO `chuongtrinhgiamgia` (`MaGG`, `TenChuongTrinh`, `LoaiChuongTrinh`, `NgayBD`, `NgayKT`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `MaKH` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `MaNV` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `MaGG` varchar(5) COLLATE utf32_unicode_ci DEFAULT NULL,
  `NgayLapHD` date NOT NULL,
  `TongTien` float NOT NULL,
  `GiamGia` float NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaNV`, `MaGG`, `NgayLapHD`, `TongTien`, `GiamGia`, `ThanhTien`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `Ho` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `Ten` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `SDT` varchar(10) COLLATE utf32_unicode_ci NOT NULL,
  `Email` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `Phai` tinyint(1) NOT NULL,
  `TCT` int(10) NOT NULL,
  `NgaySinh` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `Ho`, `Ten`, `SDT`, `Email`, `Phai`, `TCT`, `NgaySinh`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` varchar(5) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TenNCC` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `DiaChi` varchar(255) COLLATE utf8mb4_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_vietnamese_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `Ho` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `Ten` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `SDT` char(10) COLLATE utf32_unicode_ci NOT NULL,
  `Email` varchar(35) COLLATE utf32_unicode_ci NOT NULL,
  `Phai` tinyint(1) NOT NULL,
  `NgaySinh` date NOT NULL DEFAULT current_timestamp(),
  `ChucVu` varchar(25) COLLATE utf32_unicode_ci NOT NULL,
  `Luong` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `Ho`, `Ten`, `SDT`, `Email`, `Phai`, `NgaySinh`, `ChucVu`, `Luong`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `nhaxuatban`
--

CREATE TABLE `nhaxuatban` (
  `MaNXB` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `TenNXB` varchar(30) COLLATE utf32_unicode_ci NOT NULL,
  `DiaChiNXB` varchar(70) COLLATE utf32_unicode_ci NOT NULL,
  `SDT` varchar(10) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `nhaxuatban`
--

INSERT INTO `nhaxuatban` (`MaNXB`, `TenNXB`, `DiaChiNXB`, `SDT`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `MaNV` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `MaNCC` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_vietnamese_ci NOT NULL,
  `TrangThai` tinyint(1) NOT NULL,
  `TongTien` float NOT NULL,
  `NgayNhap` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`MaPN`, `MaNV`, `MaNCC`, `TrangThai`, `TongTien`, `NgayNhap`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `sach`
--

CREATE TABLE `sach` (
  `MaSach` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `MaNXB` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `MaTG` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `MaTL` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `TenSach` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `NamXuatBan` int(11) NOT NULL,
  `SoLuong` int(20) NOT NULL,
  `DonGia` float UNSIGNED NOT NULL,
  `imgName` varchar(20) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `sach`
--

INSERT INTO `sach` (`MaSach`, `MaNXB`, `MaTG`, `MaTL`, `TenSach`, `NamXuatBan`, `SoLuong`, `DonGia`, `imgName`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `tacgia`
--

CREATE TABLE `tacgia` (
  `MaTG` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `TenTG` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `DiaChi` varchar(70) COLLATE utf32_unicode_ci NOT NULL,
  `SDT` char(10) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `tacgia`
--

INSERT INTO `tacgia` (`MaTG`, `TenTG`, `DiaChi`, `SDT`) VALUES ;

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaTK` varchar(5) COLLATE utf32_unicode_ci NOT NULL,
  `TenTaiKhoan` varchar(255) COLLATE utf32_unicode_ci NOT NULL,
  `MatKhau` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Quyen` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TrangThai` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaTK`, `TenTaiKhoan`, `MatKhau`, `Quyen`, `TrangThai`) VALUES
('DUC', 'admin', 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Table structure for table `theloai`
--

CREATE TABLE `theloai` (
  `MaTL` varchar(50) COLLATE utf32_unicode_ci NOT NULL,
  `TenTL` varchar(30) COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `theloai`
--

INSERT INTO `theloai` (`MaTL`, `TenTL`) VALUES ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietchuongtrinhgiamgia`
--
ALTER TABLE `chitietchuongtrinhgiamgia`
  ADD UNIQUE KEY `unique_index` (`MaGG`,`MaSach`),
  ADD KEY `MaGG` (`MaGG`),
  ADD KEY `MaSach` (`MaSach`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaSach` (`MaSach`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`MaCTPN`),
  ADD KEY `MaPN` (`MaPN`),
  ADD KEY `MaSach` (`MaSach`);

--
-- Indexes for table `chuongtrinhgiamgia`
--
ALTER TABLE `chuongtrinhgiamgia`
  ADD PRIMARY KEY (`MaGG`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `FK_MaKH` (`MaKH`),
  ADD KEY `MaGG` (`MaGG`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Indexes for table `nhaxuatban`
--
ALTER TABLE `nhaxuatban`
  ADD PRIMARY KEY (`MaNXB`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`),
  ADD KEY `MaNCC` (`MaNCC`);

--
-- Indexes for table `sach`
--
ALTER TABLE `sach`
  ADD PRIMARY KEY (`MaSach`),
  ADD KEY `FK_MaNXB` (`MaNXB`),
  ADD KEY `FK_MaTL` (`MaTL`),
  ADD KEY `FK_MaTG` (`MaTG`);

--
-- Indexes for table `tacgia`
--
ALTER TABLE `tacgia`
  ADD PRIMARY KEY (`MaTG`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`TenTaiKhoan`),
  ADD KEY `MaTK` (`MaTK`);

--
-- Indexes for table `theloai`
--
ALTER TABLE `theloai`
  ADD PRIMARY KEY (`MaTL`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietchuongtrinhgiamgia`
--
ALTER TABLE `chitietchuongtrinhgiamgia`
  ADD CONSTRAINT `chitietchuongtrinhgiamgia_ibfk_1` FOREIGN KEY (`MaGG`) REFERENCES `chuongtrinhgiamgia` (`MaGG`),
  ADD CONSTRAINT `chitietchuongtrinhgiamgia_ibfk_2` FOREIGN KEY (`MaSach`) REFERENCES `sach` (`MaSach`);

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaSach`) REFERENCES `sach` (`MaSach`);

--
-- Constraints for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`MaPN`) REFERENCES `phieunhap` (`MaPN`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`MaSach`) REFERENCES `sach` (`MaSach`);

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `FK_MaKH` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`),
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaGG`) REFERENCES `chuongtrinhgiamgia` (`MaGG`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`);

--
-- Constraints for table `sach`
--
ALTER TABLE `sach`
  ADD CONSTRAINT `sach_ibfk_1` FOREIGN KEY (`MaNXB`) REFERENCES `nhaxuatban` (`MaNXB`),
  ADD CONSTRAINT `sach_ibfk_2` FOREIGN KEY (`MaTG`) REFERENCES `tacgia` (`MaTG`),
  ADD CONSTRAINT `sach_ibfk_3` FOREIGN KEY (`MaTL`) REFERENCES `theloai` (`MaTL`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MaTK`) REFERENCES `nhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
