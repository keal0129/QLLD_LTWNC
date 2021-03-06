USE [master]
GO
/****** Object:  Database [CSDLQLLD]    Script Date: 11/5/2016 2:26:38 PM ******/
CREATE DATABASE [CSDLQLLD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CSDLQLLD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CSDLQLLD.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CSDLQLLD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CSDLQLLD_log.LDF' , SIZE = 3200KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CSDLQLLD] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CSDLQLLD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CSDLQLLD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CSDLQLLD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CSDLQLLD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CSDLQLLD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CSDLQLLD] SET ARITHABORT OFF 
GO
ALTER DATABASE [CSDLQLLD] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [CSDLQLLD] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CSDLQLLD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CSDLQLLD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CSDLQLLD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CSDLQLLD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CSDLQLLD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CSDLQLLD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CSDLQLLD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CSDLQLLD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CSDLQLLD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CSDLQLLD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CSDLQLLD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CSDLQLLD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CSDLQLLD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CSDLQLLD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CSDLQLLD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CSDLQLLD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CSDLQLLD] SET RECOVERY FULL 
GO
ALTER DATABASE [CSDLQLLD] SET  MULTI_USER 
GO
ALTER DATABASE [CSDLQLLD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CSDLQLLD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CSDLQLLD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CSDLQLLD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CSDLQLLD]
GO
/****** Object:  Table [dbo].[CongTrinh]    Script Date: 11/5/2016 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CongTrinh](
	[MACT] [nvarchar](20) NOT NULL,
	[TENCT] [nvarchar](20) NULL,
	[DIADIEM] [nvarchar](20) NULL,
	[NGAYCAPGP] [date] NULL,
	[NGAYKC] [date] NULL,
	[NGAYHT] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[MACT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/5/2016 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MANV] [nvarchar](20) NOT NULL,
	[HOTEN] [nvarchar](20) NULL,
	[NGAYSINH] [date] NULL,
	[PHAI] [nvarchar](20) NULL,
	[DIACHI] [nvarchar](20) NULL,
	[MAPB] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhanCong]    Script Date: 11/5/2016 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MAPB] [nvarchar](20) NOT NULL,
	[MACT] [nvarchar](20) NOT NULL,
	[MANV] [nvarchar](20) NOT NULL,
	[SLNGAYCONG] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[MAPB] ASC,
	[MACT] ASC,
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PhongBan]    Script Date: 11/5/2016 2:26:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MAPB] [nvarchar](20) NOT NULL,
	[TENPB] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MAPB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CongTrinh] ([MACT], [TENCT], [DIADIEM], [NGAYCAPGP], [NGAYKC], [NGAYHT]) VALUES (N'CT1', N'Tòa nhà TCP', N'TPHCM', CAST(0xA4390B00 AS Date), CAST(0xA4390B00 AS Date), CAST(0x113B0B00 AS Date))
INSERT [dbo].[CongTrinh] ([MACT], [TENCT], [DIADIEM], [NGAYCAPGP], [NGAYKC], [NGAYHT]) VALUES (N'CT2', N'Tòa nhà FDC', N'TPHCM', CAST(0xA4390B00 AS Date), CAST(0xA4390B00 AS Date), CAST(0x113B0B00 AS Date))
INSERT [dbo].[CongTrinh] ([MACT], [TENCT], [DIADIEM], [NGAYCAPGP], [NGAYKC], [NGAYHT]) VALUES (N'CT3', N'Công Ty HCD', N'TPHCM', CAST(0xA4390B00 AS Date), CAST(0xA4390B00 AS Date), CAST(0x113B0B00 AS Date))
INSERT [dbo].[CongTrinh] ([MACT], [TENCT], [DIADIEM], [NGAYCAPGP], [NGAYKC], [NGAYHT]) VALUES (N'CT4', N'Chung Cư K12', N'TPHCM', CAST(0xA4390B00 AS Date), CAST(0xA4390B00 AS Date), CAST(0x113B0B00 AS Date))
INSERT [dbo].[CongTrinh] ([MACT], [TENCT], [DIADIEM], [NGAYCAPGP], [NGAYKC], [NGAYHT]) VALUES (N'CT5', N'Win ', N'Tp Ho Chi Minh', CAST(0x21380B00 AS Date), CAST(0x21380B00 AS Date), CAST(0x21380B00 AS Date))
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV01', N'Lương Gia An', CAST(0x721E0B00 AS Date), N'Nữ', N'Gò vấp a', N'PB01')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV010', N'Lương Gia An', CAST(0x721E0B00 AS Date), N'Nữ', N'Gò vấp a', N'PB01')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV011', N'Lu', CAST(0x831F0B00 AS Date), N'Nam', N'Q2', N'PB01')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV012', N'Tri', CAST(0x521E0B00 AS Date), N'Nam', N'Quan Go Vap', N'PB01')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV013', N'MRs Tân ', CAST(0x5A1E0B00 AS Date), N'Nữ', N'Chợ lớn', N'PB01')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV02', N'Phong Vũ', CAST(0x721E0B00 AS Date), N'Nam', N'Q1', N'PB02')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV03', N'Chung An', CAST(0x721E0B00 AS Date), N'Nữ', N'Gò vấp', N'PB01')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV04', N'Chí Thiện', CAST(0x721E0B00 AS Date), N'Nam', N'Q1', N'PB03')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV05', N'Anh Phong', CAST(0x721E0B00 AS Date), N'Nam', N'Gò vấp', N'PB01')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV06', N'Khoa', CAST(0x721E0B00 AS Date), N'Nữ', N'Q1', N'PB03')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV07', N'Trường An', CAST(0x721E0B00 AS Date), N'Nam', N'Gò vấp', N'PB01')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV08', N'Anh Duy', CAST(0x721E0B00 AS Date), N'Nam', N'Q12', N'PB02')
INSERT [dbo].[NhanVien] ([MANV], [HOTEN], [NGAYSINH], [PHAI], [DIACHI], [MAPB]) VALUES (N'NV09', N'Tân', CAST(0x721E0B00 AS Date), N'Nữ', N'Gò vấp', N'PB01')
INSERT [dbo].[PhanCong] ([MAPB], [MACT], [MANV], [SLNGAYCONG]) VALUES (N'PB01', N'CT1', N'NV01', N'76')
INSERT [dbo].[PhanCong] ([MAPB], [MACT], [MANV], [SLNGAYCONG]) VALUES (N'PB01', N'CT1', N'NV02', N'15')
INSERT [dbo].[PhanCong] ([MAPB], [MACT], [MANV], [SLNGAYCONG]) VALUES (N'PB01', N'CT2', N'NV01', N'76')
INSERT [dbo].[PhongBan] ([MAPB], [TENPB]) VALUES (N'PB01', N'Phòng kế hoạch')
INSERT [dbo].[PhongBan] ([MAPB], [TENPB]) VALUES (N'PB02', N'Phòng Xây dựng')
INSERT [dbo].[PhongBan] ([MAPB], [TENPB]) VALUES (N'PB03', N'Phòng Đào tạo')
INSERT [dbo].[PhongBan] ([MAPB], [TENPB]) VALUES (N'PB04', N'Phòng tài chính')
INSERT [dbo].[PhongBan] ([MAPB], [TENPB]) VALUES (N'PB05', N'Phòng Maketin')
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_CongTrinh] FOREIGN KEY([MACT])
REFERENCES [dbo].[CongTrinh] ([MACT])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_CongTrinh]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_NhanVien] FOREIGN KEY([MANV])
REFERENCES [dbo].[NhanVien] ([MANV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_NhanVien]
GO
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_PhongBan] FOREIGN KEY([MAPB])
REFERENCES [dbo].[PhongBan] ([MAPB])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_PhongBan]
GO
USE [master]
GO
ALTER DATABASE [CSDLQLLD] SET  READ_WRITE 
GO
