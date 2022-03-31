USE [master]
GO
/****** Object:  Database [AdrenalineDATABASE]    Script Date: 31.3.2022 г. 13:35:13 ******/
CREATE DATABASE [AdrenalineDATABASE]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AdrenalineDATABASE', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdrenalineDATABASE.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'AdrenalineDATABASE_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdrenalineDATABASE_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [AdrenalineDATABASE] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AdrenalineDATABASE].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AdrenalineDATABASE] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET ARITHABORT OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AdrenalineDATABASE] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AdrenalineDATABASE] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AdrenalineDATABASE] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AdrenalineDATABASE] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [AdrenalineDATABASE] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET RECOVERY FULL 
GO
ALTER DATABASE [AdrenalineDATABASE] SET  MULTI_USER 
GO
ALTER DATABASE [AdrenalineDATABASE] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AdrenalineDATABASE] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AdrenalineDATABASE] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AdrenalineDATABASE] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [AdrenalineDATABASE] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [AdrenalineDATABASE] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'AdrenalineDATABASE', N'ON'
GO
ALTER DATABASE [AdrenalineDATABASE] SET QUERY_STORE = OFF
GO
USE [AdrenalineDATABASE]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Full_Name] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructors]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](50) NOT NULL,
	[ImageURL] [nvarchar](max) NOT NULL,
	[RegisterDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Instructors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Media]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Media](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[ServiceId] [int] NOT NULL,
	[Category] [int] NOT NULL,
	[FilePath] [nvarchar](max) NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Media] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiceRequests]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiceRequests](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ServiceId] [int] NOT NULL,
	[ReserveDate] [datetime2](7) NOT NULL,
	[Message] [nvarchar](50) NOT NULL,
	[RegisterDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_ServiceRequests] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 31.3.2022 г. 13:35:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](200) NOT NULL,
	[Location] [nvarchar](max) NOT NULL,
	[ImageURL] [nvarchar](max) NOT NULL,
	[Price] [int] NOT NULL,
	[DateJoined] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220320155734_Add-Tables', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220321142113_Remove-Enum', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220321142222_Add-Admin-Acc', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220321155145_UserYt', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220321155542_UserYt', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220321155608_Add-Admin-Acc', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220321175115_Add-Admin-Acc', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220331101011_test', N'5.0.12')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'be58b1c5-503d-44ee-91f3-a45f6feda0d8', N'Admin', N'ADMIN', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0fdf3da7-bf80-49f6-a07f-797575ff0414', N'be58b1c5-503d-44ee-91f3-a45f6feda0d8')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Full_Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0fdf3da7-bf80-49f6-a07f-797575ff0414', N'Admin', N'admin@adrenaline.co.bg', N'ADMIN@ADRENALINE.CO.BG', N'admin@adrenaline.co.bg', N'ADMIN@ADRENALINE.CO.BG', 0, N'AQAAAAEAACcQAAAAEJ2f85zsgUaso1sdEtWHm8HfJWTcaGPaOKYy75JyEv0LTi93P72TZyaL36hQx/XxlA==', N'', NULL, NULL, 0, 0, NULL, 0, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Full_Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c96b7a7c-6848-4ae6-99f0-ee1a659ebf91', N'Ivan', N'user2@gmail.com', N'USER2@GMAIL.COM', N'user2@gmail.com', N'USER2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECvf/irkf6h0bmU/J03ROnjfnTO4HVz/ZFxdKU9eI6O8WM4OBWsZT9jrKrB0DAeoww==', N'NGPVGU5URPGBWNKMN2RNNKLOJWI7MD7V', N'8a89bf24-4b3a-473a-9296-9bb971e8b65a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Full_Name], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f6cd5218-4011-476d-b329-900a531fd839', NULL, N'user1@gmail.com', N'USER1@GMAIL.COM', N'user1@gmail.com', N'USER1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJuBpL5GqAoXH9iNoFsC1GdEb5KO1dsxDYWdRkLtCNgGevQn4bgMyP35yvo6mnLgcA==', N'GVTPEE6NLD4QL7KSUPQ77V55YU2ZLRYR', N'8df3df7d-5142-456c-a2c4-9c0e046f23d7', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Instructors] ON 

