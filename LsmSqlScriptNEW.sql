USE [LSM]
GO
/****** Object:  Table [dbo].[Tbl_Admin]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Admin](
	[Uid] [int] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[editDate] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tbl_Admin] PRIMARY KEY CLUSTERED 
(
	[Uid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Assignment]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Assignment](
	[assignemtId] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[detail] [nvarchar](50) NULL,
	[files] [nvarchar](250) NULL,
	[submitionDate] [nvarchar](50) NULL,
	[givenOn] [nvarchar](50) NULL,
	[byStaff] [nvarchar](50) NULL,
	[divName] [nvarchar](50) NULL,
	[className] [nvarchar](50) NULL,
	[semName] [nvarchar](50) NULL,
	[departName] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Assignment] PRIMARY KEY CLUSTERED 
(
	[assignemtId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Attandance]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Attandance](
	[attandenceId] [int] IDENTITY(1,1) NOT NULL,
	[grNo] [nvarchar](50) NULL,
	[fName] [nvarchar](50) NULL,
	[mName] [nvarchar](50) NULL,
	[lName] [nvarchar](50) NULL,
	[divName] [nvarchar](50) NULL,
	[className] [nvarchar](50) NULL,
	[semName] [nvarchar](50) NULL,
	[departName] [nvarchar](50) NULL,
	[status] [nvarchar](50) NULL,
	[date] [nvarchar](50) NULL,
	[staffName] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Attandance] PRIMARY KEY CLUSTERED 
(
	[attandenceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Class]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Class](
	[classID] [int] IDENTITY(1,1) NOT NULL,
	[className] [nvarchar](50) NULL,
	[departName] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Class] PRIMARY KEY CLUSTERED 
(
	[classID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Complaints]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  Table [dbo].[Tbl_Contact]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Contact](
	[contactId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[message] [nvarchar](500) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Feedback] PRIMARY KEY CLUSTERED 
(
	[contactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Depart]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Depart](
	[departId] [int] IDENTITY(1,1) NOT NULL,
	[departName] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Depart] PRIMARY KEY CLUSTERED 
(
	[departId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Div]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Div](
	[divId] [int] IDENTITY(1,1) NOT NULL,
	[seats] [int] NULL,
	[divName] [char](1) NULL,
	[semName] [nvarchar](50) NULL,
	[className] [nvarchar](50) NULL,
	[departName] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Div] PRIMARY KEY CLUSTERED 
(
	[divId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Leave]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Leave](
	[leaveId] [int] IDENTITY(1,1) NOT NULL,
	[grNo] [nvarchar](50) NULL,
	[fName] [nvarchar](50) NULL,
	[mName] [nvarchar](50) NULL,
	[lName] [nvarchar](50) NULL,
	[divName] [char](1) NULL,
	[className] [nvarchar](50) NULL,
	[semName] [nvarchar](50) NULL,
	[departName] [nvarchar](50) NULL,
	[message] [nvarchar](500) NULL,
	[noDays] [nvarchar](50) NULL,
	[reply] [nvarchar](500) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Leave] PRIMARY KEY CLUSTERED 
(
	[leaveId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Notice]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Notice](
	[noticeID] [int] IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](50) NULL,
	[message] [nvarchar](50) NULL,
	[divName] [nvarchar](50) NULL,
	[className] [nvarchar](50) NULL,
	[semName] [nvarchar](50) NULL,
	[departName] [nvarchar](50) NULL,
	[byStaff] [nvarchar](50) NULL,
	[date] [nvarchar](50) NULL,
	[editDate] [date] NULL,
 CONSTRAINT [PK_Tbl_Notice] PRIMARY KEY CLUSTERED 
(
	[noticeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_SAssignment]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_SAssignment](
	[submitId] [int] IDENTITY(1,1) NOT NULL,
	[grNo] [nvarchar](50) NULL,
	[title] [nvarchar](50) NULL,
	[details] [nvarchar](50) NULL,
	[files] [nvarchar](50) NULL,
	[submitedOn] [nvarchar](50) NULL,
	[givenBy] [nvarchar](50) NULL,
	[reply] [nvarchar](50) NULL,
	[divName] [nvarchar](50) NULL,
	[className] [nvarchar](50) NULL,
	[semName] [nvarchar](50) NULL,
	[departName] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_SAssignment] PRIMARY KEY CLUSTERED 
(
	[submitId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Sem]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Sem](
	[semId] [int] IDENTITY(1,1) NOT NULL,
	[semName] [nvarchar](50) NULL,
	[className] [nvarchar](50) NULL,
	[departName] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_tbl_Sem] PRIMARY KEY CLUSTERED 
(
	[semId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Staff]    Script Date: 04-01-2023 00:27:02 ******/
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
	[departId] [int] NULL,
	[departName] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Tbl_Faculty] PRIMARY KEY CLUSTERED 
