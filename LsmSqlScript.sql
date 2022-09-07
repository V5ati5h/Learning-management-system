USE [master]
GO
/****** Object:  Database [LSM]    Script Date: 07-09-2022 23:34:22 ******/
CREATE DATABASE [LSM]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LSM', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\LSM.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LSM_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER01\MSSQL\DATA\LSM_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LSM] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LSM].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LSM] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LSM] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LSM] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LSM] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LSM] SET ARITHABORT OFF 
GO
ALTER DATABASE [LSM] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LSM] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LSM] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LSM] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LSM] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LSM] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LSM] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LSM] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LSM] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LSM] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LSM] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LSM] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LSM] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LSM] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LSM] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LSM] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LSM] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LSM] SET RECOVERY FULL 
GO
ALTER DATABASE [LSM] SET  MULTI_USER 
GO
ALTER DATABASE [LSM] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LSM] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LSM] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LSM] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LSM] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LSM] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'LSM', N'ON'
GO
ALTER DATABASE [LSM] SET QUERY_STORE = OFF
GO
USE [LSM]
GO
/****** Object:  Table [dbo].[semOne2022]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[semOne2022](
	[Sid] [int] NULL,
	[Fname] [varchar](50) NULL,
	[Mname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Semid] [varchar](50) NULL,
	[SClass] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[semTwo2022]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[semTwo2022](
	[Sid] [int] NULL,
	[Fname] [varchar](50) NULL,
	[Mname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Semid] [varchar](50) NULL,
	[SClass] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Admin]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Admin](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[CreatedDate] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Class]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Class](
	[classID] [int] IDENTITY(1,1) NOT NULL,
	[className] [varchar](50) NULL,
	[departID] [int] NULL,
	[createdDate] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Class] PRIMARY KEY CLUSTERED 
(
	[classID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Depart]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Depart](
	[Did] [int] IDENTITY(1,1) NOT NULL,
	[Dname] [varchar](50) NULL,
	[CreatedDate] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Department]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Department](
	[departID] [int] IDENTITY(1,1) NOT NULL,
	[departName] [varchar](50) NULL,
	[createdDate] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Department] PRIMARY KEY CLUSTERED 
(
	[departID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Faculty]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Faculty](
	[Fid] [int] IDENTITY(1,1) NOT NULL,
	[Fname] [varchar](50) NOT NULL,
	[Mname] [varchar](50) NULL,
	[Lname] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Did] [int] NULL,
	[Dname] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Faculty] PRIMARY KEY CLUSTERED 
(
	[Fid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Sem]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Sem](
	[semID] [int] IDENTITY(1,1) NOT NULL,
	[semName] [varchar](50) NULL,
	[classID] [int] NULL,
	[createdDate] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_Sem] PRIMARY KEY CLUSTERED 
(
	[semID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_Admin]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_Admin](@Username varchar(50), @Password varchar(50))
as
begin
insert into Tbl_Admin(Username,Password,CreatedDate) values(@Username,@Password,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[usp_class_insert]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_class_insert](@cName varchar(50), @dId int)
as
begin
insert into tbl_Class(className, departID, createdDate) values(@cName, @dId, GETDATE());
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Depart]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_Depart](@DName varchar(50))
as
begin
insert into Tbl_Depart(Dname,CreatedDate) values(@DName,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[usp_department_insert]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_department_insert](@dName varchar(50))
as
begin
insert into tbl_Department(departName, createdDate) values(@dName, GETDATE());
end
GO
/****** Object:  StoredProcedure [dbo].[usp_Faculty]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_Faculty](@FName varchar(50), @MName varchar(50), @LName varchar(50), @Mobile varchar(50), @Email varchar(50), @UserName varchar(50), @Password varchar(50), @Did int, @Dname varchar(50))
as
begin
insert into Tbl_Faculty(Fname, Mname, Lname, Mobile, Email, Username, Password, Did, Dname) values (@FName,@MName,@LName,@Mobile,@Email,@UserName,@Password,@Did,@Dname)
end
GO
/****** Object:  StoredProcedure [dbo].[usp_sem_insert]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[usp_sem_insert](@sName varchar(50), @cId int)
as
begin
insert into tbl_Sem(semName, classID, createdDate) values(@sName, @cId, GETDATE());
end
GO
/****** Object:  StoredProcedure [dbo].[usp_semOne]    Script Date: 07-09-2022 23:34:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_semOne](@FName varchar(50), @MName varchar(50), @LName varchar(50), @Mobile varchar(50), @Email varchar(50), @UserName varchar(50), @Password varchar(50), @Semid int, @SClass varchar(50))
as
begin
insert into semOne2022([Fname]
           ,[Mname]
           ,[Lname]
           ,[Mobile]
           ,[Email]
           ,[Username]
           ,[Password]
           ,[Semid]
           ,[SClass]) 
           VALUES(@FName,@MName,@LName,@Mobile,@Email,@UserName,@Password,@Semid,@SClass);
end
GO
USE [master]
GO
ALTER DATABASE [LSM] SET  READ_WRITE 
GO
