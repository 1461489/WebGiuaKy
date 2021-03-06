USE [master]
GO
/****** Object:  Database [MobileShop]    Script Date: 20/04/2017 9:15:55 CH ******/
CREATE DATABASE [MobileShop]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'MobileShop', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MobileShop.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'MobileShop_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\MobileShop_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [MobileShop] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [MobileShop].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [MobileShop] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [MobileShop] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [MobileShop] SET ARITHABORT OFF 
GO
ALTER DATABASE [MobileShop] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [MobileShop] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [MobileShop] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [MobileShop] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [MobileShop] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [MobileShop] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [MobileShop] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [MobileShop] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [MobileShop] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [MobileShop] SET  DISABLE_BROKER 
GO
ALTER DATABASE [MobileShop] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [MobileShop] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [MobileShop] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [MobileShop] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [MobileShop] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [MobileShop] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [MobileShop] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [MobileShop] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [MobileShop] SET  MULTI_USER 
GO
ALTER DATABASE [MobileShop] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [MobileShop] SET DB_CHAINING OFF 
GO
ALTER DATABASE [MobileShop] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [MobileShop] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [MobileShop] SET DELAYED_DURABILITY = DISABLED 
GO
USE [MobileShop]
GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 20/04/2017 9:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [nvarchar](10) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_LoaiSP_TinhTrang]  DEFAULT ((0)),
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 20/04/2017 9:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNhaSX] [nvarchar](10) NOT NULL,
	[TenNhaSX] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_NhaSanXuat_TinhTrang]  DEFAULT ((0)),
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNhaSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 20/04/2017 9:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](10) NOT NULL,
	[TenSP] [nvarchar](200) NULL,
	[MaLoaiSP] [nvarchar](10) NULL,
	[MaNhaSX] [nvarchar](10) NULL,
	[DungLuongBin] [nvarchar](50) NULL,
	[TheSim] [nvarchar](50) NULL,
	[TheNho] [nvarchar](50) NULL,
	[BoNhoTrong] [nvarchar](50) NULL,
	[RAM] [nvarchar](50) NULL,
	[CPU] [nvarchar](50) NULL,
	[CameraTruoc] [nvarchar](50) NULL,
	[CameraSau] [nvarchar](50) NULL,
	[HeDieuHanh] [nvarchar](50) NULL,
	[ManHinh] [nvarchar](50) NULL,
	[CauHinh] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [int] NULL,
	[SoLuongBan] [int] NULL,
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)),
	[LuotXem] [int] NULL,
	[ThemSP] [nvarchar](50) NULL CONSTRAINT [DF_SanPham_ThemSP]  DEFAULT (N'New'),
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [TinhTrang]) VALUES (N'LSP01', N'Tầm Cao', NULL)
INSERT [dbo].[LoaiSP] ([MaLoaiSP], [TenLoaiSP], [TinhTrang]) VALUES (N'LSP02', N'Tầm Trung', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX], [TinhTrang]) VALUES (N'NSX01', N'Apple', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX], [TinhTrang]) VALUES (N'NSX02', N'SamSung', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX], [TinhTrang]) VALUES (N'NSX03', N'Oppo', NULL)
INSERT [dbo].[NhaSanXuat] ([MaNhaSX], [TenNhaSX], [TinhTrang]) VALUES (N'NSX04', N'Asus', NULL)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP01', N'Điện thoại iPhone 7 256GB', N'LSP01', N'NSX01', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	Không', N'Bộ nhớ trong:	256 GB', N'RAM:	3 GB', N'CPU:	Apple A10 Fusion 4 nhân 64-bit', N'Camera trước:	7 MP', N'Camera sau:	Hai camera 12 MP', N'Hệ điều hành:	iOS 10', N'Màn hình:	LED-backlit IPS LCD, 5.5", Retina HD', N'Thông số kỹ thuật', N'ip1.jpg', N'ip2.jpg', N'ip3.jpg', N'ip1.jpg', N'ip2.jpg', 21000000, 0, N'0         ', 0, N'New')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP02', N'Điện thoại iPhone 6s 128GB', N'LSP01', N'NSX01', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	Không', N'Bộ nhớ trong:	128 GB', N'RAM:	3 GB', N'CPU:	Apple A10 Fusion 4 nhân 64-bit', N'Camera trước:	7 MP', N'Camera sau:	Hai camera 12 MP', N'Hệ điều hành:	iOS 10', N'Màn hình:	LED-backlit IPS LCD, 5.5", Retina HD', N'Thông số kỹ thuật', N'ip2.jpg', N'ip3.jpg', N'ip1.jpg', N'ip2.jpg', N'ip3.jpg', 16000000, 0, N'0         ', 0, N'New')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP03', N'Điện thoại IPHONE 5S 16GB', N'LSP02', N'NSX01', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	Không', N'Bộ nhớ trong:	128 GB', N'RAM:	3 GB', N'CPU:	Apple A10 Fusion 4 nhân 64-bit', N'Camera trước:	7 MP', N'Camera sau:	Hai camera 12 MP', N'Hệ điều hành:	iOS 10', N'Màn hình:	LED-backlit IPS LCD, 5.5", Retina HD', N'Thông số kỹ thuật', N'ip4.jpg', N'ip5.jpg', N'ip4.jpg', N'ip5.jpg', N'ip4.jpg', 6500000, 0, N'0         ', 0, N'New')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP04', N'Điện thoại Samsung Galaxy S7 Edge', N'LSP01', N'NSX02', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	32 GB', N'RAM:	4 GB', N'CPU:	Exynos 8890 8 nhân 64-bit', N'Camera trước:	5 MP', N'Camera sau:	12 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	Super AMOLED, 5.5", Quad HD (2K)', N'Thông số kỹ thuật', N'ss1.jpg', N'ss2.jpg', N'ss3.jpg', N'ss4.jpg', N'ss1.jpg', 15000000, 0, N'0         ', 0, N'New')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP05', N'Điện thoại Samsung Galaxy S7', N'LSP01', N'NSX02', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	32 GB', N'RAM:	4 GB', N'CPU:	Exynos 8890 8 nhân 64-bit', N'Camera trước:	5 MP', N'Camera sau:	12 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	Super AMOLED, 5.5", Quad HD (2K)', N'Thông số kỹ thuật', N'ss2.jpg', N'ss3.jpg', N'ss4.jpg', N'ss1.jpg', N'ss2.jpg', 14000000, 0, N'0         ', 0, N'New')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP06', N'Điện thoại Samsung Galaxy J7 Prime', N'LSP02', N'NSX02', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	32 GB', N'RAM:	3 GB', N'CPU:	Exynos 7870 8 nhân 64-bit', N'Camera trước:	8 MP', N'Camera sau:	13 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	PLS TFT LCD, 5.5", Full HD', N'Thông số kỹ thuật', N'ss5.jpg', N'ss1.jpg', N'ss2.jpg', N'ss3.jpg', N'ss4.jpg', 5500000, 0, N'0         ', 0, N'New')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP07', N'Điện thoại OPPO F3 Plus 64GB', N'LSP01', N'NSX03', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	4 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	16 MP và 8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	IPS LCD, 6", Full HD', N'Thông số kỹ thuật', N'op1.jpg', N'op2.jpg', N'op3.jpg', N'op4.jpg', N'op5.jpg', 10000000, 0, N'0         ', 0, N'New')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP08', N'Điện thoại OPPO F1s [17] 64GB', N'LSP02', N'NSX03', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	4 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	16 MP và 8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	IPS LCD, 6", Full HD', N'Thông số kỹ thuật', N'op2.jpg', N'op3.jpg', N'op4.jpg', N'op5.jpg', N'op1.jpg', 6000000, 0, N'0         ', 0, N'New')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP09', N'Điện thoại OPPO F2s 64GB', N'LSP02', N'NSX03', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	3 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	16 MP và 8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	IPS LCD, 6", Full HD', N'Thông số kỹ thuật', N'op3.jpg', N'op4.jpg', N'op5.jpg', N'op1.jpg', N'op2.jpg', 6000000, 0, N'0         ', 0, N'New')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP10', N'Điện thoại Asus Zenfone 3 ZE552KL', N'LSP01', N'NSX04', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	4 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	16 MP và 8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	IPS LCD, 6", Full HD', N'Thông số kỹ thuật', N'as1.jpg', N'as2.jpg', N'as3.jpg', N'as4.jpg', N'as1.jpg', 9000000, 0, N'0         ', 0, N'New')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP11', N'Điện thoại Asus Zenfone 3 ZE520KL', N'LSP01', N'NSX04', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	3 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	Super IPS LCD, 5.2", Full HD', N'Thông số kỹ thuật', N'as2.jpg', N'as3.jpg', N'as4.jpg', N'as2.jpg', N'as1.jpg', 8000000, 0, N'0         ', 0, N'New')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [MaLoaiSP], [MaNhaSX], [DungLuongBin], [TheSim], [TheNho], [BoNhoTrong], [RAM], [CPU], [CameraTruoc], [CameraSau], [HeDieuHanh], [ManHinh], [CauHinh], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SoLuongBan], [TinhTrang], [LuotXem], [ThemSP]) VALUES (N'SP12', N'Điện thoại Asus Zenfone 3 ZC553KL', N'LSP02', N'NSX04', N'Dung lượng pin:	2900 mAh', N'Thẻ SIM:	1 Nano SIM', N'Thẻ nhớ:	MicroSD, hỗ trợ tối đa 256 GB', N'Bộ nhớ trong:	64 GB', N'RAM:	3 GB', N'CPU:	Snapdragon 653 8 nhân 64-bit', N'Camera trước:	8 MP', N'Camera sau:	16 MP', N'Hệ điều hành:	Android 6.0 (Marshmallow)', N'Màn hình:	Super IPS LCD, 5.2", Full HD', N'Thông số kỹ thuật', N'as3.jpg', N'as4.jpg', N'as1.jpg', N'as2.jpg', N'as3.jpg', 4000000, 0, N'0         ', 0, N'New')
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSP] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSP] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSP]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNhaSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNhaSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
/****** Object:  StoredProcedure [dbo].[SNT]    Script Date: 20/04/2017 9:15:56 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DECLARE @A INT, @B INT, @C INT,@DETA VARCHAR(20),@X VARCHAR(20) ,@X1 VARCHAR (20), @X2 VARCHAR(20) 
--SET @DETA =0
--SET @X=0
--SET @X1 = 0
--SET @X2 = 0
--SET @A=0
--SET @B=0
--SET @C=0
--SET @DETA=(@B*@B)-4*@A*@C
--BEGIN
--IF (@DETA <0)
--PRINT('PT VO NGHIEM')
--IF(@DETA = 0)
--SET @X=(@B)/(2*@A)
--PRINT('PHUONG TRÌNH CÓ NGHIỆM KÉP')
--PRINT'X = '+@X
--IF(@DETA >0)
--PRINT('PT CO 2 NGHIEM PHAN BIET')
--SET @X1 = (-@B)- SQRT (@DETA)/(2*@A)
--SET @X2 =(-@B)+ SQRT (@DETA)/(2*@A)
--PRINT'X1 = '+@X1
--SET @X2 =(-@B)+ SQRT (@DETA)/(2*@A)
--PRINT 'X2 = '+@X2

--END


--bai 7
CREATE PROC [dbo].[SNT] @n INT,@t INT OUTPUT
AS
DECLARE @i INT 
SET @i=2
WHiLE (@i<=@n)
BEGIN
	IF (@n%@i=0)
		RETURN 1
	ELSE 
		RETURN -1
END	

GO
USE [master]
GO
ALTER DATABASE [MobileShop] SET  READ_WRITE 
GO