(
	[staffId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tbl_Student]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tbl_Student](
	[studentId] [int] IDENTITY(1,1) NOT NULL,
	[grNo] [nvarchar](50) NULL,
	[rollNo] [nvarchar](50) NULL,
	[image] [nvarchar](50) NULL,
	[firstName] [nvarchar](50) NULL,
	[middleName] [nvarchar](50) NULL,
	[lastName] [nvarchar](50) NULL,
	[divName] [nvarchar](50) NULL,
	[className] [nvarchar](50) NULL,
	[semName] [nvarchar](50) NULL,
	[departName] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[mobile] [nvarchar](50) NULL,
	[dateOfBirth] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[editDate] [datetime] NULL,
 CONSTRAINT [PK_Studentmst] PRIMARY KEY CLUSTERED 
(
	[studentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[usp_Admin_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Admin_INSERT]	
	@userName AS NVARCHAR(256),
	@password  AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO [dbo].[Tbl_Admin] VALUES (@userName, @password, GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Assignment_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Assignment_DELETE]

	@assignemtId AS INT
AS
BEGIN
	
	DELETE FROM Tbl_Assignment where assignemtId=@assignemtId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Assignment_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Assignment_INSERT]

	@title AS NVARCHAR(256),
	@details AS NVARCHAR(256),
	@file AS NVARCHAR(256),
	@endDate AS NVARCHAR(256),
	@assignDate AS NVARCHAR(256),
	@staffName AS NVARCHAR(256),
	@divName AS NVARCHAR(256),
	@className AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@departName AS NVARCHAR(256)
	
AS
BEGIN
	
	INSERT INTO Tbl_Assignment VALUES(@title,@details,@file,@endDate,@assignDate,@staffName,@divName,@className,@semName,@departName,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Assignment_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Assignment_SELECT]

	@assignemtId AS INT
AS
BEGIN
	
	Select * FROM Tbl_Assignment
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Assignment_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Assignment_UPDATE]

	@assignemtId AS INT,
	@title AS NVARCHAR(256),
	@details AS NVARCHAR(256),
	@file AS NVARCHAR(256),
	@endDate AS NVARCHAR(256),
	@assignDate AS NVARCHAR(256),
	@staffName AS NVARCHAR(256),
	@divName AS NVARCHAR(256),
	@className AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@departName AS NVARCHAR(256)
	
AS
BEGIN
	
	update Tbl_Assignment set title=@title,detail=@details,files=@file,submitionDate=@endDate,givenOn=@assignDate,byStaff=@staffName,divName=@divName,className=@className,semName=@semName,departName=@departName,editDate=GETDATE() where assignemtId=@assignemtId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Attandance_INSERT]

	@grNo AS NVARCHAR(256),
	@fname AS NVARCHAR(256),
	@mname AS NVARCHAR(256),
	@lname AS NVARCHAR(256),
	@divName AS NVARCHAR(256),
	@className AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@departName AS NVARCHAR(256),
	@status as nvarchar(256),
	@date AS nvarchar(500),
	@staffname as nvarchar(256)
	
