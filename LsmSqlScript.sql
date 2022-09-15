USE [master]
GO
/****** Object:  Database [LSM]    Script Date: 15-09-2022 23:57:50 ******/
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
/****** Object:  Table [dbo].[Tbl_Admin]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Admin](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[CreatedDate] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Admin] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Attandance]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Attandance](
	[attandenceId] [int] IDENTITY(1,1) NOT NULL,
	[grNo] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[date] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[staffName] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Attandance] PRIMARY KEY CLUSTERED 
(
	[attandenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Class]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Class](
	[classID] [int] IDENTITY(1,1) NOT NULL,
	[className] [nvarchar](50) NULL,
	[departmentName] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Class] PRIMARY KEY CLUSTERED 
(
	[classID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Complaints]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Complaints](
	[complainId] [int] IDENTITY(1,1) NOT NULL,
	[grNo] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[subject] [nvarchar](50) NULL,
	[message] [nvarchar](500) NULL,
	[reply] [nvarchar](500) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Complaints] PRIMARY KEY CLUSTERED 
(
	[complainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Department]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Department](
	[departmentId] [int] IDENTITY(1,1) NOT NULL,
	[departmentName] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Department] PRIMARY KEY CLUSTERED 
(
	[departmentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Div]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Div](
	[divId] [int] IDENTITY(1,1) NOT NULL,
	[divName] [char](1) NULL,
	[semName] [nvarchar](50) NULL,
	[seats] [int] NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Div] PRIMARY KEY CLUSTERED 
(
	[divId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Feedback]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Feedback](
	[feedBackId] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[feedBackMsg] [nvarchar](500) NULL,
	[createdDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Feedback] PRIMARY KEY CLUSTERED 
(
	[feedBackId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Leave]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Leave](
	[leaveId] [int] IDENTITY(1,1) NOT NULL,
	[grNo] [nvarchar](50) NULL,
	[name] [nvarchar](50) NULL,
	[div] [char](1) NULL,
	[classSemName] [nvarchar](50) NULL,
	[message] [nvarchar](500) NULL,
	[noDays] [int] NULL,
	[reply] [nvarchar](500) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Leave] PRIMARY KEY CLUSTERED 
(
	[leaveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Sem]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Sem](
	[semId] [int] IDENTITY(1,1) NOT NULL,
	[semName] [nvarchar](50) NULL,
	[className] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Sem] PRIMARY KEY CLUSTERED 
(
	[semId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Staff]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Staff](
	[staffId] [int] IDENTITY(1,1) NOT NULL,
	[firstName] [nvarchar](50) NULL,
	[middleName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[departmentId] [int] NULL,
	[departmentName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Faculty] PRIMARY KEY CLUSTERED 
(
	[staffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Student]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Student](
	[studentId] [int] IDENTITY(1,1) NOT NULL,
	[grNo] [nvarchar](50) NULL,
	[rollNo] [nvarchar](50) NULL,
	[firstName] [nvarchar](50) NULL,
	[middleName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[classSemName] [nvarchar](50) NULL,
	[divName] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[dateOfBirth] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[createdDate] [datetime] NULL,
 CONSTRAINT [PK_Studentmst] PRIMARY KEY CLUSTERED 
(
	[studentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_DELETE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_Student_DELETE]
	
	@grno AS NVARCHAR(256)
AS
BEGIN
	
DELETE FROM Tbl_Student WHERE grNo=@grno
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_INSERT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Student_INSERT]
	
	@grNo AS NVARCHAR(256),
	@rollNo  AS NVARCHAR(256),
	@fname  AS NVARCHAR(256),
	@mname  AS NVARCHAR(256),
	@lname  AS NVARCHAR(256),
	@semClass  AS NVARCHAR(256),
	@divName  AS NVARCHAR(256),
	@email  AS NVARCHAR(256),
	@mobile AS NVARCHAR(256),
	@dob AS nvarchar(500),
	@uname AS NVARCHAR(256),
	@pass AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO [dbo].[Tbl_Student]
           ([grNo], [rollNo], [firstName], [middleName] ,[lastName] ,[classSemName] ,[divName] ,[email] ,[mobile], [dateOfBirth]  ,[username] ,[password] ,[createdDate])
     VALUES
           (@grNo, @rollNo, @fname, @mname, @lname, @semClass, @divName, @email, @mobile, @dob, @uname, @pass, GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_SELECT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_Student_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Student
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_SELECT_by_email]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Student_SELECT_by_email]
		@email as nvarchar(256)
	 
AS
BEGIN
	
	SELECT * FROM Tbl_Student where email=@email
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_SELECT_by_uname]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Student_SELECT_by_uname]
		@uname as nvarchar(256)
	 
AS
BEGIN
	
	SELECT * FROM Tbl_Student where username=@uname 
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_SELECT_BYID]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Student_SELECT_BYID]
	
	@grNo AS NVARCHAR(256)
AS
BEGIN
	
	SELECT * FROM Tbl_Student WHERE grNo=@grNo
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_SELECT_check_current_pass]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Student_SELECT_check_current_pass]
	@pass as nvarchar(256),
	@uname as nvarchar(256)
	
AS
BEGIN
	
	select * from Tbl_Student where password=@pass and username=@uname
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_SELECT_login]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Student_SELECT_login]
	@uname as nvarchar(256),
	@pass as nvarchar(256)
AS
BEGIN
	
	SELECT * FROM Tbl_Student where username=@uname and password=@pass
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_SELECT_SEM_CLASS_DIV]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Student_SELECT_SEM_CLASS_DIV]
@semclass as nvarchar(256),
@div as nvarchar(256)
AS
BEGIN
	
	SELECT * FROM Tbl_Student where classSemName=@semclass and divName=@div
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Student_UPDATE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Student_UPDATE]
	
	@grNo AS NVARCHAR(256),
	@fname AS NVARCHAR(256),
	@mname AS NVARCHAR(256),
	@lname AS NVARCHAR(256),
	@email AS NVARCHAR(256),
	@mobile AS NVARCHAR(256),
	@pass AS NVARCHAR(256)
AS
BEGIN
	
UPDATE Tbl_Student SET firstName=@fname, middleName=@mname, lastName=@lname, email=@email, mobile=@mobile, password=@pass WHERE grNo=@grNo
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_DELETE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Attandance_DELETE]
	
	@attandenceId AS INT
AS
BEGIN
	
DELETE FROM Tbl_Attandance WHERE attandenceId=@attandenceId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_INSERT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Attandance_INSERT]
	
	@grNo AS NVARCHAR(256),
	@name AS NVARCHAR(256),
	@date AS nvarchar(500),
	@status as nvarchar(256),
	@staffname as nvarchar(256)
	
	
AS
BEGIN
	
	INSERT INTO Tbl_Attandance VALUES(@grNo,@name,@date,@status,@staffname,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_SELECT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Attandance_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Attandance
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_SELECT_Allready_Saved]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Attandance_SELECT_Allready_Saved]
	
	@grNo as nvarchar(256),
	@date as nvarchar(500)
AS
BEGIN
	
	SELECT * FROM Tbl_Attandance where grNo=@grNo and Date=@date
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_SELECT_BY_ROLLNO]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Attandance_SELECT_BY_ROLLNO]
	
	@grNo as nvarchar(256)
	
AS
BEGIN
	
	SELECT * FROM Tbl_Attandance where grNo = @grNo 
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_SELECT_BY_ROLLNO_and_STATUS]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Attandance_SELECT_BY_ROLLNO_and_STATUS]
	
	@grNo as nvarchar(256),
	@status as nvarchar(256)
	
AS
BEGIN
	
	SELECT * FROM Tbl_Attandance where grNo = @grNo  and Status=@status
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_SELECT_BY_ROLLNO_month]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Attandance_SELECT_BY_ROLLNO_month]
	
	@grNo as nvarchar(256),
	@month as nvarchar(256)
	
AS
BEGIN
	
	SELECT * FROM Tbl_Attandance where grNo = @grNo and Date like @month
	
	--select CONVERT(nvarchar, EDate)  from Tbl_Attandance
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_SELECT_BYID]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Attandance_SELECT_BYID]
	
	@attandenceId AS INT
AS
BEGIN
	
	SELECT * FROM Tbl_Attandance WHERE attandenceId=@attandenceId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_SELECT_Report]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Attandance_SELECT_Report]
	
	@grNo as nvarchar(256),
	@date as nvarchar(500)
AS
BEGIN
	
	SELECT * FROM Tbl_Attandance where grNo like @grNo and Date=@date
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_UPDATE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Attandance_UPDATE]
	
	@attandenceId AS INT,
	@grNo AS NVARCHAR(256),
	@name AS NVARCHAR(256),
	@date AS datetime,
	@status as nvarchar(256),
	@staffname as nvarchar(256),
	@edate as datetime
AS
BEGIN
	
UPDATE Tbl_Attandance SET grNo=@grNo,name=@name,date=@date,status=@status,staffName=@staffname, editDate=GETDATE() WHERE attandenceId=@attandenceId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Class_INSERT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Class_INSERT]
	@className AS NVARCHAR(256),
	@departmentName AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO Tbl_Class values(@className, @departmentName, GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Class_SELECT_BYID]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Class_SELECT_BYID]
	
	@cId AS INT
AS
BEGIN
	
	SELECT * FROM Tbl_Class WHERE classID=@cId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_DELETE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Complaints_DELETE]
	
	@CID AS INT
AS
BEGIN
	
DELETE FROM Tbl_Complaints WHERE complainId=@CID
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_INSERT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_Tbl_Complaints_INSERT]
	
	@grno AS NVARCHAR(256),
	@name AS NVARCHAR(256),
	@subject AS Nvarchar(256),
	@message AS Nvarchar(256),
	@replay AS Nvarchar(256)
	
	
	
AS
BEGIN
	
	INSERT INTO Tbl_Complaints VALUES(@grno,@name,@subject,@message,@replay,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_SELECT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_Tbl_Complaints_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Complaints
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_SELECT_BY_ROLLNO]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Complaints_SELECT_BY_ROLLNO]
	
	@grNo as nvarchar(256)
	
	AS
BEGIN
	
	SELECT * FROM Tbl_Complaints WHERE grNo=@grNo
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_SELECT_BYID]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_Tbl_Complaints_SELECT_BYID]
	
	@CID AS INT
AS
BEGIN
	
	SELECT * FROM Tbl_Complaints WHERE complainId=@CID
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_SELECT_FOr_Teacher]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Complaints_SELECT_FOr_Teacher]
	@grno as nvarchar(200)
AS
BEGIN
	
	SELECT * FROM Tbl_Complaints where grNo like @grno order by complainId desc
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_UPDATE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Complaints_UPDATE]
	
	@complainId AS INT,
	@grno AS NVARCHAR(256),
	@name AS NVARCHAR(256),
	@subject AS Nvarchar(256),
	@message AS Nvarchar(256),
	@replay AS Nvarchar(256)
	
	
AS
BEGIN
	
UPDATE Tbl_Complaints SET grNo=@grno,name=@name,subject=@subject,message=@message,reply=@replay,editDate=GETDATE() where complainId=@complainId 
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_UPDATE_Reply]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Complaints_UPDATE_Reply]
	
	@complainId AS INT,
	@replay AS Nvarchar(256)
	
	
AS
BEGIN
	
UPDATE Tbl_Complaints SET reply=@replay,editdate=GETDATE() where complainId=@complainId 
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Department_DELETE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Department_DELETE]
	
	@dId AS INT
AS
BEGIN
	
DELETE FROM Tbl_Department WHERE departmentId=@dId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Department_INSERT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Department_INSERT]
	
	@departmentName AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO Tbl_Department VALUES(@departmentName,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Department_SELECT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Department_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Department
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Department_SELECT_BYID]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Department_SELECT_BYID]
	
	@dId AS INT
AS
BEGIN
	
	SELECT * FROM Tbl_Department WHERE departmentId=@dId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Department_UPDATE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Department_UPDATE]
	
	@dId AS INT,
	@SNAME AS NVARCHAR(256)
AS
BEGIN
	
UPDATE Tbl_Department SET departmentName=@SNAME, editDate=GETDATE() WHERE departmentId=@dId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Div_DELETE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Div_DELETE]
	
	@dId AS INT
AS
BEGIN
	
DELETE FROM Tbl_Div WHERE divId=@dId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Div_INSERT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Div_INSERT]
	
	@divName AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@seat AS INT
	
AS
BEGIN
	
	INSERT INTO Tbl_Div VALUES(@divName,@semName,@seat,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Div_SELECT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Div_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Div
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Div_SELECT_BY_semName]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Div_SELECT_BY_semName]
	@semName AS NVARCHAR(256)
AS
BEGIN
	
	SELECT * FROM Tbl_Div WHERE semName=@semName
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Div_SELECT_BYID]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Div_SELECT_BYID]
	
	@dId AS INT
AS
BEGIN
	
	SELECT * FROM Tbl_Div WHERE divId=@dId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Div_UPDATE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Div_UPDATE]
	
	@dId AS INT,
	@divName AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@seats AS INT
AS
BEGIN
	
UPDATE Tbl_Div SET divName=@divName, semName=@semName, seats=@seats, editDate=GETDATE() WHERE divId=@dId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Feedback_DELETE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Feedback_DELETE]
	
@feedBackId AS  INT
AS
BEGIN
	
DELETE FROM Tbl_Feedback WHERE feedBackId=@feedBackId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Feedback_INSERT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Feedback_INSERT]
	
	@EMAIL AS NVARCHAR(256),
	@MOB AS NVARCHAR(256),
	@FEED AS NVARCHAR(256)
AS
BEGIN
	
INSERT INTO Tbl_Feedback VALUES (@EMAIL,@MOB,@FEED,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Feedback_SELECT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Feedback_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Feedback
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_DELETE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Leave_DELETE]
	
	@lId AS INT
AS
BEGIN
	
DELETE FROM Tbl_Leave WHERE leaveId=@lId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_INSERT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Leave_INSERT]
	
	@grNo AS NVARCHAR(256),
	@name AS NVARCHAR(256),
	@div AS nvarchar(256),
	@classSemName AS nvarchar(256),
	@message AS nvarchar(256),	
	@nodays as int,
	@replay AS nvarchar(256)
AS
BEGIN
	
	INSERT INTO Tbl_Leave
           ([grNo]
           ,[name]
           ,[div]
           ,[classSemName]
           ,[message]
           ,[noDays]
           ,[reply]
           ,[editDate]) VALUES(@grNo,@name,@div,@classSemName,@message,@nodays,@replay,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_SELECT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Leave_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Leave
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_SELECT_BYID]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_Tbl_Leave_SELECT_BYID]
	
	@lId AS INT
AS
BEGIN
	
	SELECT * FROM Tbl_Leave WHERE leaveId=@lId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_SELECT_classSemNameAndDiv]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Leave_SELECT_classSemNameAndDiv]
	@semClass as nvarchar(256),
	@div as nvarchar(256)
AS
BEGIN
	
	SELECT * FROM Tbl_Leave where classSemName=@semClass and div=@div
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_SELECT_grno]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Leave_SELECT_grno]
	@grno as nvarchar(256)
AS
BEGIN
	
	SELECT * FROM Tbl_Leave where grNo=@grno
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_SELECT_STATUS]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Leave_SELECT_STATUS]
	@classSemName as nvarchar(256),
	@div as nvarchar(256),
	@status as nvarchar(256)
AS
BEGIN
	
	SELECT * FROM Tbl_Leave where classSemName=@classSemName and div=@div and reply=@status
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_UPDATE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Leave_UPDATE]
	
	@LID AS INT,
	@message as nvarchar(256),
	@noDays as int,
	@replay as nvarchar(256)
AS
BEGIN
	
UPDATE Tbl_Leave SET message=@message, noDays=@noDays, reply=@replay, editDate=GETDATE() WHERE leaveId=@LID
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_UPDATE_STATU]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Leave_UPDATE_STATU]
	
	@LID AS INT,	
	@replay as nvarchar(256)
AS
BEGIN
	
UPDATE Tbl_Leave SET reply=@replay, editDate=GETDATE() WHERE leaveId=@LID
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Sem_DELETE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Sem_DELETE]
	
	@sId AS INT
AS
BEGIN
	
DELETE FROM Tbl_Sem WHERE semId=@sId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Sem_INSERT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Sem_INSERT]
	
	@className AS NVARCHAR(256),
	@semName AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO Tbl_Sem VALUES(@semName, @className, GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Sem_SELECT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Sem_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Sem
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Sem_UPDATE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Sem_UPDATE]
	
	@sId AS INT,
	@semName AS NVARCHAR(256),
	@className AS NVARCHAR(256)
AS
BEGIN
	
UPDATE Tbl_Sem SET semName=@semName, className=@className, editDate=GETDATE() WHERE semId=@sId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_DELETE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_Tbl_Staff_DELETE]
	
	@sid AS INT
AS
BEGIN
	
DELETE FROM Tbl_Staff WHERE staffId=@sid
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_INSERT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Staff_INSERT]
	
	@fname as nvarchar(256),
	@mname as nvarchar(256),
	@lname as nvarchar(256),
	@mobile as nvarchar(256),
	@email as nvarchar(256),
	@username as nvarchar(256),
	@password as nvarchar(256),
	@did as nvarchar(256),
	@dname as nvarchar(256)
AS
BEGIN
	
	INSERT INTO [dbo].[Tbl_Staff] ([firstName],[middleName],[lastName],[mobile] ,[email] ,[username] ,[password] ,[departmentId] ,[departmentName]) VALUES (@fname, @mname, @lname, @mobile, @email, @username, @password, @did, @dname)
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_SELECT]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_Tbl_Staff_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Staff
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_SELECT_by_emial]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Staff_SELECT_by_emial]
	@email as nvarchar(256)
	
AS
BEGIN
	
	SELECT * FROM Tbl_Staff where email=@email
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_SELECT_by_uname]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Staff_SELECT_by_uname]
	@uname as nvarchar(256)
	
AS
BEGIN
	
	SELECT * FROM Tbl_Staff where username=@uname 
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_SELECT_BYID]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_Tbl_Staff_SELECT_BYID]
	
	@sid AS INT
AS
BEGIN
	
	SELECT * FROM Tbl_Staff WHERE staffId=@sid
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_SELECT_check_current_pass]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Staff_SELECT_check_current_pass]
	
	@pass as nvarchar(256),
	@uname as nvarchar(256)
	
AS
BEGIN
	
	select * from Tbl_Staff where password=@pass and username=@uname
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_SELECT_login]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Staff_SELECT_login]
	@uname as nvarchar(256),
	@pass as nvarchar(256)
AS
BEGIN
	
	SELECT * FROM Tbl_Staff where username=@uname and password=@pass
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_UPDATE]    Script Date: 15-09-2022 23:57:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Staff_UPDATE]
	
	@sid AS INT,
	@fname as nvarchar(256),
	@mname as nvarchar(256),
	@lname as nvarchar(256),
	@email as nvarchar(256),
	@mobile as nvarchar(256),
	@image as nvarchar(256),
	@pass as nvarchar(256)
	
	
AS
BEGIN
	
UPDATE Tbl_Staff SET firstName=@fname, middleName=@mname, lastName=@lname, mobile=@mobile, email=@email, password=@pass WHERE staffId=@sid
	
	
END
GO
USE [master]
GO
ALTER DATABASE [LSM] SET  READ_WRITE 
GO