INSERT [dbo].[Instructors] ([Id], [FirstName], [LastName], [Description], [ImageURL], [RegisterDate]) VALUES (1, N'Митьо', N'Пищова', N'Боксова круша', N'/images/Instructors/tom.jpg', CAST(N'2022-03-26T13:56:00.0000000' AS DateTime2))
INSERT [dbo].[Instructors] ([Id], [FirstName], [LastName], [Description], [ImageURL], [RegisterDate]) VALUES (2, N'Игор', N'Владигеров', N'Терорист от народа', N'/images/Instructors/lon.jpg', CAST(N'2022-03-26T14:00:00.0000000' AS DateTime2))
INSERT [dbo].[Instructors] ([Id], [FirstName], [LastName], [Description], [ImageURL], [RegisterDate]) VALUES (3, N'Тони', N'Шушони', N'Третия заек', N'/images/Instructors/jon.jpg', CAST(N'2022-03-26T14:15:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Instructors] OFF
GO
SET IDENTITY_INSERT [dbo].[Media] ON 

INSERT [dbo].[Media] ([Id], [Title], [ServiceId], [Category], [FilePath], [Date]) VALUES (1, N'Медия', 1, 1, N'/images/Motocross/moto1.jpg', CAST(N'2022-03-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Media] ([Id], [Title], [ServiceId], [Category], [FilePath], [Date]) VALUES (2, N'Мотокрос', 3, 1, N'/images/Motocross/moto2.jpg', CAST(N'2022-03-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Media] ([Id], [Title], [ServiceId], [Category], [FilePath], [Date]) VALUES (3, N'Парашут', 2, 1, N'/images/Parachute/par3.jpg', CAST(N'2022-03-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Media] ([Id], [Title], [ServiceId], [Category], [FilePath], [Date]) VALUES (4, N'Парашут Снимка', 2, 1, N'/images/carousel_img2.jpg', CAST(N'2022-03-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Media] ([Id], [Title], [ServiceId], [Category], [FilePath], [Date]) VALUES (5, N'Moto', 3, 0, N'https://www.youtube.com/embed/l9m4cW2yxy0', CAST(N'2022-03-27T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Media] ([Id], [Title], [ServiceId], [Category], [FilePath], [Date]) VALUES (6, N'Moto', 3, 0, N'https://www.youtube.com/embed/DsvGgGEPMQg', CAST(N'2022-03-27T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Media] OFF
GO
SET IDENTITY_INSERT [dbo].[ServiceRequests] ON 

INSERT [dbo].[ServiceRequests] ([Id], [UserId], [ServiceId], [ReserveDate], [Message], [RegisterDate]) VALUES (1, N'0fdf3da7-bf80-49f6-a07f-797575ff0414', 1, CAST(N'2022-03-25T00:00:00.0000000' AS DateTime2), N'Hello', CAST(N'2022-03-31T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[ServiceRequests] ([Id], [UserId], [ServiceId], [ReserveDate], [Message], [RegisterDate]) VALUES (2, N'c96b7a7c-6848-4ae6-99f0-ee1a659ebf91', 3, CAST(N'2022-03-26T00:00:00.0000000' AS DateTime2), N'Искам мотокрос', CAST(N'2022-03-26T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[ServiceRequests] ([Id], [UserId], [ServiceId], [ReserveDate], [Message], [RegisterDate]) VALUES (6, N'c96b7a7c-6848-4ae6-99f0-ee1a659ebf91', 5, CAST(N'2022-03-26T00:00:00.0000000' AS DateTime2), N'Карат ми се ски ', CAST(N'2022-03-30T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[ServiceRequests] ([Id], [UserId], [ServiceId], [ReserveDate], [Message], [RegisterDate]) VALUES (8, N'0fdf3da7-bf80-49f6-a07f-797575ff0414', 5, CAST(N'2022-03-30T00:00:00.0000000' AS DateTime2), N'yolo', CAST(N'2022-03-28T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[ServiceRequests] ([Id], [UserId], [ServiceId], [ReserveDate], [Message], [RegisterDate]) VALUES (10, N'0fdf3da7-bf80-49f6-a07f-797575ff0414', 1, CAST(N'2022-03-29T00:00:00.0000000' AS DateTime2), N'yolo', CAST(N'2022-03-29T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[ServiceRequests] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [Name], [Description], [Location], [ImageURL], [Price], [DateJoined]) VALUES (1, N'Бънджи', N'Бъндижито е много популярен екстремен спорт, който ще накара сърцето ви да бие лудо и ще издигне страха до нови висоти. Ще се осмелите ли?', N'Мороко', N'/images/carousel_img1.jpg', 25, CAST(N'2022-03-20T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Location], [ImageURL], [Price], [DateJoined]) VALUES (2, N'Парашут', N'Екстремен спорт', N'Нова Зеландия', N'/images/Parachute/par1.jpg', 25, CAST(N'2022-03-21T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Location], [ImageURL], [Price], [DateJoined]) VALUES (3, N'Мотокрос', N'Мотокросът е състезание с мотоциклети в пресечен терен. Трасетата за мотокрос обикновено са в обширни естествени терени с малък брой изкуствени скокове. ', N'Англия', N'/images/Motocross/moto2.jpg', 50, CAST(N'2022-03-24T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Location], [ImageURL], [Price], [DateJoined]) VALUES (4, N'Сноуборд', N'Зимен спорт', N'Тибет', N'/images/Snowboard/snow1.jpg', 30, CAST(N'2022-03-25T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Location], [ImageURL], [Price], [DateJoined]) VALUES (5, N'Ски', N'Обичате ски и това е много добре. Това е пълнеж за описание. Някой ден ще го сменя.', N'Финландия', N'/images/Ski/ski1.jpg', 25, CAST(N'2022-03-31T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Services] ([Id], [Name], [Description], [Location], [ImageURL], [Price], [DateJoined]) VALUES (6, N'Подводно гмуркане', N'Описание за подводно гмуркане', N'България', N'/images/Cave-Diving/cd4.jpg', 25, CAST(N'2022-03-27T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 31.3.2022 г. 13:35:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 31.3.2022 г. 13:35:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 31.3.2022 г. 13:35:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 31.3.2022 г. 13:35:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 31.3.2022 г. 13:35:14 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 31.3.2022 г. 13:35:14 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 31.3.2022 г. 13:35:14 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Media_ServiceId]    Script Date: 31.3.2022 г. 13:35:14 ******/
CREATE NONCLUSTERED INDEX [IX_Media_ServiceId] ON [dbo].[Media]
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ServiceRequests_ServiceId]    Script Date: 31.3.2022 г. 13:35:14 ******/
CREATE NONCLUSTERED INDEX [IX_ServiceRequests_ServiceId] ON [dbo].[ServiceRequests]
(
	[ServiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ServiceRequests_UserId]    Script Date: 31.3.2022 г. 13:35:14 ******/
CREATE NONCLUSTERED INDEX [IX_ServiceRequests_UserId] ON [dbo].[ServiceRequests]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ServiceRequests] ADD  DEFAULT (N'') FOR [UserId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Media]  WITH CHECK ADD  CONSTRAINT [FK_Media_Services_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Media] CHECK CONSTRAINT [FK_Media_Services_ServiceId]
GO
ALTER TABLE [dbo].[ServiceRequests]  WITH CHECK ADD  CONSTRAINT [FK_ServiceRequests_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServiceRequests] CHECK CONSTRAINT [FK_ServiceRequests_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ServiceRequests]  WITH CHECK ADD  CONSTRAINT [FK_ServiceRequests_Services_ServiceId] FOREIGN KEY([ServiceId])
REFERENCES [dbo].[Services] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ServiceRequests] CHECK CONSTRAINT [FK_ServiceRequests_Services_ServiceId]
GO
USE [master]
GO
ALTER DATABASE [AdrenalineDATABASE] SET  READ_WRITE 
GO