AS
BEGIN
	
	INSERT INTO Tbl_Attandance VALUES(@grNo,@fname,@mname,@lname,@divName,@className,@semName,@departName,@status,@date,@staffname,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Attandance_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Attandance_UPDATE]
	
	@attandenceId AS INT,
	@grNo AS NVARCHAR(256),
	@fname AS NVARCHAR(256),
	@mname AS NVARCHAR(256),
	@lname AS NVARCHAR(256),
	@divName AS NVARCHAR(256),
	@className AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@departName AS NVARCHAR(256),
	@status as nvarchar(256),
	@date AS nvarchar(500),
	@staffname as nvarchar(256)
AS
BEGIN
UPDATE Tbl_Attandance SET grNo=@grNo,fName=@fname,mName=@mname,lName=@lname,divName=@divName,className=@className,semName=@semName,departName=@departName,status=@status,date=@date,staffname=@staffname,editDate=GETDATE() WHERE attandenceId=@attandenceId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Class_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Class_DELETE]
	@classId AS INT
AS
BEGIN
	
	DELETE FROM Tbl_Class WHERE classID=@classId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Class_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_Class_INSERT]
	@className AS NVARCHAR(256),
	@departName AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO Tbl_Class values(@className, @departName, GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Class_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Class_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Class
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Class_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Class_UPDATE]
	
	@classID AS INT,
	@className AS NVARCHAR(256),
	@departName AS NVARCHAR(256)
AS
BEGIN
	
UPDATE Tbl_Class SET className=@className, departName=@departName, editDate=GETDATE() WHERE classID=@classID
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Complaints_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Contact_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Contact_DELETE]
	
@contactId AS  INT
AS
BEGIN
	
DELETE FROM Tbl_Contact WHERE contactId=@contactId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Contact_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Contact_INSERT]
	
	@name AS NVARCHAR(256),
	@email AS NVARCHAR(256),
	@mob AS NVARCHAR(256),
	@msg AS NVARCHAR(256)
AS
BEGIN
	
INSERT INTO Tbl_Contact VALUES (@name,@email,@mob,@msg,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Contact_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Contact_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Contact
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Depart_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Depart_DELETE]
	
	@dId AS INT
AS
BEGIN
	
DELETE FROM Tbl_Depart WHERE departId=@dId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Depart_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Depart_INSERT]
	
	@departName AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO Tbl_Depart VALUES(@departName,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Depart_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Depart_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Depart
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Depart_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Depart_UPDATE]
	
	@dId AS INT,
	@departName AS NVARCHAR(256)
AS
BEGIN
	
UPDATE Tbl_Depart SET departName=@departName, editDate=GETDATE() WHERE departId=@dId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Div_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Div_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Div_INSERT]
	
	
	@seat AS INT,
	@divName AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@className AS NVARCHAR(256),
	@departName AS NVARCHAR(256)
	
AS
BEGIN
	
	INSERT INTO Tbl_Div VALUES(@seat,@divName,@semName,@className,@departName,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Div_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Div_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Div_UPDATE]
	
	@dId AS INT,
	@seat AS INT,
	@divName AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@className AS NVARCHAR(256),
	@departName AS NVARCHAR(256)
AS
BEGIN
	
UPDATE Tbl_Div SET seats=@seat,divName=@divName,semName=@semName,className=@className,departName=@departName, editDate=GETDATE() WHERE divId=@dId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Leave_INSERT]
	
	@grNo AS NVARCHAR(256),
	@fName AS NVARCHAR(256),
	@mName AS NVARCHAR(256),
	@lName AS NVARCHAR(256),
	@divName AS nvarchar(256),
	@className AS nvarchar(256),
	@semName AS nvarchar(256),
	@departName AS nvarchar(256),
	@message AS nvarchar(256),	
	@nodays as int,
	@replay AS nvarchar(256)
AS
BEGIN
	
	INSERT INTO Tbl_Leave VALUES(@grNo,@fName,@mName,@lName,@divName,@className,@semName,@departName,@message,@nodays,@replay,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Leave_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Leave_UPDATE]
	
	@lId AS INT,
	@grno AS NVARCHAR(256),
	@fname  AS NVARCHAR(256),
	@mname  AS NVARCHAR(256),
	@lname  AS NVARCHAR(256),
	@divname  AS NVARCHAR(256),
	@classname  AS NVARCHAR(256),
	@semname  AS NVARCHAR(256),
	@departname  AS NVARCHAR(256),
	@message as nvarchar(256),
	@nodays as nvarchar(256),
	@replay as nvarchar(256)
