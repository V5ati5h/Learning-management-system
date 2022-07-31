USE [LSM]
GO
/****** Object:  Table [dbo].[Tbl_Admin]    Script Date: 31-07-2022 19:01:20 ******/
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
/****** Object:  Table [dbo].[Tbl_Depart]    Script Date: 31-07-2022 19:01:20 ******/
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
/****** Object:  Table [dbo].[Tbl_Faculty]    Script Date: 31-07-2022 19:01:20 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Admin]    Script Date: 31-07-2022 19:01:20 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Depart]    Script Date: 31-07-2022 19:01:20 ******/
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
/****** Object:  StoredProcedure [dbo].[usp_Faculty]    Script Date: 31-07-2022 19:01:20 ******/
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
