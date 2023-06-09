USE [master]
GO
/****** Object:  Database [Ucak]    Script Date: 12.05.2023 23:35:21 ******/
CREATE DATABASE [Ucak]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Ucak', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERNEW\MSSQL\DATA\Ucak.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Ucak_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVERNEW\MSSQL\DATA\Ucak_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Ucak] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Ucak].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Ucak] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Ucak] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Ucak] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Ucak] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Ucak] SET ARITHABORT OFF 
GO
ALTER DATABASE [Ucak] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Ucak] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Ucak] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Ucak] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Ucak] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Ucak] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Ucak] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Ucak] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Ucak] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Ucak] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Ucak] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Ucak] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Ucak] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Ucak] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Ucak] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Ucak] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Ucak] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Ucak] SET RECOVERY FULL 
GO
ALTER DATABASE [Ucak] SET  MULTI_USER 
GO
ALTER DATABASE [Ucak] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Ucak] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Ucak] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Ucak] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Ucak] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Ucak] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Ucak', N'ON'
GO
ALTER DATABASE [Ucak] SET QUERY_STORE = OFF
GO
USE [Ucak]
GO
/****** Object:  Table [dbo].[TBL_BİLET]    Script Date: 12.05.2023 23:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_BİLET](
	[Bilet_Id] [int] IDENTITY(1,1) NOT NULL,
	[Yolcu_Id] [int] NULL,
	[Sefer_Id] [int] NULL,
 CONSTRAINT [PK_TBL_BİLET] PRIMARY KEY CLUSTERED 
(
	[Bilet_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_SEFERLER]    Script Date: 12.05.2023 23:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_SEFERLER](
	[Sefer_Id] [int] IDENTITY(1,1) NOT NULL,
	[Kalkış_Yer] [varchar](50) NULL,
	[Varış_Yer] [varchar](50) NULL,
	[Kalkış_Tarih] [date] NULL,
	[Varış_Tarih] [date] NULL,
	[Ucak_Id] [int] NULL,
	[Ücret] [varchar](50) NULL,
	[Sefer_Ad] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_SEFERLER] PRIMARY KEY CLUSTERED 
(
	[Sefer_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_UCAK]    Script Date: 12.05.2023 23:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_UCAK](
	[Ucak_Id] [int] IDENTITY(1,1) NOT NULL,
	[Ucak_Ad] [varchar](50) NULL,
	[Koltuk_Sayısı] [int] NULL,
 CONSTRAINT [PK_TBL_UCAK] PRIMARY KEY CLUSTERED 
(
	[Ucak_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TBL_YOLCU]    Script Date: 12.05.2023 23:35:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TBL_YOLCU](
	[Yolcu_Id] [int] IDENTITY(1,1) NOT NULL,
	[İsim] [varchar](50) NULL,
	[Yas] [varchar](3) NULL,
	[Cinsiyet] [varchar](50) NULL,
	[Yaşlı_Mı] [varchar](50) NULL,
	[Engelli_Mi] [varchar](50) NULL,
	[Koltuk_No] [varchar](50) NULL,
 CONSTRAINT [PK_TBL_YOLCU] PRIMARY KEY CLUSTERED 
(
	[Yolcu_Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[TBL_SEFERLER] ON 

INSERT [dbo].[TBL_SEFERLER] ([Sefer_Id], [Kalkış_Yer], [Varış_Yer], [Kalkış_Tarih], [Varış_Tarih], [Ucak_Id], [Ücret], [Sefer_Ad]) VALUES (1, N'Adana', N' Ankara', CAST(N'2023-05-26' AS Date), CAST(N'2023-05-26' AS Date), 1, N'350 TL', N'Adana-Ankara')
INSERT [dbo].[TBL_SEFERLER] ([Sefer_Id], [Kalkış_Yer], [Varış_Yer], [Kalkış_Tarih], [Varış_Tarih], [Ucak_Id], [Ücret], [Sefer_Ad]) VALUES (2, N' Ankara', N' Çanakkale', CAST(N'2023-06-20' AS Date), CAST(N'2023-06-21' AS Date), 2, N'450 TL', N'Ankara-Çanakkale')
INSERT [dbo].[TBL_SEFERLER] ([Sefer_Id], [Kalkış_Yer], [Varış_Yer], [Kalkış_Tarih], [Varış_Tarih], [Ucak_Id], [Ücret], [Sefer_Ad]) VALUES (3, N' İzmir', N' İstanbul', CAST(N'2023-06-29' AS Date), CAST(N'2023-06-30' AS Date), 3, N'660 TL', N'İzmir-İstanbul')
INSERT [dbo].[TBL_SEFERLER] ([Sefer_Id], [Kalkış_Yer], [Varış_Yer], [Kalkış_Tarih], [Varış_Tarih], [Ucak_Id], [Ücret], [Sefer_Ad]) VALUES (4, N' İstanbul', N' İzmir', CAST(N'2023-06-25' AS Date), CAST(N'2023-06-26' AS Date), 4, N'660 TL', N'İstanbul-İzmir')
INSERT [dbo].[TBL_SEFERLER] ([Sefer_Id], [Kalkış_Yer], [Varış_Yer], [Kalkış_Tarih], [Varış_Tarih], [Ucak_Id], [Ücret], [Sefer_Ad]) VALUES (5, N' Kahramanmaraş', N' Kocaeli', CAST(N'2023-06-28' AS Date), CAST(N'2023-06-28' AS Date), 5, N'1200 TL', N'Kahramanmaraş-Kocaeli')
INSERT [dbo].[TBL_SEFERLER] ([Sefer_Id], [Kalkış_Yer], [Varış_Yer], [Kalkış_Tarih], [Varış_Tarih], [Ucak_Id], [Ücret], [Sefer_Ad]) VALUES (6, N' Sakarya', N' Rize', CAST(N'2023-08-16' AS Date), CAST(N'2023-08-16' AS Date), 6, N'440 TL', N'Sakarya-Rize')
SET IDENTITY_INSERT [dbo].[TBL_SEFERLER] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_UCAK] ON 

INSERT [dbo].[TBL_UCAK] ([Ucak_Id], [Ucak_Ad], [Koltuk_Sayısı]) VALUES (1, N'Airbus A380', 30)
INSERT [dbo].[TBL_UCAK] ([Ucak_Id], [Ucak_Ad], [Koltuk_Sayısı]) VALUES (2, N'Boeing 40A', 15)
INSERT [dbo].[TBL_UCAK] ([Ucak_Id], [Ucak_Ad], [Koltuk_Sayısı]) VALUES (3, N'Boeing 747', 50)
INSERT [dbo].[TBL_UCAK] ([Ucak_Id], [Ucak_Ad], [Koltuk_Sayısı]) VALUES (4, N'Boeing 757', 45)
INSERT [dbo].[TBL_UCAK] ([Ucak_Id], [Ucak_Ad], [Koltuk_Sayısı]) VALUES (5, N'Boeing 80', 20)
INSERT [dbo].[TBL_UCAK] ([Ucak_Id], [Ucak_Ad], [Koltuk_Sayısı]) VALUES (6, N'Fokker 123', 11)
SET IDENTITY_INSERT [dbo].[TBL_UCAK] OFF
GO
SET IDENTITY_INSERT [dbo].[TBL_YOLCU] ON 

INSERT [dbo].[TBL_YOLCU] ([Yolcu_Id], [İsim], [Yas], [Cinsiyet], [Yaşlı_Mı], [Engelli_Mi], [Koltuk_No]) VALUES (1, N'Sadettin Dursun', N'21', N'Erkek', N'Hayır', N'Hayır', N'A1')
SET IDENTITY_INSERT [dbo].[TBL_YOLCU] OFF
GO
ALTER TABLE [dbo].[TBL_BİLET]  WITH CHECK ADD  CONSTRAINT [FK_TBL_BİLET_TBL_SEFERLER] FOREIGN KEY([Sefer_Id])
REFERENCES [dbo].[TBL_SEFERLER] ([Sefer_Id])
GO
ALTER TABLE [dbo].[TBL_BİLET] CHECK CONSTRAINT [FK_TBL_BİLET_TBL_SEFERLER]
GO
ALTER TABLE [dbo].[TBL_BİLET]  WITH CHECK ADD  CONSTRAINT [FK_TBL_BİLET_TBL_YOLCU] FOREIGN KEY([Yolcu_Id])
REFERENCES [dbo].[TBL_YOLCU] ([Yolcu_Id])
GO
ALTER TABLE [dbo].[TBL_BİLET] CHECK CONSTRAINT [FK_TBL_BİLET_TBL_YOLCU]
GO
ALTER TABLE [dbo].[TBL_SEFERLER]  WITH CHECK ADD  CONSTRAINT [FK_TBL_SEFERLER_TBL_UCAK] FOREIGN KEY([Ucak_Id])
REFERENCES [dbo].[TBL_UCAK] ([Ucak_Id])
GO
ALTER TABLE [dbo].[TBL_SEFERLER] CHECK CONSTRAINT [FK_TBL_SEFERLER_TBL_UCAK]
GO
USE [master]
GO
ALTER DATABASE [Ucak] SET  READ_WRITE 
GO