AS
BEGIN
	
UPDATE Tbl_Leave SET grNo=@grno,fName=@fname,mName=@mname,lName=@lname,divName=@divname,className=@classname,semName=@semname,departName=@departname,message=@message,noDays=@nodays,reply=@replay,editDate=GETDATE() WHERE leaveId=@lId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Notice_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Notice_DELETE]

	@noticeID AS INT
	
AS
BEGIN
	
	DELETE FROM Tbl_Notice where noticeID=@noticeID
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Notice_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Notice_INSERT]

	@title AS NVARCHAR(256),
	@msg AS NVARCHAR(256),
	@divName AS NVARCHAR(256),
	@className AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@departName AS NVARCHAR(256),
	@byStaff AS NVARCHAR(256),
	@date AS NVARCHAR(256)
	
AS
BEGIN
	
	INSERT INTO Tbl_Notice VALUES(@title,@msg,@divName,@className,@semName,@departName, @byStaff, @date,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Notice_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Notice_SELECT]

	@noticeID AS INT
	
AS
BEGIN
	
	SELECT * FROM Tbl_Notice
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Notice_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Notice_UPDATE]

	@noticeID AS INT,
	@title AS NVARCHAR(256),
	@msg AS NVARCHAR(256),
	@divName AS NVARCHAR(256),
	@className AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@departName AS NVARCHAR(256),
	@byStaff AS NVARCHAR(256),
	@date AS NVARCHAR(256)
	
AS
BEGIN
	
	UPDATE Tbl_Notice SET title=@title,message=@msg,divName=@divName,className=@className,semName=@semName,departName=@departName,byStaff=@byStaff, date=@date, editDate=GETDATE() where noticeID=@noticeID
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_SAssignment_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_SAssignment_DELETE]

	@submitId AS INT
AS
BEGIN
	
	DELETE FROM Tbl_SAssignment where submitId=@submitId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_SAssignment_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_SAssignment_INSERT]

	@gr as NVARCHAR(256),
	@title AS NVARCHAR(256),
	@details AS NVARCHAR(256),
	@file AS NVARCHAR(256),
	@givenBy AS NVARCHAR(256),
	@reply AS NVARCHAR(256),
	@divName AS NVARCHAR(256),
	@className AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@departName AS NVARCHAR(256)
	
AS
BEGIN
	
	INSERT INTO Tbl_SAssignment VALUES(@gr,@title,@details,@file,GETDATE(),@givenBy,@reply,@divName,@className,@semName,@departName,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_SAssignment_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[usp_Tbl_SAssignment_SELECT]

	@submitId AS INT
AS
BEGIN
	
	Select * FROM Tbl_SAssignment where submitId = @submitId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_SAssignment_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_SAssignment_UPDATE]

	@submitId AS INT,
	@gr as NVARCHAR(256),
	@title AS NVARCHAR(256),
	@details AS NVARCHAR(256),
	@file AS NVARCHAR(256),
	@submitedOn AS NVARCHAR(256),
	@givenBy AS NVARCHAR(256),
	@reply AS NVARCHAR(256),
	@divName AS NVARCHAR(256),
	@className AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@departName AS NVARCHAR(256)
	
AS
BEGIN
	
	update Tbl_SAssignment set grNo=@gr,title=@title,details=@details,files=@file,submitedOn=@submitedOn,givenBy=@givenBy,reply=@reply,divName=@divName,className=@className,semName=@semName,departName=@departName,editDate=GETDATE() where submitId=@submitId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Sem_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Sem_DELETE]
	
	@semId AS INT
AS
BEGIN
	
DELETE FROM Tbl_Sem WHERE semId=@semId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Sem_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Sem_INSERT]
	
	@className AS NVARCHAR(256),
	@semName AS NVARCHAR(256),
	@departName AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO Tbl_Sem VALUES(@semName, @className,@departName, GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Sem_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Sem_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Sem_UPDATE]
	
	@semId AS INT,
	@semName AS NVARCHAR(256),
	@className AS NVARCHAR(256),
	@departName AS NVARCHAR(256)
