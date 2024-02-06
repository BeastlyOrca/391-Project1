USE [CMPT391_1]
GO
/****** Object:  Table [dbo].[Classroom]    Script Date: 2024-01-31 12:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Classroom](
	[classroomID] [nchar](10) NOT NULL,
	[capacity] [numeric](3, 0) NOT NULL,
 CONSTRAINT [PK_Classroom_1] PRIMARY KEY CLUSTERED 
(
	[classroomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2024-01-31 12:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[courseID] [nchar](10) NOT NULL,
	[courseName] [nchar](30) NULL,
	[credits] [int] NULL,
	[departmentID] [nchar](10) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2024-01-31 12:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[departmentID] [nchar](10) NOT NULL,
	[departmentName] [char](50) NULL,
	[departmentHead] [int] NULL,
 CONSTRAINT [PK__Departme__F9B8344D20663C23] PRIMARY KEY CLUSTERED 
(
	[departmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 2024-01-31 12:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[instructorID] [nchar](10) NOT NULL,
	[firstName] [char](20) NULL,
	[lastName] [char](20) NULL,
	[departmentID] [nchar](10) NULL,
 CONSTRAINT [PK__Instruct__0031FA243E7B346C] PRIMARY KEY CLUSTERED 
(
	[instructorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Prereq]    Script Date: 2024-01-31 12:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Prereq](
	[courseID] [nchar](10) NOT NULL,
	[prereqID] [nchar](10) NULL,
 CONSTRAINT [PK_Prereq] PRIMARY KEY CLUSTERED 
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 2024-01-31 12:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[sectionID] [nchar](4) NOT NULL,
	[sectionName] [nchar](10) NOT NULL,
	[sectionType] [nchar](10) NOT NULL,
	[sectionSize] [nchar](10) NOT NULL,
	[semester] [nchar](10) NOT NULL,
	[year] [numeric](4, 0) NOT NULL,
	[enrolled] [numeric](3, 0) NOT NULL,
	[instructorID] [nchar](10) NOT NULL,
	[courseID] [nchar](10) NOT NULL,
	[classroomID] [nchar](10) NOT NULL,
	[size] [nchar](10) NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[sectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SectionTimeSlot]    Script Date: 2024-01-31 12:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SectionTimeSlot](
	[sectionID] [nchar](4) NOT NULL,
	[timeSlotID] [nchar](10) NOT NULL,
 CONSTRAINT [PK_SectionTimeSlot] PRIMARY KEY CLUSTERED 
(
	[timeSlotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2024-01-31 12:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[studentID] [int] NOT NULL,
	[firstName] [varchar](50) NULL,
	[lastName] [varchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[studentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Takes]    Script Date: 2024-01-31 12:38:21 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Takes](
	[studentID] [int] NOT NULL,
	[sectionID] [nchar](4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 2024-01-31 12:38:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[timeSlotID] [nchar](10) NOT NULL,
	[day] [nchar](10) NULL,
	[startTime] [nchar](10) NULL,
	[endTime] [nchar](10) NULL,
 CONSTRAINT [PK_TimeSlot] PRIMARY KEY CLUSTERED 
(
	[timeSlotID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Department] FOREIGN KEY([departmentID])
REFERENCES [dbo].[Department] ([departmentID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Department]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Prereq] FOREIGN KEY([courseID])
REFERENCES [dbo].[Prereq] ([courseID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Prereq]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Department] FOREIGN KEY([instructorID])
REFERENCES [dbo].[Department] ([departmentID])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_Department]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [FK_Instructor_Department1] FOREIGN KEY([departmentID])
REFERENCES [dbo].[Department] ([departmentID])
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [FK_Instructor_Department1]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Classroom] FOREIGN KEY([classroomID])
REFERENCES [dbo].[Classroom] ([classroomID])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Classroom]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Course] FOREIGN KEY([courseID])
REFERENCES [dbo].[Course] ([courseID])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Course]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [FK_Section_Instructor] FOREIGN KEY([instructorID])
REFERENCES [dbo].[Instructor] ([instructorID])
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [FK_Section_Instructor]
GO
ALTER TABLE [dbo].[SectionTimeSlot]  WITH CHECK ADD  CONSTRAINT [FK_SectionTimeSlot_Section] FOREIGN KEY([sectionID])
REFERENCES [dbo].[Section] ([sectionID])
GO
ALTER TABLE [dbo].[SectionTimeSlot] CHECK CONSTRAINT [FK_SectionTimeSlot_Section]
GO
ALTER TABLE [dbo].[SectionTimeSlot]  WITH CHECK ADD  CONSTRAINT [FK_SectionTimeSlot_TimeSlot] FOREIGN KEY([timeSlotID])
REFERENCES [dbo].[TimeSlot] ([timeSlotID])
GO
ALTER TABLE [dbo].[SectionTimeSlot] CHECK CONSTRAINT [FK_SectionTimeSlot_TimeSlot]
GO
ALTER TABLE [dbo].[Takes]  WITH CHECK ADD  CONSTRAINT [FK_Takes_Section] FOREIGN KEY([sectionID])
REFERENCES [dbo].[Section] ([sectionID])
GO
ALTER TABLE [dbo].[Takes] CHECK CONSTRAINT [FK_Takes_Section]
GO
ALTER TABLE [dbo].[Takes]  WITH CHECK ADD  CONSTRAINT [FK_Takes_Student] FOREIGN KEY([studentID])
REFERENCES [dbo].[Student] ([studentID])
GO
ALTER TABLE [dbo].[Takes] CHECK CONSTRAINT [FK_Takes_Student]
GO
ALTER TABLE [dbo].[Classroom]  WITH CHECK ADD  CONSTRAINT [CK_Classroom_classroom_NonNegative] CHECK  (([capacity]>(0)))
GO
ALTER TABLE [dbo].[Classroom] CHECK CONSTRAINT [CK_Classroom_classroom_NonNegative]
GO
ALTER TABLE [dbo].[Section]  WITH CHECK ADD  CONSTRAINT [CK_Section_sectionID_NonNegative] CHECK  (([sectionID]>(0)))
GO
ALTER TABLE [dbo].[Section] CHECK CONSTRAINT [CK_Section_sectionID_NonNegative]
GO
USE [master]
GO
ALTER DATABASE [CMPT391_1] SET  READ_WRITE 
GO
