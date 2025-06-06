USE [master]
GO
/****** Object:  Database [Bike_data]    Script Date: 5/4/2025 6:13:53 PM ******/
CREATE DATABASE [Bike_data]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bike_data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\Bike_data.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Bike_data_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS01\MSSQL\DATA\Bike_data_log.ldf' , SIZE = 73728KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Bike_data] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Bike_data].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Bike_data] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Bike_data] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Bike_data] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Bike_data] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Bike_data] SET ARITHABORT OFF 
GO
ALTER DATABASE [Bike_data] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Bike_data] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Bike_data] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Bike_data] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Bike_data] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Bike_data] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Bike_data] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Bike_data] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Bike_data] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Bike_data] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Bike_data] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Bike_data] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Bike_data] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Bike_data] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Bike_data] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Bike_data] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Bike_data] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Bike_data] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Bike_data] SET  MULTI_USER 
GO
ALTER DATABASE [Bike_data] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Bike_data] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Bike_data] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Bike_data] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Bike_data] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Bike_data] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Bike_data] SET QUERY_STORE = ON
GO
ALTER DATABASE [Bike_data] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Bike_data]
GO
/****** Object:  Table [dbo].[bike_share_yr_0]    Script Date: 5/4/2025 6:13:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bike_share_yr_0](
	[dteday] [nvarchar](50) NOT NULL,
	[season] [nvarchar](50) NOT NULL,
	[yr] [nvarchar](50) NOT NULL,
	[mnth] [nvarchar](50) NOT NULL,
	[hr] [nvarchar](50) NOT NULL,
	[holiday] [nvarchar](50) NOT NULL,
	[weekday] [nvarchar](50) NOT NULL,
	[workingday] [nvarchar](50) NOT NULL,
	[weathersit] [nvarchar](50) NOT NULL,
	[temp] [float] NOT NULL,
	[atemp] [float] NOT NULL,
	[hum] [nvarchar](50) NOT NULL,
	[windspeed] [nvarchar](50) NOT NULL,
	[rider_type] [nvarchar](50) NOT NULL,
	[riders] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[bike_share_yr_1]    Script Date: 5/4/2025 6:13:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bike_share_yr_1](
	[dteday] [nvarchar](50) NOT NULL,
	[season] [nvarchar](50) NOT NULL,
	[yr] [nvarchar](50) NOT NULL,
	[mnth] [nvarchar](50) NOT NULL,
	[hr] [nvarchar](50) NOT NULL,
	[holiday] [nvarchar](50) NOT NULL,
	[weekday] [nvarchar](50) NOT NULL,
	[workingday] [nvarchar](50) NOT NULL,
	[weathersit] [nvarchar](50) NOT NULL,
	[temp] [float] NOT NULL,
	[atemp] [float] NOT NULL,
	[hum] [float] NOT NULL,
	[windspeed] [nvarchar](50) NOT NULL,
	[rider_type] [nvarchar](50) NOT NULL,
	[riders] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cost_table]    Script Date: 5/4/2025 6:13:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cost_table](
	[yr] [nvarchar](50) NOT NULL,
	[price] [float] NOT NULL,
	[COGS] [float] NOT NULL
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [Bike_data] SET  READ_WRITE 
GO
