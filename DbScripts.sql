USE [AngularJSDB]
GO
/****** Object:  Table [dbo].[tblEmployees]    Script Date: 06/25/2018 22:23:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblEmployees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NULL,
	[Gender] [nvarchar](10) NULL,
	[Salary] [int] NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
