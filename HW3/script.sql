USE [University]
GO
/****** Object:  Table [dbo].[Available_Courses]    Script Date: 21-Apr-20 1:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Available_Courses](
	[CourseID] [int] NOT NULL,
	[Semester] [nvarchar](20) NULL,
	[Year] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TeacherID] [char](7) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 21-Apr-20 1:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[ID] [int] NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Credits] [int] NULL,
	[DepartmentID] [char](5) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 21-Apr-20 1:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departments](
	[Name] [varchar](22) NOT NULL,
	[ID] [char](5) NOT NULL,
	[Budget] [numeric](12, 2) NULL,
	[Category] [varchar](15) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prerequisites]    Script Date: 21-Apr-20 1:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prerequisites](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CourseId] [int] NULL,
	[PreqID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 21-Apr-20 1:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[FirstName] [varchar](22) NOT NULL,
	[LastName] [nchar](22) NOT NULL,
	[StudentNumber] [char](7) NOT NULL,
	[BirthYear] [int] NULL,
	[DepartmentID] [char](5) NULL,
	[AdvisorID] [char](7) NULL,
	[City] [char](10) NULL,
	[pass_Units] [int] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudentNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Taken_Courses]    Script Date: 21-Apr-20 1:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taken_Courses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [char](7) NULL,
	[CourseID] [int] NULL,
	[Semester] [nvarchar](20) NULL,
	[Year] [int] NULL,
	[Grade] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Teachers]    Script Date: 21-Apr-20 1:20:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teachers](
	[FirstName] [varchar](22) NOT NULL,
	[LastName] [varchar](22) NOT NULL,
	[ID] [char](7) NOT NULL,
	[BirthDay] [int] NULL,
	[DepartmentID] [char](5) NOT NULL,
	[Salary] [numeric](9, 2) NULL,
 CONSTRAINT [PK_Teachers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Available_Courses] ON 

INSERT [dbo].[Available_Courses] ([CourseID], [Semester], [Year], [ID], [TeacherID]) VALUES (50, N'fall', 2020, 1, N'1224503')
INSERT [dbo].[Available_Courses] ([CourseID], [Semester], [Year], [ID], [TeacherID]) VALUES (51, N'spring', 2020, 2, N'1224509')
SET IDENTITY_INSERT [dbo].[Available_Courses] OFF
INSERT [dbo].[Courses] ([ID], [Title], [Credits], [DepartmentID]) VALUES (50, N'Micro Processor', 3, N'22522')
INSERT [dbo].[Courses] ([ID], [Title], [Credits], [DepartmentID]) VALUES (51, N'Programming', 3, N'22522')
INSERT [dbo].[Courses] ([ID], [Title], [Credits], [DepartmentID]) VALUES (52, N'Database Laboratory', 3, N'22522')
INSERT [dbo].[Courses] ([ID], [Title], [Credits], [DepartmentID]) VALUES (53, N'Operating System', 3, N'22522')
INSERT [dbo].[Departments] ([Name], [ID], [Budget], [Category]) VALUES (N'Mathematics', N'22012', CAST(5275862020.00 AS Numeric(12, 2)), N'Science')
INSERT [dbo].[Departments] ([Name], [ID], [Budget], [Category]) VALUES (N'Chemistry', N'22025', CAST(3298652020.00 AS Numeric(12, 2)), N'Science')
INSERT [dbo].[Departments] ([Name], [ID], [Budget], [Category]) VALUES (N'Electrical', N'22522', CAST(1222222022.00 AS Numeric(12, 2)), N'Engineering')
INSERT [dbo].[Departments] ([Name], [ID], [Budget], [Category]) VALUES (N'Computer', N'22523', CAST(5232462020.00 AS Numeric(12, 2)), N'Engineering')
SET IDENTITY_INSERT [dbo].[Prerequisites] ON 

INSERT [dbo].[Prerequisites] ([ID], [CourseId], [PreqID]) VALUES (1, 50, NULL)
INSERT [dbo].[Prerequisites] ([ID], [CourseId], [PreqID]) VALUES (2, 51, NULL)
SET IDENTITY_INSERT [dbo].[Prerequisites] OFF
INSERT [dbo].[Students] ([FirstName], [LastName], [StudentNumber], [BirthYear], [DepartmentID], [AdvisorID], [City], [pass_Units]) VALUES (N'Ali', N'Hosseini              ', N'9219603', 1376, N'22025', N'1225039', N'Bushehr   ', NULL)
INSERT [dbo].[Students] ([FirstName], [LastName], [StudentNumber], [BirthYear], [DepartmentID], [AdvisorID], [City], [pass_Units]) VALUES (N'Ali', N'Khalili               ', N'9354698', 1376, N'22025', N'1225039', N'Shiraz    ', NULL)
INSERT [dbo].[Students] ([FirstName], [LastName], [StudentNumber], [BirthYear], [DepartmentID], [AdvisorID], [City], [pass_Units]) VALUES (N'Ali', N'Ahmadi                ', N'9423642', 1376, N'22523', N'1224509', N'Yazd      ', NULL)
INSERT [dbo].[Students] ([FirstName], [LastName], [StudentNumber], [BirthYear], [DepartmentID], [AdvisorID], [City], [pass_Units]) VALUES (N'Ali', N'Modiri                ', N'9542361', 1376, N'22522', N'1220985', N'Shiraz    ', NULL)
INSERT [dbo].[Students] ([FirstName], [LastName], [StudentNumber], [BirthYear], [DepartmentID], [AdvisorID], [City], [pass_Units]) VALUES (N'Ali', N'Jamali                ', N'9608097', 1376, N'22523', N'1224509', N'Tehran    ', NULL)
INSERT [dbo].[Students] ([FirstName], [LastName], [StudentNumber], [BirthYear], [DepartmentID], [AdvisorID], [City], [pass_Units]) VALUES (N'Ali', N'Mohammadi             ', N'9624897', 1376, N'22522', N'1224503', N'Tehran    ', NULL)
SET IDENTITY_INSERT [dbo].[Taken_Courses] ON 

INSERT [dbo].[Taken_Courses] ([ID], [StudentID], [CourseID], [Semester], [Year], [Grade]) VALUES (1, N'9624897', 50, N'fall', 2020, 3)
INSERT [dbo].[Taken_Courses] ([ID], [StudentID], [CourseID], [Semester], [Year], [Grade]) VALUES (2, N'9423642', 51, N'fall', 2020, 3)
INSERT [dbo].[Taken_Courses] ([ID], [StudentID], [CourseID], [Semester], [Year], [Grade]) VALUES (9, N'9219603', 51, N'spring', 2020, 3)
SET IDENTITY_INSERT [dbo].[Taken_Courses] OFF
INSERT [dbo].[Teachers] ([FirstName], [LastName], [ID], [BirthDay], [DepartmentID], [Salary]) VALUES (N'Fateme', N'MiriShamsi', N'1220985', 1898, N'22025', CAST(5228000.00 AS Numeric(9, 2)))
INSERT [dbo].[Teachers] ([FirstName], [LastName], [ID], [BirthDay], [DepartmentID], [Salary]) VALUES (N'Mehdi', N'Ahmadi', N'1224503', 1892, N'22522', CAST(8520000.00 AS Numeric(9, 2)))
INSERT [dbo].[Teachers] ([FirstName], [LastName], [ID], [BirthDay], [DepartmentID], [Salary]) VALUES (N'Ali', N'Rezaei', N'1224508', 1895, N'22012', CAST(8224500.00 AS Numeric(9, 2)))
INSERT [dbo].[Teachers] ([FirstName], [LastName], [ID], [BirthDay], [DepartmentID], [Salary]) VALUES (N'Mehdi', N'Salari', N'1224509', 1892, N'22523', CAST(9220000.00 AS Numeric(9, 2)))
INSERT [dbo].[Teachers] ([FirstName], [LastName], [ID], [BirthDay], [DepartmentID], [Salary]) VALUES (N'Ali', N'Mahdavi', N'1225039', 1802, N'22522', CAST(6580000.00 AS Numeric(9, 2)))
ALTER TABLE [dbo].[Teachers] ADD  CONSTRAINT [DF_Teachers_Salary]  DEFAULT ((12222022)) FOR [Salary]
GO
ALTER TABLE [dbo].[Available_Courses]  WITH CHECK ADD  CONSTRAINT [FK_Available_Courses_Teachers] FOREIGN KEY([TeacherID])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[Available_Courses] CHECK CONSTRAINT [FK_Available_Courses_Teachers]
GO
ALTER TABLE [dbo].[Courses]  WITH CHECK ADD  CONSTRAINT [FK_Course_Departments1] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Departments] ([ID])
GO
ALTER TABLE [dbo].[Courses] CHECK CONSTRAINT [FK_Course_Departments1]
GO
ALTER TABLE [dbo].[Prerequisites]  WITH CHECK ADD  CONSTRAINT [FK_Prerequisites_Courses] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[Prerequisites] CHECK CONSTRAINT [FK_Prerequisites_Courses]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Student_Teacher] FOREIGN KEY([AdvisorID])
REFERENCES [dbo].[Teachers] ([ID])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Student_Teacher]
GO
ALTER TABLE [dbo].[Taken_Courses]  WITH CHECK ADD  CONSTRAINT [FK_Taken_Courses_Courses] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Courses] ([ID])
GO
ALTER TABLE [dbo].[Taken_Courses] CHECK CONSTRAINT [FK_Taken_Courses_Courses]
GO
ALTER TABLE [dbo].[Taken_Courses]  WITH CHECK ADD  CONSTRAINT [FK_Taken_Courses_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Students] ([StudentNumber])
GO
ALTER TABLE [dbo].[Taken_Courses] CHECK CONSTRAINT [FK_Taken_Courses_Student]
GO
ALTER TABLE [dbo].[Available_Courses]  WITH CHECK ADD  CONSTRAINT [CK_Available_Courses] CHECK  (([Semester]='spring' OR [Semester]='fall'))
GO
ALTER TABLE [dbo].[Available_Courses] CHECK CONSTRAINT [CK_Available_Courses]
GO
ALTER TABLE [dbo].[Departments]  WITH CHECK ADD  CONSTRAINT [CK_Departments] CHECK  (([Category]='Science' OR [Category]='Engineering'))
GO
ALTER TABLE [dbo].[Departments] CHECK CONSTRAINT [CK_Departments]
GO
ALTER TABLE [dbo].[Taken_Courses]  WITH CHECK ADD  CONSTRAINT [CK_Taken_Courses] CHECK  (([Semester]='spring' OR [Semester]='fall'))
GO
ALTER TABLE [dbo].[Taken_Courses] CHECK CONSTRAINT [CK_Taken_Courses]
GO