AS
BEGIN
	
UPDATE Tbl_Sem SET semName=@semName,className=@className,departName=@departNAme, editDate=GETDATE() WHERE semId=@semId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
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
	
	INSERT INTO [dbo].[Tbl_Staff] ([firstName],[middleName],[lastName],[mobile] ,[email] ,[username] ,[password] ,[departId] ,[departName],[editDate]) VALUES (@fname, @mname, @lname, @mobile, @email, @username, @password, @did, @dname,GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Staff_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Staff_UPDATE]
	
	@sId AS INT,
	@fName as nvarchar(256),
	@mName as nvarchar(256),
	@lName as nvarchar(256),
	@mobile as nvarchar(256),
	@email as nvarchar(256),
	@userName as nvarchar(256),
	@pass as nvarchar(256),
	@dId as nvarchar(256),
	@departName as nvarchar(256)
	
	
AS
BEGIN
	
UPDATE Tbl_Staff SET firstName=@fName,middleName=@mName,lastName=@lName,mobile=@mobile,email=@email,username=@userName,password=@pass,departId=@dId,departName=@departName,editDate=GETDATE() WHERE staffId=@sId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Student_DELETE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Student_DELETE]
	@studentId as int,
	@grno AS NVARCHAR(256)
AS
BEGIN
	
DELETE FROM Tbl_Student WHERE grNo=@grno and studentId = @studentId
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Student_INSERT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Student_INSERT]
	
	@grNo AS NVARCHAR(256),
	@rollNo  AS NVARCHAR(256),
	@image  AS NVARCHAR(256),
	@fName  AS NVARCHAR(256),
	@mName  AS NVARCHAR(256),
	@lName  AS NVARCHAR(256),
	@divName  AS NVARCHAR(256),
	@className  AS NVARCHAR(256),
	@semName  AS NVARCHAR(256),
	@departName  AS NVARCHAR(256),
	@email  AS NVARCHAR(256),
	@mobile AS NVARCHAR(256),
	@dob AS NVARCHAR(500),
	@uname AS NVARCHAR(256),
	@pass AS NVARCHAR(256)
AS
BEGIN
	
	INSERT INTO [dbo].[Tbl_Student] VALUES
	(@grNo, @rollNo, @image, @fName, @mName, @lName, @divName, @className, @semName, @departName, @email, @mobile, @dob, @uname, @pass, GETDATE())
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Student_SELECT]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[usp_Tbl_Student_SELECT]
	
AS
BEGIN
	
	SELECT * FROM Tbl_Student
	
	
END
GO
/****** Object:  StoredProcedure [dbo].[usp_Tbl_Student_UPDATE]    Script Date: 04-01-2023 00:27:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[usp_Tbl_Student_UPDATE]
	
	@studentId AS int,
	@grNo AS NVARCHAR(256),
	@rollNo  AS NVARCHAR(256),
	@image AS NVARCHAR(256),
	@fName  AS NVARCHAR(256),
	@mName  AS NVARCHAR(256),
	@lName  AS NVARCHAR(256),
	@divName  AS NVARCHAR(256),
	@className  AS NVARCHAR(256),
	@semName  AS NVARCHAR(256),
	@departName  AS NVARCHAR(256),
	@email  AS NVARCHAR(256),
	@mobile AS NVARCHAR(256),
	@dob AS NVARCHAR(500),
	@uname AS NVARCHAR(256),
	@pass AS NVARCHAR(256)
AS
BEGIN
	
UPDATE Tbl_Student SET grNo=@grNo,rollNo=@rollNo, image=@image,firstName=@fname, middleName=@mname, lastName=@lname, departName=@departname, semName=@semname, className=@classname, divName=@divName, email=@email, mobile=@mobile, dateOfBirth=@dob, username=@uname, password=@pass,editDate=GETDATE() WHERE studentId=@studentId
	
	
END
GO
