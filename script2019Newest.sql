USE [master]
GO
/****** Object:  Database [PrintManagement]    Script Date: 5/29/2022 11:36:13 AM ******/
CREATE DATABASE [PrintManagement]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PrintManagement', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PrintManagement.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PrintManagement_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\PrintManagement_log.ldf' , SIZE = 1088KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [PrintManagement] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PrintManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PrintManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PrintManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PrintManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PrintManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PrintManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [PrintManagement] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PrintManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PrintManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PrintManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PrintManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PrintManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PrintManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PrintManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PrintManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PrintManagement] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PrintManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PrintManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PrintManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PrintManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PrintManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PrintManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PrintManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PrintManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PrintManagement] SET  MULTI_USER 
GO
ALTER DATABASE [PrintManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PrintManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PrintManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PrintManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [PrintManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [PrintManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [PrintManagement] SET QUERY_STORE = OFF
GO
USE [PrintManagement]
GO
/****** Object:  Table [dbo].[BackupConfig]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BackupConfig](
	[Oid] [uniqueidentifier] NOT NULL,
	[BackupLocation] [nvarchar](255) NULL,
	[BackupSchedule] [int] NULL,
	[DeleteLogSchedule] [int] NULL,
 CONSTRAINT [PK_BackupConfig] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Oid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Note] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Document]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Document](
	[Oid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[TotalPages] [int] NULL,
	[SizeKb] [bigint] NULL,
	[PaperHeightMilimet] [int] NULL,
	[PaperWidthMilimet] [int] NULL,
	[MimeType] [varchar](50) NULL,
	[IsUsageAllowed] [bit] NULL,
	[Note] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[IdUser] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Document] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailConfig]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailConfig](
	[Oid] [uniqueidentifier] NOT NULL,
	[Host] [varchar](50) NULL,
	[Port] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[SenderName] [nvarchar](255) NULL,
 CONSTRAINT [PK_EmailConfig] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FinancialConfig]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FinancialConfig](
	[Oid] [uniqueidentifier] NOT NULL,
	[CurrencyCode] [nvarchar](255) NULL,
	[DefaultPrintCost] [int] NULL,
 CONSTRAINT [PK_FinancialConfig] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Printer]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Printer](
	[Oid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[DriverName] [nvarchar](255) NULL,
	[ServerName] [nvarchar](255) NULL,
	[PortName] [nvarchar](255) NULL,
	[IsNetwork] [bit] NULL,
	[Location] [nvarchar](255) NULL,
	[IsDefaultPrinter] [bit] NULL,
	[DefaultCost] [float] NULL,
	[TotalJobs] [int] NULL,
	[TotalPages] [int] NULL,
	[ResetBy] [nvarchar](255) NULL,
	[ResetDate] [datetime] NULL,
	[LastUsageDate] [datetime] NULL,
	[Note] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[IdDepartment] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Printer] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrinterUsageLog]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrinterUsageLog](
	[Oid] [uniqueidentifier] NOT NULL,
	[UsageDate] [datetime] NULL,
	[UsageBy] [nvarchar](255) NULL,
	[UsageCost] [float] NULL,
	[MachineName] [nvarchar](255) NULL,
	[JobId] [int] NULL,
	[JobSize] [int] NULL,
	[JobStatus] [nvarchar](255) NULL,
	[TotalPages] [int] NULL,
	[Copies] [int] NULL,
	[DriverName] [nvarchar](255) NULL,
	[PrinterName] [nvarchar](255) NULL,
	[PrintProcessorName] [nvarchar](255) NULL,
	[UserName] [nvarchar](255) NULL,
	[IsColor] [bit] NULL,
	[DocumentName] [nvarchar](255) NULL,
	[PagesPrinted] [int] NULL,
	[PaperKind] [varchar](255) NULL,
	[PaperLength] [int] NULL,
	[PaperWidth] [int] NULL,
	[IsLandscape] [bit] NULL,
	[IsDuplex] [bit] NULL,
	[IsPrinted] [bit] NULL,
	[IsCancelled] [bit] NULL,
	[Signature] [varchar](255) NULL,
	[IdPrinter] [uniqueidentifier] NULL,
	[IdDocument] [uniqueidentifier] NULL,
	[IdUser] [uniqueidentifier] NULL,
 CONSTRAINT [PK_PrinterUsageLog] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Oid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Note] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemInfo]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemInfo](
	[Oid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Version] [nvarchar](50) NULL,
	[Author] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[Phone] [varchar](20) NULL,
	[Email] [varchar](50) NULL,
	[TotalUser] [int] NULL,
	[TotalMoneyProvided] [nchar](10) NULL,
	[TotalPrinter] [nchar](10) NULL,
	[TotalFilePrinted] [bigint] NULL,
	[TotalFileUploaded] [int] NULL,
	[TotalFileDownload] [int] NULL,
 CONSTRAINT [PK_SystemInfo] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Oid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Phone] [varchar](11) NULL,
	[Email] [varchar](255) NULL,
	[UserName] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[IsAdmin] [bit] NULL,
	[IsDisable] [bit] NULL,
	[IsRestricted] [bit] NULL,
	[Balance] [float] NULL,
	[RemainPages] [int] NULL,
	[TotalJobs] [int] NULL,
	[TotalPages] [int] NULL,
	[ResetBy] [nvarchar](255) NULL,
	[ResetDate] [datetime] NULL,
	[Note] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
	[IdUserGroup] [uniqueidentifier] NULL,
	[IdDepartment] [uniqueidentifier] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserConfig]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserConfig](
	[Oid] [uniqueidentifier] NOT NULL,
	[DefaultBalance] [int] NULL,
	[DefaultRemainPages] [int] NULL,
 CONSTRAINT [PK_UserConfig] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserGroup](
	[Oid] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Note] [nvarchar](255) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](255) NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_UserGroup] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Oid] [uniqueidentifier] NOT NULL,
	[IdUser] [uniqueidentifier] NULL,
	[IdRole] [uniqueidentifier] NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WatermarkConfig]    Script Date: 5/29/2022 11:36:14 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WatermarkConfig](
	[Oid] [uniqueidentifier] NOT NULL,
	[FileImage] [nvarchar](max) NULL,
	[Text] [nvarchar](max) NULL,
	[FontFamily] [nvarchar](255) NULL,
	[FontSize] [int] NULL,
	[X] [float] NULL,
	[Y] [float] NULL,
	[VerticalAlignment] [int] NULL,
	[HorizontalAlignment] [int] NULL,
	[Height] [float] NULL,
	[Width] [float] NULL,
	[RotateAngle] [float] NULL,
	[IsBackground] [bit] NULL,
	[Opacity] [float] NULL,
	[Classify] [int] NULL,
	[Name] [nvarchar](255) NULL,
 CONSTRAINT [PK_WatermarkConfig] PRIMARY KEY CLUSTERED 
(
	[Oid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[BackupConfig] ([Oid], [BackupLocation], [BackupSchedule], [DeleteLogSchedule]) VALUES (N'ff883845-e15b-4c33-ae9c-a7d02e060981', N'H:\DEV\Web\Project Web\DATN Print Management\Git\PrintManagement\PrintManagement.AdminApp\PrintManagement.AdminApp\wwwroot\ContentRepository\Backups', 7, 365)
GO
INSERT [dbo].[Department] ([Oid], [Name], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'0a13a877-72c2-41a2-84c7-2560fbd030ed', N'Đào tạo', N'', N'admin', CAST(N'2022-04-19T11:55:41.690' AS DateTime), N'admin', CAST(N'2022-04-19T11:55:41.690' AS DateTime))
INSERT [dbo].[Department] ([Oid], [Name], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'3eed5fb2-fd3f-41f0-a8c5-2839a8e82a73', N'Giám đốc', N'', N'admin', CAST(N'2022-04-19T11:55:58.120' AS DateTime), N'admin', CAST(N'2022-04-19T11:55:58.120' AS DateTime))
INSERT [dbo].[Department] ([Oid], [Name], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'7a395b51-4b9c-424b-8c12-2b669c4d09b0', N'Kế toán', N'', N'admin', CAST(N'2022-04-19T11:55:50.263' AS DateTime), N'admin', CAST(N'2022-04-19T11:55:50.263' AS DateTime))
INSERT [dbo].[Department] ([Oid], [Name], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'a762f8e0-1ff3-412b-beb9-569c065c62fc', N'Triển khai', N'', N'admin', CAST(N'2022-04-16T22:55:15.283' AS DateTime), N'admin', CAST(N'2022-04-16T22:55:15.283' AS DateTime))
INSERT [dbo].[Department] ([Oid], [Name], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'04945341-6db8-496e-8978-8fd2e82fdd85', N'Nghiên cứu', N'', N'admin', CAST(N'2022-04-19T11:55:32.627' AS DateTime), N'admin', CAST(N'2022-04-19T11:55:32.627' AS DateTime))
INSERT [dbo].[Department] ([Oid], [Name], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'56ff8626-152c-4ae0-9356-95352df97fcc', N'Công nghệ', N'', N'admin', CAST(N'2022-04-16T22:54:36.460' AS DateTime), N'admin', CAST(N'2022-04-16T22:54:36.460' AS DateTime))
INSERT [dbo].[Department] ([Oid], [Name], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'09e57a44-cc45-47d7-891c-dd4266bc75e5', N'Hành chính', N'', N'admin', CAST(N'2022-04-19T11:55:22.460' AS DateTime), N'admin', CAST(N'2022-04-19T11:55:22.460' AS DateTime))
GO
INSERT [dbo].[Document] ([Oid], [Name], [TotalPages], [SizeKb], [PaperHeightMilimet], [PaperWidthMilimet], [MimeType], [IsUsageAllowed], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUser]) VALUES (N'4d2a9116-08e0-42e9-b7b6-9b40df81c8db', N'Reading part 6.pdf', NULL, 1339, NULL, NULL, N'.pdf', 1, N'reading part 6', N'Administrator', CAST(N'2022-05-15T23:42:05.867' AS DateTime), N'Administrator', CAST(N'2022-05-15T23:42:05.867' AS DateTime), N'add1eab5-bb85-4b34-8856-f665ae3ed156')
INSERT [dbo].[Document] ([Oid], [Name], [TotalPages], [SizeKb], [PaperHeightMilimet], [PaperWidthMilimet], [MimeType], [IsUsageAllowed], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUser]) VALUES (N'663bbf3d-1ef9-4d63-a9e7-d703c1acb14b', N'Go, play, do.docx', NULL, 13, NULL, NULL, N'.docx', 1, N'english grammar', N'Administrator', CAST(N'2022-05-15T23:42:44.587' AS DateTime), N'Administrator', CAST(N'2022-05-15T23:42:44.587' AS DateTime), N'add1eab5-bb85-4b34-8856-f665ae3ed156')
GO
INSERT [dbo].[EmailConfig] ([Oid], [Host], [Port], [UserName], [Password], [SenderName]) VALUES (N'3e7d9c1f-2264-4426-92f8-1886352fa746', N'smtp.gmail.com', N'465', N'nguyenduchung99hd@gmai.com', N'ndbhojpomorpbfev', N'nguyenduchung99hd@gmai.com')
GO
INSERT [dbo].[FinancialConfig] ([Oid], [CurrencyCode], [DefaultPrintCost]) VALUES (N'9f33005f-1d9c-44c9-9999-c296b86d65b3', N'VNĐ', 500)
GO
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'3faae941-de61-412a-9c5f-092ca9ed230a', N'OneNote for Windows 10', N'Microsoft Software Printer Driver', N'', N'Microsoft.Office.OneNote_16001.14326.20838.0_x64__8wekyb3d8bbwe_microsoft.onenoteim_S-1-5-21-454708338-3421623350-2337495587-1374', 0, N'', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.817' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.847' AS DateTime), NULL)
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'62ce9fa7-5b51-4d31-93ca-0d24154ab5fe', N'Aficio MP 9002 (RICOH)', N'Microsoft enhanced Point and Print driver', N'\\DC01', N'192.168.1.4_1', 1, N'', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.947' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.963' AS DateTime), NULL)
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'14f3563c-a400-4c76-95fd-1fa19e75edf4', N'Canon LBP251 PCL6 - KHDT2', N'Canon LBP251 PCL6', N'\\DC01', N'192.168.1.206', 1, N'Phong Dao tao', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.947' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.963' AS DateTime), N'0a13a877-72c2-41a2-84c7-2560fbd030ed')
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'402c3db8-21c0-4f7b-bce8-20694c3b6e88', N'Canon LBP151 PCL6', N'Canon LBP151 PCL6', N'\\DC01', N'192.168.1.210', 1, N'Phong Hanh chinh', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.947' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.963' AS DateTime), N'09e57a44-cc45-47d7-891c-dd4266bc75e5')
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'790737d3-9ce0-481a-8418-2eb89ca1e503', N'Microsoft XPS Document Writer', N'Microsoft XPS Document Writer v4', N'', N'PORTPROMPT:', 0, N'', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.817' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.847' AS DateTime), NULL)
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'ee412237-a240-46e5-ad79-4a62cf856922', N'LBP622C/623C', N'Microsoft IPP Class Driver', N'', N'WSD-ca30c952-6207-42f8-915b-a166341c5fa3', 0, N'http://192.168.1.215:80/wsd/mex', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.820' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.847' AS DateTime), NULL)
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'e05105ab-62b9-4f36-b238-6dbc90e4873a', N'LBP151', N'Microsoft IPP Class Driver', N'', N'WSD-1d661f1d-d258-42c8-893f-850be4be2f15', 0, N'http://192.168.1.210:80/wsd/mex', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.820' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.847' AS DateTime), NULL)
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'9f831908-9390-4765-89bf-71836bbcec4a', N'New RICOH', N'RICOH Aficio MP 7001 PCL 5e', N'\\DC01', N'192.168.1.6', 1, N'', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.947' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.963' AS DateTime), NULL)
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'ef01e1a6-0015-4531-8d50-9877f4290457', N'Send To OneNote 2013', N'Send to Microsoft OneNote 15 Driver', N'', N'nul:', 0, N'', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.817' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.847' AS DateTime), NULL)
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'56d6a840-31e5-443f-9c0f-a92e31e09270', N'Canon LBP251 PCL6 - KHDT', N'Canon LBP251 PCL6', N'\\DC01', N'192.168.1.7', 1, N'Phong Dao tao', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.820' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.847' AS DateTime), N'0a13a877-72c2-41a2-84c7-2560fbd030ed')
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'3eeed0b0-8d60-411e-9e39-af7f6012adc7', N'Canon LBP623 Color - KD', N'Microsoft enhanced Point and Print driver', N'\\DC01', N'192.168.1.215', 1, N'', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.820' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.847' AS DateTime), NULL)
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', N'Microsoft Print to PDF', N'Microsoft Print To PDF', N'', N'PORTPROMPT:', 0, N'', 1, 500, 41, 129, NULL, NULL, CAST(N'2022-05-19T08:48:37.700' AS DateTime), N'', N'Administrator', CAST(N'2022-05-05T14:31:58.817' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.847' AS DateTime), NULL)
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'7ad35bef-f49b-4be1-90d0-e183133bcab3', N'Canon LBP252 PCL6 - TK', N'Canon LBP252 PCL6', N'\\DC01', N'192.168.1.5', 1, N'Phong Trien khai', 0, 500, 1, 3, NULL, NULL, CAST(N'2022-05-06T16:55:10.393' AS DateTime), N'', N'Administrator', CAST(N'2022-05-05T14:31:58.820' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.847' AS DateTime), N'a762f8e0-1ff3-412b-beb9-569c065c62fc')
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'47adf9b2-f877-437b-86a1-f7bc9d1ae5e8', N'Canon LBP251 PCL6 - HC2', N'Canon LBP251 PCL6', N'\\DC01', N'192.168.1.207', 1, N'Phong Ke toan', 0, 500, 0, 0, NULL, NULL, CAST(N'2022-05-06T14:14:12.793' AS DateTime), N'', N'Administrator', CAST(N'2022-05-05T14:31:58.947' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.963' AS DateTime), N'7a395b51-4b9c-424b-8c12-2b669c4d09b0')
INSERT [dbo].[Printer] ([Oid], [Name], [DriverName], [ServerName], [PortName], [IsNetwork], [Location], [IsDefaultPrinter], [DefaultCost], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [LastUsageDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdDepartment]) VALUES (N'3f64c1c4-4114-4041-a8c5-ff74c0d30d4b', N'Fax', N'Microsoft Shared Fax Driver', N'', N'SHRFAX:', 0, N'', 0, 500, 0, 0, NULL, NULL, NULL, N'', N'Administrator', CAST(N'2022-05-05T14:31:58.820' AS DateTime), N'Administrator', CAST(N'2022-05-05T14:32:02.847' AS DateTime), NULL)
GO
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'331121bf-5ec2-48c9-aa20-00a7234de6fd', CAST(N'2022-05-06T17:36:58.157' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 29845, 0, N'Deleted', 0, 1, N'Canon LBP252 PCL6', N'\\DC01\Canon LBP252 PCL6 - TK', N'winprint', N'TruongPV', 0, N'Local Downlevel Document', 0, N'A4', 2970, 2100, 0, 1, 0, 1, NULL, N'7ad35bef-f49b-4be1-90d0-e183133bcab3', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'e9a83ab8-fed3-ec11-ba81-509a4cc9a519', CAST(N'2022-05-15T10:25:48.243' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 2, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'Microsoft Word - EnglishB11.docx', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'8a01f5b7-2dd5-ec11-ba81-509a4cc9a519', CAST(N'2022-05-16T22:34:46.697' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 3, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TrackingPrinter.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'567215bf-02d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-17T23:59:40.263' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 4, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TrackingPrinter.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'70389bca-03d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T00:07:10.350' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 5, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TrackingPrinter.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'0e74b100-06d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T00:23:00.063' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 6, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DemoPrinting.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'8b43515d-07d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T00:32:45.047' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 7, 41072, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'ToeicPart1.txt - Notepad', 0, N'A4', 2970, 2100, 0, 0, 1, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'e8ab958b-07d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T00:34:00.823' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 8, 0, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'ToeicPart1.txt - Notepad', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'e0bbb0aa-07d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T00:34:00.823' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 8, 0, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'ToeicPart1.txt - Notepad', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'870814ef-07d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T00:36:50.783' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 9, 0, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'ToeicPart1.txt - Notepad', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'429aaf89-0bd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T01:02:32.880' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 10, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'ok.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'a867169b-0bd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T01:03:08.520' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 11, 0, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'ok.pdf', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'bd1692a4-0bd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T01:03:24.387' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 12, 0, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'ok.pdf', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'924dce1b-4cd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T08:44:46.613' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 13, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DashBoard.txt - Notepad', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'b7cc7d79-4fd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T09:08:54.297' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 14, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TiengAnhB11.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'49a74a99-50d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T09:16:48.610' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 16, 4596, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TiengAnhB11.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'14c29366-54d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T09:44:11.197' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 29, 4595, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TiengAnhB11.pdf', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'9f6c8281-55d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T09:52:04.050' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 30, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TiengAnhB11.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'697072cd-55d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T09:54:14.497' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 31, 245449, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TiengAnhB11.pdf', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'f40198de-55d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T09:54:43.790' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 32, 0, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TiengAnhB11.pdf', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'714d6592-57d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:06:53.317' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 33, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TiengAnhB11.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'3888c4b7-57d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:07:56.790' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 34, 4594, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TiengAnhB11.pdf', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'395c4ed7-57d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:08:50.620' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 35, 4594, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TiengAnhB11.pdf', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'a9e52fde-57d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:09:01.933' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 36, 4598, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'TiengAnhB11.pdf', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'2f3d8626-5bd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:31:52.380' AS DateTime), N'Nguyễn Đức Hưng', 1500, N'DESKTOP-3T65FIR', 39, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentDemoTrackingPrint.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'uEDP/Z7dNwEygQ/FNUK0uDsjcr2Cu7DGcBiEyCMLqHI=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'9ea736f5-9ba6-4f4a-998d-4f4f92506347')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'303d8626-5bd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:31:52.380' AS DateTime), N'Nguyễn Đức Hưng', 1500, N'DESKTOP-3T65FIR', 39, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentDemoTrackingPrint.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'uEDP/Z7dNwEygQ/FNUK0uDsjcr2Cu7DGcBiEyCMLqHI=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'9ea736f5-9ba6-4f4a-998d-4f4f92506347')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'313d8626-5bd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:31:52.380' AS DateTime), N'Nguyễn Đức Hưng', 1500, N'DESKTOP-3T65FIR', 39, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentDemoTrackingPrint.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'uEDP/Z7dNwEygQ/FNUK0uDsjcr2Cu7DGcBiEyCMLqHI=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'9ea736f5-9ba6-4f4a-998d-4f4f92506347')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'3844c438-5bd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:32:47.420' AS DateTime), N'Nguyễn Đức Hưng', 1500, N'DESKTOP-3T65FIR', 40, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentEnglish.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'uEDP/Z7dNwEygQ/FNUK0uDsjcr2Cu7DGcBiEyCMLqHI=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'9ea736f5-9ba6-4f4a-998d-4f4f92506347')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'3944c438-5bd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:32:47.420' AS DateTime), N'Nguyễn Đức Hưng', 1500, N'DESKTOP-3T65FIR', 40, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentEnglish.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'uEDP/Z7dNwEygQ/FNUK0uDsjcr2Cu7DGcBiEyCMLqHI=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'9ea736f5-9ba6-4f4a-998d-4f4f92506347')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'3a44c438-5bd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:32:47.420' AS DateTime), N'Nguyễn Đức Hưng', 1500, N'DESKTOP-3T65FIR', 40, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentEnglish.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'uEDP/Z7dNwEygQ/FNUK0uDsjcr2Cu7DGcBiEyCMLqHI=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'9ea736f5-9ba6-4f4a-998d-4f4f92506347')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'eb739811-5dd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:45:47.297' AS DateTime), N'Nguyễn Đức Hưng', 1500, N'DESKTOP-3T65FIR', 42, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentEnglish.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'xg8jK1pl3c5PwgwI6HqVxuX42d/65sUE8Rrzf2LHPm0=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'9ea736f5-9ba6-4f4a-998d-4f4f92506347')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'9faa892a-5dd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:46:54.750' AS DateTime), N'Nguyễn Đức Hưng', 1500, N'DESKTOP-3T65FIR', 43, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentEnglish.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'5Yy9jx2gTMw0R20ynlSiXh9yvrrLonvgXRj2JMVYFsY=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'9ea736f5-9ba6-4f4a-998d-4f4f92506347')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'9aa89438-5dd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T10:47:20.260' AS DateTime), N'Nguyễn Đức Hưng', 1500, N'DESKTOP-3T65FIR', 44, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentEnglish.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'57ZTNHTRXaO178AKJrQ5jFALXET6VKC4+5HjIWwZqnM=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'9ea736f5-9ba6-4f4a-998d-4f4f92506347')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'f6e9c835-5fd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T11:01:33.500' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 45, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentEnglish.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'ihaxQ4k3Uql85M9azTPkd/CO37w3CtjUozfTLXrNzYQ=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'6b599dc2-5fd6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T11:05:32.073' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 46, 4597, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentEnglish.pdf', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'd78a8d01-c8d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T23:31:43.173' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 47, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentDemoTrackingPrint.pdf', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'nUE9qAhO6g4//dsv58vGrk1trpGAWvpGuV96PTr5n2U=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'8c67bd3f-c8d6-ec11-ba81-509a4cc9a519', CAST(N'2022-05-18T23:33:29.453' AS DateTime), N'Phùng Văn Trường', 0, N'DESKTOP-3T65FIR', 48, 10193, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'DocumentDemoTrackingPrint.pdf', 0, N'A4', 2970, 2100, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'03abfacc-15d7-ec11-ba81-509a4cc9a519', CAST(N'2022-05-19T08:48:35.237' AS DateTime), N'Phùng Văn Trường', 1500, N'DESKTOP-3T65FIR', 49, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'phung', 1, N'Microsoft Word - TaiLieuDemoPrint.docx', 3, N'A4', 2970, 2100, 0, 0, 1, 0, N'jog48cw4l0gD32+beKxhTHZkjManqm+R5DhlQNeknqE=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'c8c2709d-22cd-ec11-981f-e884a5d19d8a', CAST(N'2022-05-06T16:54:36.973' AS DateTime), N'Phùng Văn Trường', 1500, N'VCS58', 38, 287101, N'Printed', 3, 1, N'Canon LBP252 PCL6', N'Canon LBP252 PCL6 - TK', N'winprint', N'TruongPV', 0, N'Microsoft Word - ListRoleUser.docx', 3, N'A4', 2970, 2100, 0, 1, 1, 0, NULL, N'7ad35bef-f49b-4be1-90d0-e183133bcab3', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'893297ca-24cd-ec11-981f-e884a5d19d8a', CAST(N'2022-05-06T17:10:42.490' AS DateTime), N'Phùng Văn Trường', 3000, N'VCS58', 103, 0, N'Printed', 6, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'Microsoft Word - ListRoleUser.docx', 6, N'Letter', 2794, 2159, 0, 0, 1, 0, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'9a2b28e0-24cd-ec11-981f-e884a5d19d8a', CAST(N'2022-05-06T17:11:20.157' AS DateTime), N'Phùng Văn Trường', 2500, N'VCS58', 104, 0, N'Printed', 5, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'Microsoft Word - ListRoleUser.docx', 5, N'Letter', 2794, 2159, 0, 0, 1, 0, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'6f8fb7e8-24cd-ec11-981f-e884a5d19d8a', CAST(N'2022-05-06T17:11:34.840' AS DateTime), N'Phùng Văn Trường', 2000, N'VCS58', 105, 0, N'Printed', 4, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'Microsoft Word - ListRoleUser.docx', 4, N'Letter', 2794, 2159, 0, 0, 1, 0, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'c68971ef-24cd-ec11-981f-e884a5d19d8a', CAST(N'2022-05-06T17:11:46.210' AS DateTime), N'Phùng Văn Trường', 1500, N'VCS58', 106, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'Microsoft Word - ListRoleUser.docx', 3, N'Letter', 2794, 2159, 0, 0, 1, 0, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'6d4687f5-24cd-ec11-981f-e884a5d19d8a', CAST(N'2022-05-06T17:11:56.553' AS DateTime), N'Phùng Văn Trường', 1000, N'VCS58', 107, 0, N'Printed', 2, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'Microsoft Word - ListRoleUser.docx', 2, N'Letter', 2794, 2159, 0, 0, 1, 0, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'535f85cb-29cd-ec11-981f-e884a5d19d8a', CAST(N'2022-05-06T17:46:27.387' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 29840, 0, N'Deleted', 0, 1, N'Canon LBP252 PCL6', N'\\DC01\Canon LBP252 PCL6 - TK', N'winprint', N'TruongPV', 0, N'Microsoft Word - ListRoleUser.docx', 0, N'A4', 2970, 2100, 0, 1, 0, 1, NULL, N'7ad35bef-f49b-4be1-90d0-e183133bcab3', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'16c31799-2acd-ec11-981f-e884a5d19d8a', CAST(N'2022-05-06T17:52:18.610' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 29838, 0, N'Deleted', 0, 1, N'Canon LBP252 PCL6', N'\\DC01\Canon LBP252 PCL6 - TK', N'winprint', N'TruongPV', 0, N'Microsoft Word - ListRoleUser.docx', 0, N'A4', 2970, 2100, 0, 1, 0, 1, NULL, N'7ad35bef-f49b-4be1-90d0-e183133bcab3', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'17c31799-2acd-ec11-981f-e884a5d19d8a', CAST(N'2022-05-06T17:52:19.450' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 29837, 0, N'Deleted', 0, 1, N'Canon LBP252 PCL6', N'\\DC01\Canon LBP252 PCL6 - TK', N'winprint', N'TruongPV', 0, N'Local Downlevel Document', 0, N'A4', 2970, 2100, 0, 1, 0, 1, NULL, N'7ad35bef-f49b-4be1-90d0-e183133bcab3', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'e22a5b27-63d2-ec11-981f-e884a5d19d8a', CAST(N'2022-05-13T09:19:45.237' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 209, 0, N'Deleted', 0, 1, N'Canon LBP252 PCL6', N'Canon LBP252 PCL6 - TK', N'winprint', N'TruongPV', 0, N'Microsoft Word - NguyenDucHung_17150124.docx', 0, N'A4', 2970, 2100, 0, 1, 0, 1, NULL, N'7ad35bef-f49b-4be1-90d0-e183133bcab3', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'789b4236-65d2-ec11-981f-e884a5d19d8a', CAST(N'2022-05-13T09:34:29.260' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 211, 0, N'Deleted', 0, 1, N'Canon LBP252 PCL6', N'Canon LBP252 PCL6 - TK', N'winprint', N'TruongPV', 0, N'Microsoft Word - NguyenDucHung_17150124.docx', 0, N'A4', 2970, 2100, 0, 1, 0, 1, NULL, N'7ad35bef-f49b-4be1-90d0-e183133bcab3', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'cd888882-65d2-ec11-981f-e884a5d19d8a', CAST(N'2022-05-13T09:36:37.467' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 213, 262144, N'Deleted', 0, 1, N'Canon LBP252 PCL6', N'Canon LBP252 PCL6 - TK', N'winprint', N'TruongPV', 0, N'Microsoft Word - NguyenDucHung_17150124.docx', 0, N'A4', 2970, 2100, 0, 1, 0, 1, NULL, N'7ad35bef-f49b-4be1-90d0-e183133bcab3', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'5321a3a3-65d2-ec11-981f-e884a5d19d8a', CAST(N'2022-05-13T09:37:32.097' AS DateTime), N'Phùng Văn Trường', 1500, N'VCS58', 108, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'Microsoft Word - NguyenDucHung_17150124.docx', 3, N'Letter', 2794, 2159, 0, 0, 1, 0, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'792bd958-69d2-ec11-981f-e884a5d19d8a', CAST(N'2022-05-13T10:04:05.190' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 109, 0, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'PdfPrinterTracking.pdf', 0, N'Letter', 2794, 2159, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'51d3b27e-69d2-ec11-981f-e884a5d19d8a', CAST(N'2022-05-13T10:05:08.977' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 110, 0, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'PdfPrinterTracking.pdf', 0, N'Letter', 2794, 2159, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'd0f708b0-6bd2-ec11-981f-e884a5d19d8a', CAST(N'2022-05-13T10:20:50.777' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 216, 521243, N'Deleted', 0, 1, N'Canon LBP252 PCL6', N'Canon LBP252 PCL6 - TK', N'winprint', N'TruongPV', 0, N'PdfPrinterTracking.pdf', 0, N'A4', 2970, 2100, 0, 1, 1, 1, NULL, N'7ad35bef-f49b-4be1-90d0-e183133bcab3', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'a5e53e81-6fd2-ec11-981f-e884a5d19d8a', CAST(N'2022-05-13T10:48:09.850' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 225, 262144, N'Deleted', 0, 1, N'Canon LBP252 PCL6', N'Canon LBP252 PCL6 - TK', N'winprint', N'TruongPV', 0, N'PdfPrinterTracking.pdf', 0, N'A4', 2970, 2100, 0, 1, 0, 1, NULL, N'7ad35bef-f49b-4be1-90d0-e183133bcab3', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'fcde0f51-74d2-ec11-981f-e884a5d19d8a', CAST(N'2022-05-13T11:22:36.277' AS DateTime), N'Phùng Văn Trường', 0, N'VCS58', 116, 0, N'Deleted', 0, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'PdfPrinterTracking.pdf', 0, N'Letter', 2794, 2159, 0, 0, 0, 1, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'daf1c86e-64d3-ec11-981f-e884a5d19d8a', CAST(N'2022-05-14T16:00:20.627' AS DateTime), N'Phùng Văn Trường', 1500, N'VCS58', 117, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'PdfPrinterTracking.pdf', 3, N'Letter', 2794, 2159, 0, 0, 1, 0, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'dbf1c86e-64d3-ec11-981f-e884a5d19d8a', CAST(N'2022-05-14T16:00:20.627' AS DateTime), N'Phùng Văn Trường', 1500, N'VCS58', 117, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'PdfPrinterTracking.pdf', 3, N'Letter', 2794, 2159, 0, 0, 1, 0, NULL, N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
INSERT [dbo].[PrinterUsageLog] ([Oid], [UsageDate], [UsageBy], [UsageCost], [MachineName], [JobId], [JobSize], [JobStatus], [TotalPages], [Copies], [DriverName], [PrinterName], [PrintProcessorName], [UserName], [IsColor], [DocumentName], [PagesPrinted], [PaperKind], [PaperLength], [PaperWidth], [IsLandscape], [IsDuplex], [IsPrinted], [IsCancelled], [Signature], [IdPrinter], [IdDocument], [IdUser]) VALUES (N'fdf5489b-71d3-ec11-981f-e884a5d19d8a', CAST(N'2022-05-14T17:35:10.927' AS DateTime), N'Phùng Văn Trường', 1500, N'VCS58', 118, 0, N'Printed', 3, 1, N'Microsoft Print To PDF', N'Microsoft Print to PDF', N'MS_XPS_PROC', N'TruongPV', 1, N'PdfPrinterTracking.pdf', 3, N'Letter', 2794, 2159, 0, 0, 1, 0, N'EX9bYlFeJ6he1wNVrB4lPJk4wawtG27UOixaTsLQ5iU=', N'79513b0e-fb74-4f8b-a0ca-d70bfff7e706', NULL, N'ad5c8f5b-23de-4593-a122-c5c889c66fdb')
GO
INSERT [dbo].[Role] ([Oid], [Name], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'Employee', N'Quyền người dùng thành viên', N'admin', CAST(N'2022-04-16T22:53:36.443' AS DateTime), N'admin', CAST(N'2022-04-16T22:53:36.443' AS DateTime))
INSERT [dbo].[Role] ([Oid], [Name], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'def25f45-b2a0-426b-a631-f19cc73f4603', N'Admin', N'Quyền quản trị viên', N'admin', CAST(N'2022-04-16T22:49:00.520' AS DateTime), N'admin', CAST(N'2022-04-16T22:49:00.520' AS DateTime))
GO
INSERT [dbo].[SystemInfo] ([Oid], [Name], [Version], [Author], [Status], [Phone], [Email], [TotalUser], [TotalMoneyProvided], [TotalPrinter], [TotalFilePrinted], [TotalFileUploaded], [TotalFileDownload]) VALUES (N'5362ac42-faa0-4e80-b36e-2dd65bf2fcbb', N'Hệ thống quản lý in ấn - GreenPrint HT', N'1.0.0', N'Nguyễn Đức Hưng & Phùng Văn Trường', N'Đang hoạt động', N'032.665.6568', N'greenprintht@gmail.com', 36, N'1000000   ', N'7         ', 6500, 6568, 5000)
GO
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'558d3cf7-bf21-4754-bb82-287812046697', N'Nguyễn Mạnh Hà', N'01110101112', N'hanm@gmail.com', N'hanm', N'$2a$10$Nvv.WLEs8KxWWEndkthJ9.8qZ.CoPBeTY6MvcTrqKrhPGojIiYBAW', 0, 0, 0, 500000, 1000, 0, 105, NULL, NULL, NULL, N'Administrator', CAST(N'2022-04-19T16:38:39.563' AS DateTime), N'Administrator', CAST(N'2022-04-19T16:40:03.657' AS DateTime), N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'04945341-6db8-496e-8978-8fd2e82fdd85')
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'93f4385e-4953-4cca-859c-294fb392e60e', N'Nguyễn Hà Phương Anh', N'0256320112', N'phuongnh@gmail.com', N'phuongnh', N'$2a$10$Nvv.WLEs8KxWWEndkthJ9.8qZ.CoPBeTY6MvcTrqKrhPGojIiYBAW', 0, 0, 0, 500000, 1000, 0, 0, NULL, NULL, NULL, N'Administrator', CAST(N'2022-04-19T16:37:32.463' AS DateTime), N'Administrator', CAST(N'2022-04-19T16:38:00.627' AS DateTime), N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'09e57a44-cc45-47d7-891c-dd4266bc75e5')
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'63793106-6fe0-49a1-8a45-41c972963f95', N'Trần Thị Thu Hương', N'0125002452', N'huongttt@gmail.com', N'huongttt', N'$2a$10$Nvv.WLEs8KxWWEndkthJ9.8qZ.CoPBeTY6MvcTrqKrhPGojIiYBAW', 0, 0, 0, 500000, 1000, 0, 53, N'Administrator', CAST(N'2022-04-21T13:41:46.887' AS DateTime), NULL, N'Administrator', CAST(N'2022-04-19T16:36:08.377' AS DateTime), N'Administrator', CAST(N'2022-04-21T13:41:46.887' AS DateTime), N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'09e57a44-cc45-47d7-891c-dd4266bc75e5')
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'9ea736f5-9ba6-4f4a-998d-4f4f92506347', N'Nguyễn Đức Hưng', N'0328887832', N'hungnd@vcsvietnam.vn', N'hungnd', N'$2a$10$Nvv.WLEs8KxWWEndkthJ9.8qZ.CoPBeTY6MvcTrqKrhPGojIiYBAW', 0, 0, 0, 592500, 1185, 5, 15, N'Administrator', CAST(N'2022-05-07T09:51:24.700' AS DateTime), N'đz', N'Administrator', CAST(N'2022-04-16T23:06:28.907' AS DateTime), N'Administrator', CAST(N'2022-05-07T09:51:24.700' AS DateTime), N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'56ff8626-152c-4ae0-9356-95352df97fcc')
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'e5b6058c-7dcd-4e1c-9520-68435a748cfa', N'Bùi Mai Hạnh', N'01200001245', N'hanhbm@gmail.com', N'hanhbm', N'$2a$10$Nvv.WLEs8KxWWEndkthJ9.8qZ.CoPBeTY6MvcTrqKrhPGojIiYBAW', 0, 0, 0, 500000, 1000, 0, 125, NULL, NULL, N'', N'Administrator', CAST(N'2022-04-19T16:36:49.300' AS DateTime), N'Administrator', CAST(N'2022-04-19T16:36:49.300' AS DateTime), N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'09e57a44-cc45-47d7-891c-dd4266bc75e5')
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'35e9a9d0-9fc4-47e2-944a-7d4e08111b09', N'Nguyễn Thanh Tùng', N'03250001256', N'tungnt@vcsvietnam.vn', N'tungnt', N'$2a$10$Nvv.WLEs8KxWWEndkthJ9.8qZ.CoPBeTY6MvcTrqKrhPGojIiYBAW', 0, 0, 0, 500000, 1000, 0, 0, N'Administrator', CAST(N'2022-04-19T12:56:20.893' AS DateTime), N'dz', N'Administrator', CAST(N'2022-04-16T23:18:28.913' AS DateTime), N'Administrator', CAST(N'2022-04-19T12:56:20.893' AS DateTime), N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'56ff8626-152c-4ae0-9356-95352df97fcc')
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'3ebac4a8-c306-4f09-9098-a4c07d4803d6', N'Hoàng Thị Nga', N'01012245236', N'ngaht@gmail.com', N'ngaht', N'$2a$10$Nvv.WLEs8KxWWEndkthJ9.8qZ.CoPBeTY6MvcTrqKrhPGojIiYBAW', 0, 0, 0, 500000, 1000, 0, 85, NULL, NULL, N'', N'Administrator', CAST(N'2022-04-19T16:41:57.937' AS DateTime), N'Administrator', CAST(N'2022-04-19T16:41:57.937' AS DateTime), N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'a762f8e0-1ff3-412b-beb9-569c065c62fc')
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'd30db765-9624-46b2-83cf-a66211293309', N'Lê Đức Nhất', N'0256660112', N'nhatld@vcsvietnam.vn', N'nhatld', N'$2a$10$Nvv.WLEs8KxWWEndkthJ9.8qZ.CoPBeTY6MvcTrqKrhPGojIiYBAW', 0, 0, 0, 500000, 1000, 0, 141, N'Administrator', CAST(N'2022-04-19T12:56:26.140' AS DateTime), N'dz', N'Administrator', CAST(N'2022-04-16T23:09:27.807' AS DateTime), N'Administrator', CAST(N'2022-04-19T12:56:26.140' AS DateTime), N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'56ff8626-152c-4ae0-9356-95352df97fcc')
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'ad5c8f5b-23de-4593-a122-c5c889c66fdb', N'Phùng Văn Trường', N'0345201102', N'truongpv@vcsvietnam.vn', N'truongpv', N'$2a$10$Nvv.WLEs8KxWWEndkthJ9.8qZ.CoPBeTY6MvcTrqKrhPGojIiYBAW', 0, 0, 0, 0, 0, 21, 68, N'Administrator', CAST(N'2022-04-19T14:57:06.963' AS DateTime), N'dz', N'Administrator', CAST(N'2022-04-16T23:08:51.540' AS DateTime), N'Administrator', CAST(N'2022-04-19T14:57:06.963' AS DateTime), N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'56ff8626-152c-4ae0-9356-95352df97fcc')
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'67d16ed7-d84f-4ba5-a0ba-e980d3b1fc92', N'Đinh Thị Ngọc Hân', N'0101224578', N'handth@gmail.com', N'handth', N'$2a$10$Nvv.WLEs8KxWWEndkthJ9.8qZ.CoPBeTY6MvcTrqKrhPGojIiYBAW', 0, 0, 0, 500000, 1000, 0, 0, NULL, NULL, NULL, N'Administrator', CAST(N'2022-04-19T16:39:08.120' AS DateTime), N'Administrator', CAST(N'2022-04-19T16:40:17.343' AS DateTime), N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'a762f8e0-1ff3-412b-beb9-569c065c62fc')
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'5609f99c-6e60-4481-80a4-e995e98699a6', N'Chử Thị Mai Phương', N'0404253578', N'phuongctm@gmail.com', N'phuongctm', N'$2a$10$Nvv.WLEs8KxWWEndkthJ9.8qZ.CoPBeTY6MvcTrqKrhPGojIiYBAW', 0, 0, 0, 500000, 1000, 0, 0, NULL, NULL, N'', N'Administrator', CAST(N'2022-04-19T16:39:52.610' AS DateTime), N'Administrator', CAST(N'2022-04-19T16:39:52.610' AS DateTime), N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'a762f8e0-1ff3-412b-beb9-569c065c62fc')
INSERT [dbo].[User] ([Oid], [Name], [Phone], [Email], [UserName], [Password], [IsAdmin], [IsDisable], [IsRestricted], [Balance], [RemainPages], [TotalJobs], [TotalPages], [ResetBy], [ResetDate], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate], [IdUserGroup], [IdDepartment]) VALUES (N'add1eab5-bb85-4b34-8856-f665ae3ed156', N'Administrator', N'0000000000', N'administrator@gmail.com', N'admin', N'$2a$10$7JECSmU.0PfBF6bQNjndjeAQQBsJpe2H/SNdYsbjkcDDeVAnY36Yy', 1, 0, 0, 600000, 1200, 0, 0, N'Administrator', CAST(N'2022-05-07T10:12:33.523' AS DateTime), NULL, N'admin', CAST(N'2022-04-16T22:58:15.750' AS DateTime), N'Administrator', CAST(N'2022-05-07T10:12:33.527' AS DateTime), N'1899a9f0-b51d-4a2d-ac10-9dded5ae7464', N'56ff8626-152c-4ae0-9356-95352df97fcc')
GO
INSERT [dbo].[UserConfig] ([Oid], [DefaultBalance], [DefaultRemainPages]) VALUES (N'00d88317-1d1f-408f-aea0-f5a2be39785e', 600000, 1200)
GO
INSERT [dbo].[UserGroup] ([Oid], [Name], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'ed68c327-68cc-4f61-a650-4aa3a9955808', N'Người dùng thành viên', N'Người dùng thành viên Hệ thống quản lý in ấn GreentPrint HT', N'admin', CAST(N'2022-04-16T22:45:50.650' AS DateTime), N'admin', CAST(N'2022-04-16T22:45:50.650' AS DateTime))
INSERT [dbo].[UserGroup] ([Oid], [Name], [Note], [CreatedBy], [CreatedDate], [ModifiedBy], [ModifiedDate]) VALUES (N'1899a9f0-b51d-4a2d-ac10-9dded5ae7464', N'Quản trị viên', N'Quản trị viên Hệ thống quản lý in ấn GreentPrint HT', N'admin', CAST(N'2022-04-16T22:45:29.213' AS DateTime), N'admin', CAST(N'2022-04-16T22:45:29.213' AS DateTime))
GO
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'04d58793-aaac-434c-b144-10d061746c3e', N'558d3cf7-bf21-4754-bb82-287812046697', N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'active')
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'7a5c89aa-abd5-4646-816c-384286ac86da', N'5609f99c-6e60-4481-80a4-e995e98699a6', N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'active')
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'dbbd9425-6c6d-4fb5-b856-518e11ec9b9e', N'9ea736f5-9ba6-4f4a-998d-4f4f92506347', N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'active')
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'58c411c1-95df-4aaf-a935-566db2e46035', N'add1eab5-bb85-4b34-8856-f665ae3ed156', N'def25f45-b2a0-426b-a631-f19cc73f4603', N'active')
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'a5bde304-4160-402a-aca7-736229504a0a', N'e5b6058c-7dcd-4e1c-9520-68435a748cfa', N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'active')
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'abc94303-18f8-455a-9636-8e4d4985aacf', N'd30db765-9624-46b2-83cf-a66211293309', N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'active')
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'c7869f73-e0c7-4c44-8f12-a83a4c22f1d7', N'93f4385e-4953-4cca-859c-294fb392e60e', N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'active')
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'03c662d3-b00a-4669-84a3-c8fa54e3af90', N'67d16ed7-d84f-4ba5-a0ba-e980d3b1fc92', N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'active')
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'e641cd9f-c506-410b-8480-d1189a95074e', N'63793106-6fe0-49a1-8a45-41c972963f95', N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'active')
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'af4c006e-7581-41bf-8905-e6481ff5216f', N'ad5c8f5b-23de-4593-a122-c5c889c66fdb', N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'active')
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'665006be-57db-4935-b5ca-e9fe7c08f6bf', N'3ebac4a8-c306-4f09-9098-a4c07d4803d6', N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'active')
INSERT [dbo].[UserRole] ([Oid], [IdUser], [IdRole], [Status]) VALUES (N'6de53409-e423-4a25-9e85-fd9e17612961', N'35e9a9d0-9fc4-47e2-944a-7d4e08111b09', N'78f76bf2-11cd-4b1d-8546-12f22cd4b59d', N'active')
GO
INSERT [dbo].[WatermarkConfig] ([Oid], [FileImage], [Text], [FontFamily], [FontSize], [X], [Y], [VerticalAlignment], [HorizontalAlignment], [Height], [Width], [RotateAngle], [IsBackground], [Opacity], [Classify], [Name]) VALUES (N'0958f58b-f269-4339-aa4d-390d313c861b', N'...', NULL, NULL, NULL, 1.1, 1.1, 1, 1, 1, 1, 1, 1, 0.1, 1, N'Image Watermark')
INSERT [dbo].[WatermarkConfig] ([Oid], [FileImage], [Text], [FontFamily], [FontSize], [X], [Y], [VerticalAlignment], [HorizontalAlignment], [Height], [Width], [RotateAngle], [IsBackground], [Opacity], [Classify], [Name]) VALUES (N'8568b67d-91bd-426c-a39f-bb3211d88096', NULL, N'...', N'Time News Roman', 2, 2.2, 2.2, 2, 2, 2, 2, 2, 1, 0.2, 2, N'Text Watermark')
GO
ALTER TABLE [dbo].[BackupConfig] ADD  CONSTRAINT [DF_BackupConfig_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Department] ADD  CONSTRAINT [DF_Department_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF_Document_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF_Document_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Document] ADD  CONSTRAINT [DF_Document_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[EmailConfig] ADD  CONSTRAINT [DF_EmailConfig_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[FinancialConfig] ADD  CONSTRAINT [DF_FinancialConfig_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[Printer] ADD  CONSTRAINT [DF_Printer_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[Printer] ADD  CONSTRAINT [DF_Printer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Printer] ADD  CONSTRAINT [DF_Printer_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[PrinterUsageLog] ADD  CONSTRAINT [DF_PrinterUsageLog_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[PrinterUsageLog] ADD  CONSTRAINT [DF_PrinterUsageLog_UsageCost]  DEFAULT ((0)) FOR [UsageCost]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[SystemInfo] ADD  CONSTRAINT [DF_SystemInfo_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [DF_User_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[UserConfig] ADD  CONSTRAINT [DF_UserConfig_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[UserGroup] ADD  CONSTRAINT [DF_UserGroup_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[UserGroup] ADD  CONSTRAINT [DF_UserGroup_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[UserGroup] ADD  CONSTRAINT [DF_UserGroup_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[UserRole] ADD  CONSTRAINT [DF_UserRole_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[WatermarkConfig] ADD  CONSTRAINT [DF_WatermarkConfig_Oid]  DEFAULT (newsequentialid()) FOR [Oid]
GO
ALTER TABLE [dbo].[Document]  WITH CHECK ADD  CONSTRAINT [FK_Document_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Oid])
GO
ALTER TABLE [dbo].[Document] CHECK CONSTRAINT [FK_Document_User]
GO
ALTER TABLE [dbo].[Printer]  WITH CHECK ADD  CONSTRAINT [FK_Printer_Department] FOREIGN KEY([IdDepartment])
REFERENCES [dbo].[Department] ([Oid])
GO
ALTER TABLE [dbo].[Printer] CHECK CONSTRAINT [FK_Printer_Department]
GO
ALTER TABLE [dbo].[PrinterUsageLog]  WITH CHECK ADD  CONSTRAINT [FK_PrinterUsageLog_Document] FOREIGN KEY([IdDocument])
REFERENCES [dbo].[Document] ([Oid])
GO
ALTER TABLE [dbo].[PrinterUsageLog] CHECK CONSTRAINT [FK_PrinterUsageLog_Document]
GO
ALTER TABLE [dbo].[PrinterUsageLog]  WITH CHECK ADD  CONSTRAINT [FK_PrinterUsageLog_Printer] FOREIGN KEY([IdPrinter])
REFERENCES [dbo].[Printer] ([Oid])
GO
ALTER TABLE [dbo].[PrinterUsageLog] CHECK CONSTRAINT [FK_PrinterUsageLog_Printer]
GO
ALTER TABLE [dbo].[PrinterUsageLog]  WITH CHECK ADD  CONSTRAINT [FK_PrinterUsageLog_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Oid])
GO
ALTER TABLE [dbo].[PrinterUsageLog] CHECK CONSTRAINT [FK_PrinterUsageLog_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Department] FOREIGN KEY([IdDepartment])
REFERENCES [dbo].[Department] ([Oid])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Department]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserGroup] FOREIGN KEY([IdUserGroup])
REFERENCES [dbo].[UserGroup] ([Oid])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserGroup]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([Oid])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[User] ([Oid])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Máy tạo lệnh in' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrinterUsageLog', @level2type=N'COLUMN',@level2name=N'MachineName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Kích thước job' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrinterUsageLog', @level2type=N'COLUMN',@level2name=N'JobSize'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Người dùng đã gửi công việc' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PrinterUsageLog', @level2type=N'COLUMN',@level2name=N'UserName'
GO
USE [master]
GO
ALTER DATABASE [PrintManagement] SET  READ_WRITE 
GO
