USE [master]
GO
CREATE DATABASE [Mareigua]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Mareigua', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Mareigua.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Mareigua_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Mareigua_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Mareigua] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Mareigua].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Mareigua] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Mareigua] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Mareigua] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Mareigua] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Mareigua] SET ARITHABORT OFF 
GO
ALTER DATABASE [Mareigua] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Mareigua] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Mareigua] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Mareigua] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Mareigua] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Mareigua] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Mareigua] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Mareigua] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Mareigua] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Mareigua] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Mareigua] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Mareigua] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Mareigua] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Mareigua] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Mareigua] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Mareigua] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Mareigua] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Mareigua] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Mareigua] SET  MULTI_USER 
GO
ALTER DATABASE [Mareigua] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Mareigua] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Mareigua] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Mareigua] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Mareigua] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Mareigua] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Mareigua] SET QUERY_STORE = OFF
GO
USE [Mareigua]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Multiplos](
	[MultiploId] [int] IDENTITY(1,1) NOT NULL,
	[Numero] [int] NOT NULL,
	[MultiploDe] [nvarchar](50) NULL,
	[Mensaje] [nvarchar](50) NULL,
 CONSTRAINT [PK_Multiplos] PRIMARY KEY CLUSTERED 
(
	[MultiploId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [Multiplos] ON 

INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2412, 1, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2413, 2, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2414, 3, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2415, 4, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2416, 5, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2417, 6, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2418, 7, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2419, 8, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2420, 9, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2421, 10, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2422, 11, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2423, 12, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2424, 13, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2425, 14, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2426, 15, N'Múltiplo de: 3 y 5', N'mareigua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2427, 16, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2428, 17, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2429, 18, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2430, 19, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2431, 20, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2432, 21, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2433, 22, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2434, 23, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2435, 24, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2436, 25, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2437, 26, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2438, 27, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2439, 28, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2440, 29, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2441, 30, N'Múltiplo de: 3 y 5', N'mareigua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2442, 31, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2443, 32, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2444, 33, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2445, 34, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2446, 35, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2447, 36, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2448, 37, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2449, 38, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2450, 39, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2451, 40, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2452, 41, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2453, 42, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2454, 43, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2455, 44, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2456, 45, N'Múltiplo de: 3 y 5', N'mareigua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2457, 46, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2458, 47, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2459, 48, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2460, 49, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2461, 50, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2462, 51, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2463, 52, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2464, 53, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2465, 54, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2466, 55, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2467, 56, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2468, 57, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2469, 58, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2470, 59, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2471, 60, N'Múltiplo de: 3 y 5', N'mareigua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2472, 61, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2473, 62, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2474, 63, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2475, 64, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2476, 65, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2477, 66, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2478, 67, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2479, 68, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2480, 69, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2481, 70, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2482, 71, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2483, 72, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2484, 73, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2485, 74, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2486, 75, N'Múltiplo de: 3 y 5', N'mareigua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2487, 76, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2488, 77, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2489, 78, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2490, 79, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2491, 80, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2492, 81, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2493, 82, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2494, 83, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2495, 84, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2496, 85, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2497, 86, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2498, 87, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2499, 88, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2500, 89, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2501, 90, N'Múltiplo de: 3 y 5', N'mareigua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2502, 91, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2503, 92, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2504, 93, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2505, 94, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2506, 95, N'Múltiplo de: 5', N'igua')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2507, 96, N'Múltiplo de: 3', N'mare')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2508, 97, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2509, 98, N'N/A', N'N/A')
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2510, 99, N'Múltiplo de: 3', N'mare')
GO
INSERT [Multiplos] ([MultiploId], [Numero], [MultiploDe], [Mensaje]) VALUES (2511, 100, N'Múltiplo de: 5', N'igua')
SET IDENTITY_INSERT [Multiplos] OFF
GO
USE [master]
GO
ALTER DATABASE [Mareigua] SET  READ_WRITE 
GO
