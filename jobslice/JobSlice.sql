USE [master]
GO
/****** Object:  Database [JobSlice]    Script Date: 07/21/2014 21:00:39 ******/
CREATE DATABASE [JobSlice] ON  PRIMARY 
( NAME = N'JobSlice', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\JobSlice.mdf' , SIZE = 6400KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JobSlice_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\JobSlice_log.LDF' , SIZE = 3840KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JobSlice] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JobSlice].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JobSlice] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [JobSlice] SET ANSI_NULLS OFF
GO
ALTER DATABASE [JobSlice] SET ANSI_PADDING OFF
GO
ALTER DATABASE [JobSlice] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [JobSlice] SET ARITHABORT OFF
GO
ALTER DATABASE [JobSlice] SET AUTO_CLOSE ON
GO
ALTER DATABASE [JobSlice] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [JobSlice] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [JobSlice] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [JobSlice] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [JobSlice] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [JobSlice] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [JobSlice] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [JobSlice] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [JobSlice] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [JobSlice] SET  ENABLE_BROKER
GO
ALTER DATABASE [JobSlice] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [JobSlice] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [JobSlice] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [JobSlice] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [JobSlice] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [JobSlice] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [JobSlice] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [JobSlice] SET  READ_WRITE
GO
ALTER DATABASE [JobSlice] SET RECOVERY SIMPLE
GO
ALTER DATABASE [JobSlice] SET  MULTI_USER
GO
ALTER DATABASE [JobSlice] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [JobSlice] SET DB_CHAINING OFF
GO
USE [JobSlice]
GO
/****** Object:  Table [dbo].[Skill]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Skill] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalaryRateCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalaryRateCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.SalaryRateCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTeamCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTeamCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobTeamCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaskStatusCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaskStatusCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.TaskStatusCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.UserRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.DocumentCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currency]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currency](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](16) NULL,
	[Symbol] [nvarchar](2) NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Currency] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](16) NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Country] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CitizenshipStatusCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CitizenshipStatusCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CitizenshipStatusCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareerLevel]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareerLevel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CareerLevel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateSource]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateSource](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateSource] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobStatusCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobStatusCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobStatusCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobPositionType]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobPositionType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobPositionType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobCandidateHireStatusCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobCandidateHireStatusCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobCandidateHireStatusCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.FeedbackCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatingScaleCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingScaleCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Score] [float] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.RatingScaleCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndustryCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndustryCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.IndustryCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Gender] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FunctionalCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FunctionalCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.FunctionalCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyStatusCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyStatusCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CompanyStatusCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanySourceCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanySourceCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CompanySourceCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmploymentCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmploymentCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.EmploymentCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailTemplateCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailTemplateCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
	[IsSystem] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.EmailTemplateCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationCertificationLicenseInstitute]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationCertificationLicenseInstitute](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.EducationCertificationLicenseInstitute] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationCertificationLicenseCategory]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationCertificationLicenseCategory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.EducationCertificationLicenseCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EducationCertificationLicense]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EducationCertificationLicense](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EducationCertificationLicenseCategoryID] [int] NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.EducationCertificationLicense] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EducationCertificationLicenseCategoryID] ON [dbo].[EducationCertificationLicense] 
(
	[EducationCertificationLicenseCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[State]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NOT NULL,
	[Code] [nvarchar](16) NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.State] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CountryID] ON [dbo].[State] 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CountryID] [int] NULL,
	[StateID] [int] NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.City] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CountryID] ON [dbo].[City] 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_StateID] ON [dbo].[City] 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](256) NOT NULL,
	[LastName] [nvarchar](256) NOT NULL,
	[EmailAddress] [nvarchar](256) NOT NULL,
	[Password] [nvarchar](100) NOT NULL,
	[ZipCode] [nvarchar](16) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Address] [nvarchar](256) NULL,
	[CityName] [nvarchar](128) NULL,
	[CityID] [int] NULL,
	[CountryID] [int] NULL,
	[StateID] [int] NULL,
	[RatingScaleCategoryID] [int] NULL,
	[GenderID] [int] NULL,
	[Phone] [nvarchar](16) NULL,
	[Photo] [varbinary](max) NULL,
	[PhotoFileName] [nvarchar](256) NULL,
	[PhotoFileSize] [bigint] NULL,
	[UserRoleID] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedByUserID] [int] NULL,
	[LastLoginDate] [datetime] NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CityID] ON [dbo].[User] 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CountryID] ON [dbo].[User] 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[User] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_GenderID] ON [dbo].[User] 
(
	[GenderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RatingScaleCategoryID] ON [dbo].[User] 
(
	[RatingScaleCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_StateID] ON [dbo].[User] 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserRoleID] ON [dbo].[User] 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserExternalLogin]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserExternalLogin](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ProviderName] [nvarchar](32) NOT NULL,
	[ProviderUserID] [nvarchar](128) NOT NULL,
	[ProviderUserName] [nvarchar](128) NULL,
	[ProviderUserLink] [nvarchar](128) NULL,
	[UserID] [int] NOT NULL,
	[LastLoginDate] [datetime] NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.UserExternalLogin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[UserExternalLogin] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[UserExternalLogin] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[UserExternalLogin] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FeedbackCategoryID] [int] NOT NULL,
	[Title] [nvarchar](128) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Attachment] [varbinary](max) NULL,
	[AttachmentFileName] [nvarchar](256) NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
	[FeedbackFromName] [nvarchar](128) NOT NULL,
	[FeedbackFromEmailAddress] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.Feedback] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[Feedback] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FeedbackCategoryID] ON [dbo].[Feedback] 
(
	[FeedbackCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[Feedback] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobLabel]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobLabel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedByUserID] [int] NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobLabel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[JobLabel] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobSearchParameter]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSearchParameter](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Keyword] [nvarchar](max) NULL,
	[SkillNames] [nvarchar](max) NULL,
	[SkillIDs] [nvarchar](max) NULL,
	[StateNames] [nvarchar](max) NULL,
	[StateIDs] [nvarchar](max) NULL,
	[CityNames] [nvarchar](max) NULL,
	[CityIDs] [nvarchar](max) NULL,
	[JobTitle] [nvarchar](max) NULL,
	[JobTitleIDs] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[CompanyIDs] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[ZipCodeDistance] [float] NULL,
	[IsDefault] [bit] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobSearchParameter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[JobSearchParameter] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[JobSearchParameter] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SMTPConfiguration]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMTPConfiguration](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[SMTPDeliveryFormat] [int] NOT NULL,
	[SMTPDeliveryMethod] [int] NOT NULL,
	[FromEmailAddress] [nvarchar](128) NOT NULL,
	[HostName] [nvarchar](128) NOT NULL,
	[IsDefaultCredentials] [bit] NOT NULL,
	[ClientDomain] [nvarchar](128) NULL,
	[TargetName] [nvarchar](128) NULL,
	[UserName] [nvarchar](128) NOT NULL,
	[Password] [nvarchar](32) NOT NULL,
	[Port] [smallint] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
	[IsEnableSsl] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.SMTPConfiguration] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[SMTPConfiguration] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[SMTPConfiguration] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[SMTPConfiguration] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Position]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Position](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[JobDescription] [nvarchar](max) NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Position] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[Position] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[Position] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmailTemplate]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmailTemplate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmailTemplateCategoryID] [int] NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[EmailSubject] [nvarchar](256) NOT NULL,
	[EmailBody] [nvarchar](max) NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.EmailTemplate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[EmailTemplate] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EmailTemplateCategoryID] ON [dbo].[EmailTemplate] 
(
	[EmailTemplateCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[EmailTemplate] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyContactGroup]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyContactGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Sequence] [int] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CompanyContactGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CompanyContactGroup] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CompanyContactGroup] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanySearchParameter]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanySearchParameter](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Keyword] [nvarchar](max) NULL,
	[CompanyNames] [nvarchar](max) NULL,
	[CompanyIDs] [nvarchar](max) NULL,
	[CityNames] [nvarchar](max) NULL,
	[CityIDs] [nvarchar](max) NULL,
	[StateNames] [nvarchar](max) NULL,
	[StateIDs] [nvarchar](max) NULL,
	[IndustryCategoryNames] [nvarchar](max) NULL,
	[IndustryCategoryIDs] [nvarchar](max) NULL,
	[CompanySourceCategoryNames] [nvarchar](max) NULL,
	[CompanySourceCategoryIDs] [nvarchar](max) NULL,
	[CompanyStatusCategoryNames] [nvarchar](max) NULL,
	[CompanyStatusCategoryIDs] [nvarchar](max) NULL,
	[CompanyTagNames] [nvarchar](max) NULL,
	[CompanyTagIDs] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[ZipCodeDistance] [float] NULL,
	[IsDefault] [bit] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CompanySearchParameter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CompanySearchParameter] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CompanySearchParameter] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateSearchParameter]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateSearchParameter](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Keyword] [nvarchar](max) NULL,
	[SkillNames] [nvarchar](max) NULL,
	[SkillIDs] [nvarchar](max) NULL,
	[StateNames] [nvarchar](max) NULL,
	[StateIDs] [nvarchar](max) NULL,
	[CityNames] [nvarchar](max) NULL,
	[CityIDs] [nvarchar](max) NULL,
	[JobTitle] [nvarchar](max) NULL,
	[JobTitleIDs] [nvarchar](max) NULL,
	[Company] [nvarchar](max) NULL,
	[CompanyIDs] [nvarchar](max) NULL,
	[Education] [nvarchar](max) NULL,
	[EducationIDs] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](max) NULL,
	[ZipCodeDistance] [float] NULL,
	[IsDefault] [bit] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateSearchParameter] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CandidateSearchParameter] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CandidateSearchParameter] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateGroup]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateGroup](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Sequence] [int] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateGroup] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CandidateGroup] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CandidateGroup] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateLabel]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateLabel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CreatedByUserID] [int] NULL,
	[Name] [nvarchar](128) NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateLabel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CandidateLabel] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Company]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[DisplayId] [nvarchar](64) NULL,
	[IndustryCategoryID] [int] NULL,
	[ZipCode] [nvarchar](32) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Address1] [nvarchar](256) NULL,
	[Address2] [nvarchar](256) NULL,
	[CityName] [nvarchar](128) NULL,
	[CityID] [int] NULL,
	[CountryID] [int] NULL,
	[StateID] [int] NULL,
	[MainOfficePhone] [nvarchar](64) NULL,
	[EmailAddress] [nvarchar](128) NULL,
	[WebAddress] [nvarchar](256) NULL,
	[TaxNumber] [nvarchar](32) NULL,
	[DunsNumber] [nvarchar](32) NULL,
	[AboutTheCompany] [nvarchar](max) NULL,
	[Logo] [varbinary](max) NULL,
	[LogoFileName] [nvarchar](256) NULL,
	[CompanyRatingCategoryID] [int] NULL,
	[InternalRemarks] [nvarchar](max) NULL,
	[CompanyStatusCategoryID] [int] NULL,
	[CompanySourceCategoryID] [int] NOT NULL,
	[SocialLinkedIn] [nvarchar](256) NULL,
	[SocialFacebook] [nvarchar](256) NULL,
	[SocialTwitter] [nvarchar](256) NULL,
	[IsVerified] [bit] NOT NULL,
	[VerifiedByUserID] [int] NULL,
	[VerificationNotes] [nvarchar](512) NULL,
	[VerificationDate] [datetime] NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Company] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CityID] ON [dbo].[Company] 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyRatingCategoryID] ON [dbo].[Company] 
(
	[CompanyRatingCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanySourceCategoryID] ON [dbo].[Company] 
(
	[CompanySourceCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyStatusCategoryID] ON [dbo].[Company] 
(
	[CompanyStatusCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CountryID] ON [dbo].[Company] 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[Company] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_IndustryCategoryID] ON [dbo].[Company] 
(
	[IndustryCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[Company] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_StateID] ON [dbo].[Company] 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_VerifiedByUserID] ON [dbo].[Company] 
(
	[VerifiedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareerPageSetting]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CareerPageSetting](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[HeaderHtml] [nvarchar](max) NULL,
	[FooterHtml] [nvarchar](max) NULL,
	[CustomCss] [nvarchar](max) NULL,
	[JobListingTitlePrimary] [nvarchar](max) NULL,
	[JobListingTitleSecondary] [nvarchar](max) NULL,
	[FontColor] [nvarchar](16) NULL,
	[BackgroundColor] [nvarchar](16) NULL,
	[TableHeaderBackgroundColor] [nvarchar](16) NULL,
	[TableHeaderFontColor] [nvarchar](16) NULL,
	[SelectedRowBackgroundColor] [nvarchar](16) NULL,
	[EvenRowBackgroundColor] [nvarchar](16) NULL,
	[OddRowBackgroundColor] [nvarchar](16) NULL,
	[RowsFontColor] [nvarchar](16) NULL,
	[WidgetCode] [nvarchar](max) NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CareerPageSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CareerPageSetting] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CareerPageSetting] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[CareerPageSetting] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyTag]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyTag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CompanyTag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CompanyTag] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CompanyTag] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CompanyTag] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyBranch]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyBranch](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[BranchName] [nvarchar](256) NOT NULL,
	[ZipCode] [nvarchar](16) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Address] [nvarchar](256) NULL,
	[CityName] [nvarchar](128) NULL,
	[CityID] [int] NULL,
	[CountryID] [int] NULL,
	[StateID] [int] NULL,
	[EmailAddress] [nvarchar](128) NULL,
	[OfficePhone] [nvarchar](16) NULL,
	[FaxNumber] [nvarchar](16) NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CompanyBranch] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CityID] ON [dbo].[CompanyBranch] 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CompanyBranch] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CountryID] ON [dbo].[CompanyBranch] 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CompanyBranch] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CompanyBranch] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_StateID] ON [dbo].[CompanyBranch] 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CareerPageSettingDocument]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CareerPageSettingDocument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CareerPageSettingID] [int] NOT NULL,
	[Name] [nvarchar](128) NULL,
	[Description] [nvarchar](512) NULL,
	[ExternalLink] [nvarchar](256) NULL,
	[Document] [varbinary](max) NULL,
	[DocumentFileName] [nvarchar](256) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CareerPageSettingDocument] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CareerPageSettingID] ON [dbo].[CareerPageSettingDocument] 
(
	[CareerPageSettingID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CareerPageSettingDocument] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CareerPageSettingDocument] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Candidate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayId] [nvarchar](64) NULL,
	[FirstName] [nvarchar](128) NOT NULL,
	[MiddleName] [nvarchar](128) NULL,
	[LastName] [nvarchar](128) NULL,
	[PositionID] [int] NULL,
	[CompanyID] [int] NULL,
	[EmailAddressPrimary] [nvarchar](128) NULL,
	[EmailAddressAlternative] [nvarchar](128) NULL,
	[ZipCode] [nvarchar](16) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Address] [nvarchar](256) NULL,
	[CityName] [nvarchar](128) NULL,
	[CityID] [int] NULL,
	[CountryID] [int] NULL,
	[StateID] [int] NULL,
	[PhoneMobile] [nvarchar](64) NULL,
	[PhoneHome] [nvarchar](64) NULL,
	[PhoneWork] [nvarchar](64) NULL,
	[BestTimeToCall] [nvarchar](64) NULL,
	[CurrentSalaryRate] [float] NULL,
	[DesiredSalaryRate] [float] NULL,
	[SalaryRateCurrencyID] [int] NULL,
	[SalaryRateCategoryID] [int] NULL,
	[SocialLinkedIn] [nvarchar](256) NULL,
	[SocialPersonalBlog] [nvarchar](256) NULL,
	[SocialFacebook] [nvarchar](256) NULL,
	[SocialTwitter] [nvarchar](256) NULL,
	[SocialGooglePlus] [nvarchar](256) NULL,
	[IMSkype] [nvarchar](256) NULL,
	[IMYahoo] [nvarchar](256) NULL,
	[Photo] [varbinary](max) NULL,
	[PhotoFileName] [nvarchar](256) NULL,
	[Resume] [varbinary](max) NULL,
	[ResumeFileName] [nvarchar](256) NULL,
	[ResumeText] [nvarchar](max) NULL,
	[YearsOfExperience] [float] NULL,
	[IsAvailable] [bit] NOT NULL,
	[AvailableFromDate] [datetime] NULL,
	[IndustryCategoryID] [int] NULL,
	[FunctionalCategoryID] [int] NULL,
	[CareerLevelID] [int] NULL,
	[CitizenshipStatusCategoryID] [int] NULL,
	[RatingScaleCategoryID] [int] NULL,
	[GenderID] [int] NULL,
	[InternalRemarks] [nvarchar](256) NULL,
	[CandidateSourceID] [int] NULL,
	[CandidateLabelID] [int] NULL,
	[UserID] [int] NULL,
	[IsReferral] [bit] NOT NULL,
	[RawCopyPasteResume] [nvarchar](max) NULL,
	[RawSkillSet] [nvarchar](max) NULL,
	[RawJobTitle] [nvarchar](max) NULL,
	[RawCompany] [nvarchar](max) NULL,
	[RawEducation] [nvarchar](max) NULL,
	[IsVerified] [bit] NOT NULL,
	[VerifiedByUserID] [int] NULL,
	[VerificationNotes] [nvarchar](512) NULL,
	[VerificationDate] [datetime] NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Candidate] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CandidateLabelID] ON [dbo].[Candidate] 
(
	[CandidateLabelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateSourceID] ON [dbo].[Candidate] 
(
	[CandidateSourceID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CareerLevelID] ON [dbo].[Candidate] 
(
	[CareerLevelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CitizenshipStatusCategoryID] ON [dbo].[Candidate] 
(
	[CitizenshipStatusCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CityID] ON [dbo].[Candidate] 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[Candidate] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CountryID] ON [dbo].[Candidate] 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[Candidate] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FunctionalCategoryID] ON [dbo].[Candidate] 
(
	[FunctionalCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_GenderID] ON [dbo].[Candidate] 
(
	[GenderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_IndustryCategoryID] ON [dbo].[Candidate] 
(
	[IndustryCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[Candidate] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PositionID] ON [dbo].[Candidate] 
(
	[PositionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RatingScaleCategoryID] ON [dbo].[Candidate] 
(
	[RatingScaleCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SalaryRateCategoryID] ON [dbo].[Candidate] 
(
	[SalaryRateCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SalaryRateCurrencyID] ON [dbo].[Candidate] 
(
	[SalaryRateCurrencyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_StateID] ON [dbo].[Candidate] 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[Candidate] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_VerifiedByUserID] ON [dbo].[Candidate] 
(
	[VerifiedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FeedbackComment]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedbackComment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Comment] [nvarchar](max) NULL,
	[FeedbackID] [int] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.FeedbackComment] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[FeedbackComment] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_FeedbackID] ON [dbo].[FeedbackComment] 
(
	[FeedbackID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[FeedbackComment] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyNote]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyNote](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Notes] [nvarchar](512) NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CompanyNote] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CompanyNote] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CompanyNote] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CompanyNote] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyContact]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyContact](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyID] [int] NOT NULL,
	[CompanyBranchID] [int] NULL,
	[PositionID] [int] NULL,
	[FirstName] [nvarchar](128) NOT NULL,
	[MiddleName] [nvarchar](128) NULL,
	[LastName] [nvarchar](128) NULL,
	[EmailAddressPrimary] [nvarchar](128) NULL,
	[EmailAddressAlternative] [nvarchar](128) NULL,
	[ZipCode] [nvarchar](16) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[Address] [nvarchar](256) NULL,
	[CityName] [nvarchar](128) NULL,
	[CityID] [int] NULL,
	[CountryID] [int] NULL,
	[StateID] [int] NULL,
	[PhoneMobile] [nvarchar](64) NULL,
	[PhoneHome] [nvarchar](64) NULL,
	[PhoneWork] [nvarchar](64) NULL,
	[BestTimeToCall] [nvarchar](64) NULL,
	[GenderID] [int] NULL,
	[UserID] [int] NULL,
	[IsPrimary] [bit] NOT NULL,
	[IsVerified] [bit] NOT NULL,
	[VerifiedByUserID] [int] NULL,
	[VerificationNotes] [nvarchar](512) NULL,
	[VerificationDate] [datetime] NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CompanyContact] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CityID] ON [dbo].[CompanyContact] 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyBranchID] ON [dbo].[CompanyContact] 
(
	[CompanyBranchID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CompanyContact] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CountryID] ON [dbo].[CompanyContact] 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CompanyContact] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_GenderID] ON [dbo].[CompanyContact] 
(
	[GenderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CompanyContact] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PositionID] ON [dbo].[CompanyContact] 
(
	[PositionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_StateID] ON [dbo].[CompanyContact] 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[CompanyContact] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_VerifiedByUserID] ON [dbo].[CompanyContact] 
(
	[VerifiedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateTag]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateTag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateTag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[CandidateTag] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CandidateTag] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CandidateTag] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateSkill]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateSkill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[SkillID] [int] NOT NULL,
	[YearsOfExperience] [float] NULL,
	[LastUsedYear] [int] NULL,
	[RatingScaleCategoryID] [int] NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateSkill] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[CandidateSkill] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CandidateSkill] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CandidateSkill] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RatingScaleCategoryID] ON [dbo].[CandidateSkill] 
(
	[RatingScaleCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SkillID] ON [dbo].[CandidateSkill] 
(
	[SkillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateRecruitmentTeam]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateRecruitmentTeam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[IsPrimaryRecruiter] [bit] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateRecruitmentTeam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[CandidateRecruitmentTeam] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CandidateRecruitmentTeam] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CandidateRecruitmentTeam] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[CandidateRecruitmentTeam] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateNote]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateNote](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Notes] [nvarchar](512) NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateNote] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[CandidateNote] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CandidateNote] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CandidateNote] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateGroupMember]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateGroupMember](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateGroupID] [int] NOT NULL,
	[CandidateID] [int] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateGroupMember] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateGroupID] ON [dbo].[CandidateGroupMember] 
(
	[CandidateGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[CandidateGroupMember] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CandidateGroupMember] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CandidateGroupMember] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateDocument]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CandidateDocument](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[DocumentCategoryID] [int] NULL,
	[Name] [nvarchar](128) NULL,
	[Description] [nvarchar](512) NULL,
	[ExternalLink] [nvarchar](256) NULL,
	[Document] [varbinary](max) NULL,
	[DocumentFileName] [nvarchar](256) NULL,
	[CreateDate] [datetime] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateDocument] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[CandidateDocument] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CandidateDocument] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_DocumentCategoryID] ON [dbo].[CandidateDocument] 
(
	[DocumentCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CandidateDocument] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateExperience]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateExperience](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[CompanyID] [int] NOT NULL,
	[PositionID] [int] NOT NULL,
	[CompanyWebsite] [nvarchar](128) NULL,
	[IsCurrentJob] [bit] NOT NULL,
	[DateFrom] [datetime] NULL,
	[DateTo] [datetime] NULL,
	[CountryID] [int] NULL,
	[StateID] [int] NULL,
	[CityName] [nvarchar](128) NULL,
	[CityID] [int] NULL,
	[GrossSalary] [nvarchar](128) NULL,
	[JobDescription] [nvarchar](max) NULL,
	[CandidateDocumentID] [int] NULL,
	[IsVerified] [bit] NOT NULL,
	[VerifiedByUserID] [int] NULL,
	[VerificationNotes] [nvarchar](512) NULL,
	[VerificationDate] [datetime] NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateExperience] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateDocumentID] ON [dbo].[CandidateExperience] 
(
	[CandidateDocumentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[CandidateExperience] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CityID] ON [dbo].[CandidateExperience] 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CandidateExperience] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CountryID] ON [dbo].[CandidateExperience] 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CandidateExperience] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CandidateExperience] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PositionID] ON [dbo].[CandidateExperience] 
(
	[PositionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_StateID] ON [dbo].[CandidateExperience] 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_VerifiedByUserID] ON [dbo].[CandidateExperience] 
(
	[VerifiedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CandidateEducationCertificationLicense]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CandidateEducationCertificationLicense](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NOT NULL,
	[EducationCertificationLicenseCategoryID] [int] NULL,
	[EducationCertificationLicenseID] [int] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[AttendedFromDate] [datetime] NULL,
	[AttendedToDate] [datetime] NULL,
	[InstituteName] [nvarchar](256) NULL,
	[InstituteID] [int] NULL,
	[CountryID] [int] NULL,
	[StateID] [int] NULL,
	[CityName] [nvarchar](128) NULL,
	[CityID] [int] NULL,
	[Description] [nvarchar](max) NULL,
	[IssueDate] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
	[IsHighestDegree] [bit] NULL,
	[CandidateDocumentID] [int] NULL,
	[IsVerified] [bit] NOT NULL,
	[VerifiedByUserID] [int] NULL,
	[VerificationNotes] [nvarchar](512) NULL,
	[VerificationDate] [datetime] NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.CandidateEducationCertificationLicense] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateDocumentID] ON [dbo].[CandidateEducationCertificationLicense] 
(
	[CandidateDocumentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[CandidateEducationCertificationLicense] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CityID] ON [dbo].[CandidateEducationCertificationLicense] 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CountryID] ON [dbo].[CandidateEducationCertificationLicense] 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CandidateEducationCertificationLicense] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EducationCertificationLicenseCategoryID] ON [dbo].[CandidateEducationCertificationLicense] 
(
	[EducationCertificationLicenseCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EducationCertificationLicenseID] ON [dbo].[CandidateEducationCertificationLicense] 
(
	[EducationCertificationLicenseID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_InstituteID] ON [dbo].[CandidateEducationCertificationLicense] 
(
	[InstituteID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CandidateEducationCertificationLicense] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_StateID] ON [dbo].[CandidateEducationCertificationLicense] 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_VerifiedByUserID] ON [dbo].[CandidateEducationCertificationLicense] 
(
	[VerifiedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Job]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Job](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayId] [nvarchar](64) NULL,
	[PositionID] [int] NOT NULL,
	[NumberOfOpenings] [int] NOT NULL,
	[MinimumSalary] [float] NULL,
	[MaximumSalary] [float] NULL,
	[SalaryCurrencyID] [int] NULL,
	[SalaryRateCategoryID] [int] NULL,
	[EmploymentCategoryID] [int] NULL,
	[RequiredSkills] [nvarchar](max) NULL,
	[StartDateTime] [datetime] NOT NULL,
	[EndDateTime] [datetime] NULL,
	[JobDescription] [nvarchar](max) NULL,
	[RawJobDescription] [nvarchar](max) NULL,
	[WorkAddress] [nvarchar](256) NULL,
	[CountryID] [int] NULL,
	[StateID] [int] NULL,
	[CityName] [nvarchar](128) NULL,
	[CityID] [int] NULL,
	[ZipCode] [nvarchar](16) NULL,
	[Latitude] [float] NULL,
	[Longitude] [float] NULL,
	[JobStatusCategoryID] [int] NOT NULL,
	[JobPositionTypeID] [int] NOT NULL,
	[CareerLevelID] [int] NULL,
	[CitizenshipStatusCategoryID] [int] NULL,
	[JobLabelID] [int] NULL,
	[HireByDate] [datetime] NULL,
	[IsPublished] [bit] NULL,
	[PublishDate] [datetime] NULL,
	[ExpiryDate] [datetime] NULL,
	[CompanyID] [int] NOT NULL,
	[CompanyContactID] [int] NULL,
	[CompanyJobNumber] [nvarchar](64) NULL,
	[ReferralFee] [float] NULL,
	[ReferralFeeCurrencyID] [int] NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Job] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CareerLevelID] ON [dbo].[Job] 
(
	[CareerLevelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CitizenshipStatusCategoryID] ON [dbo].[Job] 
(
	[CitizenshipStatusCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CityID] ON [dbo].[Job] 
(
	[CityID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyContactID] ON [dbo].[Job] 
(
	[CompanyContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[Job] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CountryID] ON [dbo].[Job] 
(
	[CountryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[Job] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EmploymentCategoryID] ON [dbo].[Job] 
(
	[EmploymentCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobLabelID] ON [dbo].[Job] 
(
	[JobLabelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobPositionTypeID] ON [dbo].[Job] 
(
	[JobPositionTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobStatusCategoryID] ON [dbo].[Job] 
(
	[JobStatusCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[Job] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_PositionID] ON [dbo].[Job] 
(
	[PositionID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_ReferralFeeCurrencyID] ON [dbo].[Job] 
(
	[ReferralFeeCurrencyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SalaryCurrencyID] ON [dbo].[Job] 
(
	[SalaryCurrencyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SalaryRateCategoryID] ON [dbo].[Job] 
(
	[SalaryRateCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_StateID] ON [dbo].[Job] 
(
	[StateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CompanyContactGroupMember]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CompanyContactGroupMember](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyContactGroupID] [int] NOT NULL,
	[CompanyContactID] [int] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
	[CompanyID] [int] NULL,
 CONSTRAINT [PK_dbo.CompanyContactGroupMember] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyContactGroupID] ON [dbo].[CompanyContactGroupMember] 
(
	[CompanyContactGroupID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyContactID] ON [dbo].[CompanyContactGroupMember] 
(
	[CompanyContactID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[CompanyContactGroupMember] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[CompanyContactGroupMember] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[CompanyContactGroupMember] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserActivity]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserActivity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CandidateID] [int] NULL,
	[CompanyID] [int] NULL,
	[JobID] [int] NULL,
	[ActivityCategory] [nvarchar](max) NULL,
	[Activity] [nvarchar](max) NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.UserActivity] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[UserActivity] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[UserActivity] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[UserActivity] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobID] ON [dbo].[UserActivity] 
(
	[JobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[UserActivity] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Task]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Task](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayId] [nvarchar](64) NULL,
	[Subject] [nvarchar](256) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[TaskStatusCategoryID] [int] NOT NULL,
	[CompletionNote] [nvarchar](max) NULL,
	[CompletedDate] [datetime] NULL,
	[CreatedByUserID] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[AssignedToUserID] [int] NOT NULL,
	[CandidateID] [int] NULL,
	[JobID] [int] NULL,
	[CompanyID] [int] NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Task] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_AssignedToUserID] ON [dbo].[Task] 
(
	[AssignedToUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[Task] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CompanyID] ON [dbo].[Task] 
(
	[CompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[Task] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobID] ON [dbo].[Task] 
(
	[JobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[Task] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TaskStatusCategoryID] ON [dbo].[Task] 
(
	[TaskStatusCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTag]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobTag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[JobTag] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobID] ON [dbo].[JobTag] 
(
	[JobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[JobTag] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReferralEarning]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferralEarning](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[CandidateID] [int] NOT NULL,
	[JobID] [int] NOT NULL,
	[Amount] [float] NOT NULL,
	[CurrencyID] [int] NOT NULL,
	[PaidDate] [datetime] NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.ReferralEarning] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[ReferralEarning] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[ReferralEarning] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CurrencyID] ON [dbo].[ReferralEarning] 
(
	[CurrencyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobID] ON [dbo].[ReferralEarning] 
(
	[JobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[ReferralEarning] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[ReferralEarning] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mail]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Category] [int] NOT NULL,
	[Subject] [nvarchar](256) NULL,
	[Message] [nvarchar](max) NULL,
	[Attachment] [nvarchar](512) NULL,
	[ScheduledDeliveryOn] [datetime] NOT NULL,
	[IsDelivered] [bit] NOT NULL,
	[DeliveredOn] [datetime] NULL,
	[IsViewed] [bit] NOT NULL,
	[RecipientCandidateID] [int] NULL,
	[RecipientCompanyID] [int] NULL,
	[RecipientUserID] [int] NULL,
	[RelatedToJobID] [int] NULL,
	[CreatedByUserID] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.Mail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[Mail] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[Mail] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RecipientCandidateID] ON [dbo].[Mail] 
(
	[RecipientCandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RecipientCompanyID] ON [dbo].[Mail] 
(
	[RecipientCompanyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RecipientUserID] ON [dbo].[Mail] 
(
	[RecipientUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RelatedToJobID] ON [dbo].[Mail] 
(
	[RelatedToJobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobSkill]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobSkill](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [int] NOT NULL,
	[SkillID] [int] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobSkill] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[JobSkill] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobID] ON [dbo].[JobSkill] 
(
	[JobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[JobSkill] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_SkillID] ON [dbo].[JobSkill] 
(
	[SkillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobRecruitmentTeam]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobRecruitmentTeam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[JobTeamCategoryID] [int] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobRecruitmentTeam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[JobRecruitmentTeam] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobID] ON [dbo].[JobRecruitmentTeam] 
(
	[JobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobTeamCategoryID] ON [dbo].[JobRecruitmentTeam] 
(
	[JobTeamCategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[JobRecruitmentTeam] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_UserID] ON [dbo].[JobRecruitmentTeam] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobNote]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobNote](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [int] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[Notes] [nvarchar](512) NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobNote] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[JobNote] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobID] ON [dbo].[JobNote] 
(
	[JobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[JobNote] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobCandidateHireLevel]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobCandidateHireLevel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [int] NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Sequence] [int] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobCandidateHireLevel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[JobCandidateHireLevel] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobID] ON [dbo].[JobCandidateHireLevel] 
(
	[JobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[JobCandidateHireLevel] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobCandidateHire]    Script Date: 07/21/2014 21:00:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobCandidateHire](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JobID] [int] NOT NULL,
	[CandidateID] [int] NOT NULL,
	[JobCandidateHireLevelID] [int] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[IsCurrent] [bit] NOT NULL,
	[CreatedByUserID] [int] NOT NULL,
	[LastUpdatedByUserID] [int] NOT NULL,
	[IsArchived] [bit] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[LastUpdateDate] [datetime] NOT NULL,
 CONSTRAINT [PK_dbo.JobCandidateHire] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CandidateID] ON [dbo].[JobCandidateHire] 
(
	[CandidateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_CreatedByUserID] ON [dbo].[JobCandidateHire] 
(
	[CreatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobCandidateHireLevelID] ON [dbo].[JobCandidateHire] 
(
	[JobCandidateHireLevelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_JobID] ON [dbo].[JobCandidateHire] 
(
	[JobID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LastUpdatedByUserID] ON [dbo].[JobCandidateHire] 
(
	[LastUpdatedByUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Default [DF__EmailTemp__IsSys__4D2A7347]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[EmailTemplateCategory] ADD  DEFAULT ((0)) FOR [IsSystem]
GO
/****** Object:  Default [DF__SMTPConfi__IsEna__4E1E9780]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[SMTPConfiguration] ADD  DEFAULT ((0)) FOR [IsEnableSsl]
GO
/****** Object:  ForeignKey [FK_dbo.EducationCertificationLicense_dbo.EducationCertificationLicenseCategory_EducationCertificationLicenseCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[EducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EducationCertificationLicense_dbo.EducationCertificationLicenseCategory_EducationCertificationLicenseCategoryID] FOREIGN KEY([EducationCertificationLicenseCategoryID])
REFERENCES [dbo].[EducationCertificationLicenseCategory] ([ID])
GO
ALTER TABLE [dbo].[EducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.EducationCertificationLicense_dbo.EducationCertificationLicenseCategory_EducationCertificationLicenseCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.State_dbo.Country_CountryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_dbo.State_dbo.Country_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_dbo.State_dbo.Country_CountryID]
GO
/****** Object:  ForeignKey [FK_dbo.City_dbo.Country_CountryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_dbo.City_dbo.Country_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_dbo.City_dbo.Country_CountryID]
GO
/****** Object:  ForeignKey [FK_dbo.City_dbo.State_StateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[City]  WITH CHECK ADD  CONSTRAINT [FK_dbo.City_dbo.State_StateID] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([ID])
GO
ALTER TABLE [dbo].[City] CHECK CONSTRAINT [FK_dbo.City_dbo.State_StateID]
GO
/****** Object:  ForeignKey [FK_dbo.User_dbo.City_CityID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.City_CityID] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.City_CityID]
GO
/****** Object:  ForeignKey [FK_dbo.User_dbo.Country_CountryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.Country_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.Country_CountryID]
GO
/****** Object:  ForeignKey [FK_dbo.User_dbo.Gender_GenderID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.Gender_GenderID] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.Gender_GenderID]
GO
/****** Object:  ForeignKey [FK_dbo.User_dbo.RatingScaleCategory_RatingScaleCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.RatingScaleCategory_RatingScaleCategoryID] FOREIGN KEY([RatingScaleCategoryID])
REFERENCES [dbo].[RatingScaleCategory] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.RatingScaleCategory_RatingScaleCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.User_dbo.State_StateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.State_StateID] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.State_StateID]
GO
/****** Object:  ForeignKey [FK_dbo.User_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.User_dbo.UserRole_UserRoleID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_dbo.User_dbo.UserRole_UserRoleID] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([ID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_dbo.User_dbo.UserRole_UserRoleID]
GO
/****** Object:  ForeignKey [FK_dbo.UserExternalLogin_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[UserExternalLogin]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserExternalLogin_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserExternalLogin] CHECK CONSTRAINT [FK_dbo.UserExternalLogin_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.UserExternalLogin_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[UserExternalLogin]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserExternalLogin_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserExternalLogin] CHECK CONSTRAINT [FK_dbo.UserExternalLogin_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.UserExternalLogin_dbo.User_UserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[UserExternalLogin]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserExternalLogin_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserExternalLogin] CHECK CONSTRAINT [FK_dbo.UserExternalLogin_dbo.User_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.Feedback_dbo.FeedbackCategory_FeedbackCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Feedback_dbo.FeedbackCategory_FeedbackCategoryID] FOREIGN KEY([FeedbackCategoryID])
REFERENCES [dbo].[FeedbackCategory] ([ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_dbo.Feedback_dbo.FeedbackCategory_FeedbackCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Feedback_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Feedback_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_dbo.Feedback_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Feedback_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Feedback]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Feedback_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Feedback] CHECK CONSTRAINT [FK_dbo.Feedback_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobLabel_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobLabel]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobLabel_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobLabel] CHECK CONSTRAINT [FK_dbo.JobLabel_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobSearchParameter_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobSearchParameter]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSearchParameter_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobSearchParameter] CHECK CONSTRAINT [FK_dbo.JobSearchParameter_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobSearchParameter_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobSearchParameter]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSearchParameter_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobSearchParameter] CHECK CONSTRAINT [FK_dbo.JobSearchParameter_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.SMTPConfiguration_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[SMTPConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SMTPConfiguration_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[SMTPConfiguration] CHECK CONSTRAINT [FK_dbo.SMTPConfiguration_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.SMTPConfiguration_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[SMTPConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SMTPConfiguration_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[SMTPConfiguration] CHECK CONSTRAINT [FK_dbo.SMTPConfiguration_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.SMTPConfiguration_dbo.User_UserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[SMTPConfiguration]  WITH CHECK ADD  CONSTRAINT [FK_dbo.SMTPConfiguration_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[SMTPConfiguration] CHECK CONSTRAINT [FK_dbo.SMTPConfiguration_dbo.User_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.Position_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Position_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Position]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Position_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Position] CHECK CONSTRAINT [FK_dbo.Position_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.EmailTemplate_dbo.EmailTemplateCategory_EmailTemplateCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[EmailTemplate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmailTemplate_dbo.EmailTemplateCategory_EmailTemplateCategoryID] FOREIGN KEY([EmailTemplateCategoryID])
REFERENCES [dbo].[EmailTemplateCategory] ([ID])
GO
ALTER TABLE [dbo].[EmailTemplate] CHECK CONSTRAINT [FK_dbo.EmailTemplate_dbo.EmailTemplateCategory_EmailTemplateCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.EmailTemplate_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[EmailTemplate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmailTemplate_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[EmailTemplate] CHECK CONSTRAINT [FK_dbo.EmailTemplate_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.EmailTemplate_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[EmailTemplate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EmailTemplate_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[EmailTemplate] CHECK CONSTRAINT [FK_dbo.EmailTemplate_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContactGroup_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContactGroup]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContactGroup_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyContactGroup] CHECK CONSTRAINT [FK_dbo.CompanyContactGroup_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContactGroup_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContactGroup]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContactGroup_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyContactGroup] CHECK CONSTRAINT [FK_dbo.CompanyContactGroup_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanySearchParameter_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanySearchParameter]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanySearchParameter_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanySearchParameter] CHECK CONSTRAINT [FK_dbo.CompanySearchParameter_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanySearchParameter_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanySearchParameter]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanySearchParameter_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanySearchParameter] CHECK CONSTRAINT [FK_dbo.CompanySearchParameter_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateSearchParameter_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateSearchParameter]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateSearchParameter_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateSearchParameter] CHECK CONSTRAINT [FK_dbo.CandidateSearchParameter_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateSearchParameter_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateSearchParameter]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateSearchParameter_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateSearchParameter] CHECK CONSTRAINT [FK_dbo.CandidateSearchParameter_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateGroup_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateGroup]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateGroup_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateGroup] CHECK CONSTRAINT [FK_dbo.CandidateGroup_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateGroup_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateGroup]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateGroup_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateGroup] CHECK CONSTRAINT [FK_dbo.CandidateGroup_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateLabel_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateLabel]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateLabel_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateLabel] CHECK CONSTRAINT [FK_dbo.CandidateLabel_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.City_CityID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.City_CityID] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.City_CityID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.CompanySourceCategory_CompanySourceCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.CompanySourceCategory_CompanySourceCategoryID] FOREIGN KEY([CompanySourceCategoryID])
REFERENCES [dbo].[CompanySourceCategory] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.CompanySourceCategory_CompanySourceCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.CompanyStatusCategory_CompanyStatusCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.CompanyStatusCategory_CompanyStatusCategoryID] FOREIGN KEY([CompanyStatusCategoryID])
REFERENCES [dbo].[CompanyStatusCategory] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.CompanyStatusCategory_CompanyStatusCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.Country_CountryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.Country_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.Country_CountryID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.IndustryCategory_IndustryCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.IndustryCategory_IndustryCategoryID] FOREIGN KEY([IndustryCategoryID])
REFERENCES [dbo].[IndustryCategory] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.IndustryCategory_IndustryCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.RatingScaleCategory_CompanyRatingCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.RatingScaleCategory_CompanyRatingCategoryID] FOREIGN KEY([CompanyRatingCategoryID])
REFERENCES [dbo].[RatingScaleCategory] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.RatingScaleCategory_CompanyRatingCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.State_StateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.State_StateID] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.State_StateID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Company_dbo.User_VerifiedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Company]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Company_dbo.User_VerifiedByUserID] FOREIGN KEY([VerifiedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Company] CHECK CONSTRAINT [FK_dbo.Company_dbo.User_VerifiedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CareerPageSetting_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CareerPageSetting]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CareerPageSetting_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CareerPageSetting] CHECK CONSTRAINT [FK_dbo.CareerPageSetting_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CareerPageSetting_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CareerPageSetting]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CareerPageSetting_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CareerPageSetting] CHECK CONSTRAINT [FK_dbo.CareerPageSetting_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CareerPageSetting_dbo.User_UserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CareerPageSetting]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CareerPageSetting_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CareerPageSetting] CHECK CONSTRAINT [FK_dbo.CareerPageSetting_dbo.User_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyTag_dbo.Company_CompanyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyTag_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[CompanyTag] CHECK CONSTRAINT [FK_dbo.CompanyTag_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyTag_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyTag_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyTag] CHECK CONSTRAINT [FK_dbo.CompanyTag_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyTag_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyTag_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyTag] CHECK CONSTRAINT [FK_dbo.CompanyTag_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyBranch_dbo.City_CityID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyBranch]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyBranch_dbo.City_CityID] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[CompanyBranch] CHECK CONSTRAINT [FK_dbo.CompanyBranch_dbo.City_CityID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyBranch_dbo.Company_CompanyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyBranch]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyBranch_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[CompanyBranch] CHECK CONSTRAINT [FK_dbo.CompanyBranch_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyBranch_dbo.Country_CountryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyBranch]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyBranch_dbo.Country_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[CompanyBranch] CHECK CONSTRAINT [FK_dbo.CompanyBranch_dbo.Country_CountryID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyBranch_dbo.State_StateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyBranch]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyBranch_dbo.State_StateID] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([ID])
GO
ALTER TABLE [dbo].[CompanyBranch] CHECK CONSTRAINT [FK_dbo.CompanyBranch_dbo.State_StateID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyBranch_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyBranch]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyBranch_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyBranch] CHECK CONSTRAINT [FK_dbo.CompanyBranch_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyBranch_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyBranch]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyBranch_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyBranch] CHECK CONSTRAINT [FK_dbo.CompanyBranch_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CareerPageSettingDocument_dbo.CareerPageSetting_CareerPageSettingID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CareerPageSettingDocument]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CareerPageSettingDocument_dbo.CareerPageSetting_CareerPageSettingID] FOREIGN KEY([CareerPageSettingID])
REFERENCES [dbo].[CareerPageSetting] ([ID])
GO
ALTER TABLE [dbo].[CareerPageSettingDocument] CHECK CONSTRAINT [FK_dbo.CareerPageSettingDocument_dbo.CareerPageSetting_CareerPageSettingID]
GO
/****** Object:  ForeignKey [FK_dbo.CareerPageSettingDocument_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CareerPageSettingDocument]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CareerPageSettingDocument_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CareerPageSettingDocument] CHECK CONSTRAINT [FK_dbo.CareerPageSettingDocument_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CareerPageSettingDocument_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CareerPageSettingDocument]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CareerPageSettingDocument_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CareerPageSettingDocument] CHECK CONSTRAINT [FK_dbo.CareerPageSettingDocument_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.CandidateLabel_CandidateLabelID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.CandidateLabel_CandidateLabelID] FOREIGN KEY([CandidateLabelID])
REFERENCES [dbo].[CandidateLabel] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.CandidateLabel_CandidateLabelID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.CandidateSource_CandidateSourceID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.CandidateSource_CandidateSourceID] FOREIGN KEY([CandidateSourceID])
REFERENCES [dbo].[CandidateSource] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.CandidateSource_CandidateSourceID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.CareerLevel_CareerLevelID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.CareerLevel_CareerLevelID] FOREIGN KEY([CareerLevelID])
REFERENCES [dbo].[CareerLevel] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.CareerLevel_CareerLevelID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.CitizenshipStatusCategory_CitizenshipStatusCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.CitizenshipStatusCategory_CitizenshipStatusCategoryID] FOREIGN KEY([CitizenshipStatusCategoryID])
REFERENCES [dbo].[CitizenshipStatusCategory] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.CitizenshipStatusCategory_CitizenshipStatusCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.City_CityID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.City_CityID] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.City_CityID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.Company_CompanyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.Country_CountryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.Country_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.Country_CountryID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.Currency_SalaryRateCurrencyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.Currency_SalaryRateCurrencyID] FOREIGN KEY([SalaryRateCurrencyID])
REFERENCES [dbo].[Currency] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.Currency_SalaryRateCurrencyID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.FunctionalCategory_FunctionalCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.FunctionalCategory_FunctionalCategoryID] FOREIGN KEY([FunctionalCategoryID])
REFERENCES [dbo].[FunctionalCategory] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.FunctionalCategory_FunctionalCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.Gender_GenderID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.Gender_GenderID] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.Gender_GenderID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.IndustryCategory_IndustryCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.IndustryCategory_IndustryCategoryID] FOREIGN KEY([IndustryCategoryID])
REFERENCES [dbo].[IndustryCategory] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.IndustryCategory_IndustryCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.Position_PositionID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.Position_PositionID] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.Position_PositionID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.RatingScaleCategory_RatingScaleCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.RatingScaleCategory_RatingScaleCategoryID] FOREIGN KEY([RatingScaleCategoryID])
REFERENCES [dbo].[RatingScaleCategory] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.RatingScaleCategory_RatingScaleCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.SalaryRateCategory_SalaryRateCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.SalaryRateCategory_SalaryRateCategoryID] FOREIGN KEY([SalaryRateCategoryID])
REFERENCES [dbo].[SalaryRateCategory] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.SalaryRateCategory_SalaryRateCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.State_StateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.State_StateID] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.State_StateID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.User_UserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.User_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.Candidate_dbo.User_VerifiedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Candidate_dbo.User_VerifiedByUserID] FOREIGN KEY([VerifiedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_dbo.Candidate_dbo.User_VerifiedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.FeedbackComment_dbo.Feedback_FeedbackID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[FeedbackComment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FeedbackComment_dbo.Feedback_FeedbackID] FOREIGN KEY([FeedbackID])
REFERENCES [dbo].[Feedback] ([ID])
GO
ALTER TABLE [dbo].[FeedbackComment] CHECK CONSTRAINT [FK_dbo.FeedbackComment_dbo.Feedback_FeedbackID]
GO
/****** Object:  ForeignKey [FK_dbo.FeedbackComment_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[FeedbackComment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FeedbackComment_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[FeedbackComment] CHECK CONSTRAINT [FK_dbo.FeedbackComment_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.FeedbackComment_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[FeedbackComment]  WITH CHECK ADD  CONSTRAINT [FK_dbo.FeedbackComment_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[FeedbackComment] CHECK CONSTRAINT [FK_dbo.FeedbackComment_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyNote_dbo.Company_CompanyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyNote_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[CompanyNote] CHECK CONSTRAINT [FK_dbo.CompanyNote_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyNote_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyNote_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyNote] CHECK CONSTRAINT [FK_dbo.CompanyNote_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyNote_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyNote_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyNote] CHECK CONSTRAINT [FK_dbo.CompanyNote_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContact_dbo.City_CityID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContact_dbo.City_CityID] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_dbo.CompanyContact_dbo.City_CityID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContact_dbo.Company_CompanyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContact_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_dbo.CompanyContact_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContact_dbo.CompanyBranch_CompanyBranchID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContact_dbo.CompanyBranch_CompanyBranchID] FOREIGN KEY([CompanyBranchID])
REFERENCES [dbo].[CompanyBranch] ([ID])
GO
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_dbo.CompanyContact_dbo.CompanyBranch_CompanyBranchID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContact_dbo.Country_CountryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContact_dbo.Country_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_dbo.CompanyContact_dbo.Country_CountryID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContact_dbo.Gender_GenderID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContact_dbo.Gender_GenderID] FOREIGN KEY([GenderID])
REFERENCES [dbo].[Gender] ([ID])
GO
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_dbo.CompanyContact_dbo.Gender_GenderID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContact_dbo.Position_PositionID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContact_dbo.Position_PositionID] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([ID])
GO
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_dbo.CompanyContact_dbo.Position_PositionID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContact_dbo.State_StateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContact_dbo.State_StateID] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([ID])
GO
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_dbo.CompanyContact_dbo.State_StateID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContact_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContact_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_dbo.CompanyContact_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContact_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContact_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_dbo.CompanyContact_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContact_dbo.User_UserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContact_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_dbo.CompanyContact_dbo.User_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContact_dbo.User_VerifiedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContact]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContact_dbo.User_VerifiedByUserID] FOREIGN KEY([VerifiedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyContact] CHECK CONSTRAINT [FK_dbo.CompanyContact_dbo.User_VerifiedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateTag_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateTag_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[CandidateTag] CHECK CONSTRAINT [FK_dbo.CandidateTag_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateTag_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateTag_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateTag] CHECK CONSTRAINT [FK_dbo.CandidateTag_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateTag_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateTag_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateTag] CHECK CONSTRAINT [FK_dbo.CandidateTag_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateSkill_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateSkill]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateSkill_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[CandidateSkill] CHECK CONSTRAINT [FK_dbo.CandidateSkill_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateSkill_dbo.RatingScaleCategory_RatingScaleCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateSkill]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateSkill_dbo.RatingScaleCategory_RatingScaleCategoryID] FOREIGN KEY([RatingScaleCategoryID])
REFERENCES [dbo].[RatingScaleCategory] ([ID])
GO
ALTER TABLE [dbo].[CandidateSkill] CHECK CONSTRAINT [FK_dbo.CandidateSkill_dbo.RatingScaleCategory_RatingScaleCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateSkill_dbo.Skill_SkillID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateSkill]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateSkill_dbo.Skill_SkillID] FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skill] ([ID])
GO
ALTER TABLE [dbo].[CandidateSkill] CHECK CONSTRAINT [FK_dbo.CandidateSkill_dbo.Skill_SkillID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateSkill_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateSkill]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateSkill_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateSkill] CHECK CONSTRAINT [FK_dbo.CandidateSkill_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateSkill_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateSkill]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateSkill_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateSkill] CHECK CONSTRAINT [FK_dbo.CandidateSkill_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateRecruitmentTeam_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateRecruitmentTeam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateRecruitmentTeam_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[CandidateRecruitmentTeam] CHECK CONSTRAINT [FK_dbo.CandidateRecruitmentTeam_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateRecruitmentTeam_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateRecruitmentTeam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateRecruitmentTeam_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateRecruitmentTeam] CHECK CONSTRAINT [FK_dbo.CandidateRecruitmentTeam_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateRecruitmentTeam_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateRecruitmentTeam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateRecruitmentTeam_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateRecruitmentTeam] CHECK CONSTRAINT [FK_dbo.CandidateRecruitmentTeam_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateRecruitmentTeam_dbo.User_UserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateRecruitmentTeam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateRecruitmentTeam_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateRecruitmentTeam] CHECK CONSTRAINT [FK_dbo.CandidateRecruitmentTeam_dbo.User_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateNote_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateNote_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[CandidateNote] CHECK CONSTRAINT [FK_dbo.CandidateNote_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateNote_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateNote_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateNote] CHECK CONSTRAINT [FK_dbo.CandidateNote_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateNote_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateNote_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateNote] CHECK CONSTRAINT [FK_dbo.CandidateNote_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateGroupMember_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateGroupMember]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateGroupMember_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[CandidateGroupMember] CHECK CONSTRAINT [FK_dbo.CandidateGroupMember_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateGroupMember_dbo.CandidateGroup_CandidateGroupID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateGroupMember]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateGroupMember_dbo.CandidateGroup_CandidateGroupID] FOREIGN KEY([CandidateGroupID])
REFERENCES [dbo].[CandidateGroup] ([ID])
GO
ALTER TABLE [dbo].[CandidateGroupMember] CHECK CONSTRAINT [FK_dbo.CandidateGroupMember_dbo.CandidateGroup_CandidateGroupID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateGroupMember_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateGroupMember]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateGroupMember_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateGroupMember] CHECK CONSTRAINT [FK_dbo.CandidateGroupMember_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateGroupMember_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateGroupMember]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateGroupMember_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateGroupMember] CHECK CONSTRAINT [FK_dbo.CandidateGroupMember_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateDocument_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateDocument]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateDocument_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[CandidateDocument] CHECK CONSTRAINT [FK_dbo.CandidateDocument_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateDocument_dbo.DocumentCategory_DocumentCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateDocument]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateDocument_dbo.DocumentCategory_DocumentCategoryID] FOREIGN KEY([DocumentCategoryID])
REFERENCES [dbo].[DocumentCategory] ([ID])
GO
ALTER TABLE [dbo].[CandidateDocument] CHECK CONSTRAINT [FK_dbo.CandidateDocument_dbo.DocumentCategory_DocumentCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateDocument_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateDocument]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateDocument_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateDocument] CHECK CONSTRAINT [FK_dbo.CandidateDocument_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateDocument_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateDocument]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateDocument_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateDocument] CHECK CONSTRAINT [FK_dbo.CandidateDocument_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateExperience_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateExperience]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateExperience_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[CandidateExperience] CHECK CONSTRAINT [FK_dbo.CandidateExperience_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateExperience_dbo.CandidateDocument_CandidateDocumentID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateExperience]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateExperience_dbo.CandidateDocument_CandidateDocumentID] FOREIGN KEY([CandidateDocumentID])
REFERENCES [dbo].[CandidateDocument] ([ID])
GO
ALTER TABLE [dbo].[CandidateExperience] CHECK CONSTRAINT [FK_dbo.CandidateExperience_dbo.CandidateDocument_CandidateDocumentID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateExperience_dbo.City_CityID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateExperience]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateExperience_dbo.City_CityID] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[CandidateExperience] CHECK CONSTRAINT [FK_dbo.CandidateExperience_dbo.City_CityID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateExperience_dbo.Company_CompanyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateExperience]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateExperience_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[CandidateExperience] CHECK CONSTRAINT [FK_dbo.CandidateExperience_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateExperience_dbo.Country_CountryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateExperience]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateExperience_dbo.Country_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[CandidateExperience] CHECK CONSTRAINT [FK_dbo.CandidateExperience_dbo.Country_CountryID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateExperience_dbo.Position_PositionID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateExperience]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateExperience_dbo.Position_PositionID] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([ID])
GO
ALTER TABLE [dbo].[CandidateExperience] CHECK CONSTRAINT [FK_dbo.CandidateExperience_dbo.Position_PositionID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateExperience_dbo.State_StateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateExperience]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateExperience_dbo.State_StateID] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([ID])
GO
ALTER TABLE [dbo].[CandidateExperience] CHECK CONSTRAINT [FK_dbo.CandidateExperience_dbo.State_StateID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateExperience_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateExperience]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateExperience_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateExperience] CHECK CONSTRAINT [FK_dbo.CandidateExperience_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateExperience_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateExperience]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateExperience_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateExperience] CHECK CONSTRAINT [FK_dbo.CandidateExperience_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateExperience_dbo.User_VerifiedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateExperience]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateExperience_dbo.User_VerifiedByUserID] FOREIGN KEY([VerifiedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateExperience] CHECK CONSTRAINT [FK_dbo.CandidateExperience_dbo.User_VerifiedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateEducationCertificationLicense_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateEducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[CandidateEducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateEducationCertificationLicense_dbo.CandidateDocument_CandidateDocumentID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateEducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.CandidateDocument_CandidateDocumentID] FOREIGN KEY([CandidateDocumentID])
REFERENCES [dbo].[CandidateDocument] ([ID])
GO
ALTER TABLE [dbo].[CandidateEducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.CandidateDocument_CandidateDocumentID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateEducationCertificationLicense_dbo.City_CityID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateEducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.City_CityID] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[CandidateEducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.City_CityID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateEducationCertificationLicense_dbo.Country_CountryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateEducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.Country_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[CandidateEducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.Country_CountryID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateEducationCertificationLicense_dbo.EducationCertificationLicense_EducationCertificationLicenseID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateEducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.EducationCertificationLicense_EducationCertificationLicenseID] FOREIGN KEY([EducationCertificationLicenseID])
REFERENCES [dbo].[EducationCertificationLicense] ([ID])
GO
ALTER TABLE [dbo].[CandidateEducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.EducationCertificationLicense_EducationCertificationLicenseID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateEducationCertificationLicense_dbo.EducationCertificationLicenseCategory_EducationCertificationLicenseCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateEducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.EducationCertificationLicenseCategory_EducationCertificationLicenseCategoryID] FOREIGN KEY([EducationCertificationLicenseCategoryID])
REFERENCES [dbo].[EducationCertificationLicenseCategory] ([ID])
GO
ALTER TABLE [dbo].[CandidateEducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.EducationCertificationLicenseCategory_EducationCertificationLicenseCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateEducationCertificationLicense_dbo.EducationCertificationLicenseInstitute_InstituteID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateEducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.EducationCertificationLicenseInstitute_InstituteID] FOREIGN KEY([InstituteID])
REFERENCES [dbo].[EducationCertificationLicenseInstitute] ([ID])
GO
ALTER TABLE [dbo].[CandidateEducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.EducationCertificationLicenseInstitute_InstituteID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateEducationCertificationLicense_dbo.State_StateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateEducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.State_StateID] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([ID])
GO
ALTER TABLE [dbo].[CandidateEducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.State_StateID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateEducationCertificationLicense_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateEducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateEducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateEducationCertificationLicense_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateEducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateEducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CandidateEducationCertificationLicense_dbo.User_VerifiedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CandidateEducationCertificationLicense]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.User_VerifiedByUserID] FOREIGN KEY([VerifiedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CandidateEducationCertificationLicense] CHECK CONSTRAINT [FK_dbo.CandidateEducationCertificationLicense_dbo.User_VerifiedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.CareerLevel_CareerLevelID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.CareerLevel_CareerLevelID] FOREIGN KEY([CareerLevelID])
REFERENCES [dbo].[CareerLevel] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.CareerLevel_CareerLevelID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.CitizenshipStatusCategory_CitizenshipStatusCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.CitizenshipStatusCategory_CitizenshipStatusCategoryID] FOREIGN KEY([CitizenshipStatusCategoryID])
REFERENCES [dbo].[CitizenshipStatusCategory] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.CitizenshipStatusCategory_CitizenshipStatusCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.City_CityID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.City_CityID] FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.City_CityID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.Company_CompanyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.CompanyContact_CompanyContactID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.CompanyContact_CompanyContactID] FOREIGN KEY([CompanyContactID])
REFERENCES [dbo].[CompanyContact] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.CompanyContact_CompanyContactID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.Country_CountryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.Country_CountryID] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Country] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.Country_CountryID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.Currency_ReferralFeeCurrencyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.Currency_ReferralFeeCurrencyID] FOREIGN KEY([ReferralFeeCurrencyID])
REFERENCES [dbo].[Currency] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.Currency_ReferralFeeCurrencyID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.Currency_SalaryCurrencyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.Currency_SalaryCurrencyID] FOREIGN KEY([SalaryCurrencyID])
REFERENCES [dbo].[Currency] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.Currency_SalaryCurrencyID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.EmploymentCategory_EmploymentCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.EmploymentCategory_EmploymentCategoryID] FOREIGN KEY([EmploymentCategoryID])
REFERENCES [dbo].[EmploymentCategory] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.EmploymentCategory_EmploymentCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.JobLabel_JobLabelID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.JobLabel_JobLabelID] FOREIGN KEY([JobLabelID])
REFERENCES [dbo].[JobLabel] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.JobLabel_JobLabelID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.JobPositionType_JobPositionTypeID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.JobPositionType_JobPositionTypeID] FOREIGN KEY([JobPositionTypeID])
REFERENCES [dbo].[JobPositionType] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.JobPositionType_JobPositionTypeID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.JobStatusCategory_JobStatusCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.JobStatusCategory_JobStatusCategoryID] FOREIGN KEY([JobStatusCategoryID])
REFERENCES [dbo].[JobStatusCategory] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.JobStatusCategory_JobStatusCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.Position_PositionID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.Position_PositionID] FOREIGN KEY([PositionID])
REFERENCES [dbo].[Position] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.Position_PositionID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.SalaryRateCategory_SalaryRateCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.SalaryRateCategory_SalaryRateCategoryID] FOREIGN KEY([SalaryRateCategoryID])
REFERENCES [dbo].[SalaryRateCategory] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.SalaryRateCategory_SalaryRateCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.State_StateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.State_StateID] FOREIGN KEY([StateID])
REFERENCES [dbo].[State] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.State_StateID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Job_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Job]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Job_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Job] CHECK CONSTRAINT [FK_dbo.Job_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContactGroupMember_dbo.Company_CompanyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContactGroupMember]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContactGroupMember_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[CompanyContactGroupMember] CHECK CONSTRAINT [FK_dbo.CompanyContactGroupMember_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContactGroupMember_dbo.CompanyContact_CompanyContactID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContactGroupMember]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContactGroupMember_dbo.CompanyContact_CompanyContactID] FOREIGN KEY([CompanyContactID])
REFERENCES [dbo].[CompanyContact] ([ID])
GO
ALTER TABLE [dbo].[CompanyContactGroupMember] CHECK CONSTRAINT [FK_dbo.CompanyContactGroupMember_dbo.CompanyContact_CompanyContactID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContactGroupMember_dbo.CompanyContactGroup_CompanyContactGroupID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContactGroupMember]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContactGroupMember_dbo.CompanyContactGroup_CompanyContactGroupID] FOREIGN KEY([CompanyContactGroupID])
REFERENCES [dbo].[CompanyContactGroup] ([ID])
GO
ALTER TABLE [dbo].[CompanyContactGroupMember] CHECK CONSTRAINT [FK_dbo.CompanyContactGroupMember_dbo.CompanyContactGroup_CompanyContactGroupID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContactGroupMember_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContactGroupMember]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContactGroupMember_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyContactGroupMember] CHECK CONSTRAINT [FK_dbo.CompanyContactGroupMember_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.CompanyContactGroupMember_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[CompanyContactGroupMember]  WITH CHECK ADD  CONSTRAINT [FK_dbo.CompanyContactGroupMember_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[CompanyContactGroupMember] CHECK CONSTRAINT [FK_dbo.CompanyContactGroupMember_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.UserActivity_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[UserActivity]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserActivity_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[UserActivity] CHECK CONSTRAINT [FK_dbo.UserActivity_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.UserActivity_dbo.Company_CompanyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[UserActivity]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserActivity_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[UserActivity] CHECK CONSTRAINT [FK_dbo.UserActivity_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.UserActivity_dbo.Job_JobID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[UserActivity]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserActivity_dbo.Job_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[UserActivity] CHECK CONSTRAINT [FK_dbo.UserActivity_dbo.Job_JobID]
GO
/****** Object:  ForeignKey [FK_dbo.UserActivity_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[UserActivity]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserActivity_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserActivity] CHECK CONSTRAINT [FK_dbo.UserActivity_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.UserActivity_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[UserActivity]  WITH CHECK ADD  CONSTRAINT [FK_dbo.UserActivity_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[UserActivity] CHECK CONSTRAINT [FK_dbo.UserActivity_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Task_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Task_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_dbo.Task_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.Task_dbo.Company_CompanyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Task_dbo.Company_CompanyID] FOREIGN KEY([CompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_dbo.Task_dbo.Company_CompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Task_dbo.Job_JobID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Task_dbo.Job_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_dbo.Task_dbo.Job_JobID]
GO
/****** Object:  ForeignKey [FK_dbo.Task_dbo.TaskStatusCategory_TaskStatusCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Task_dbo.TaskStatusCategory_TaskStatusCategoryID] FOREIGN KEY([TaskStatusCategoryID])
REFERENCES [dbo].[TaskStatusCategory] ([ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_dbo.Task_dbo.TaskStatusCategory_TaskStatusCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.Task_dbo.User_AssignedToUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Task_dbo.User_AssignedToUserID] FOREIGN KEY([AssignedToUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_dbo.Task_dbo.User_AssignedToUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Task_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Task_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_dbo.Task_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Task_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Task]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Task_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Task] CHECK CONSTRAINT [FK_dbo.Task_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobTag_dbo.Job_JobID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTag_dbo.Job_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[JobTag] CHECK CONSTRAINT [FK_dbo.JobTag_dbo.Job_JobID]
GO
/****** Object:  ForeignKey [FK_dbo.JobTag_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTag_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobTag] CHECK CONSTRAINT [FK_dbo.JobTag_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobTag_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobTag]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobTag_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobTag] CHECK CONSTRAINT [FK_dbo.JobTag_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.ReferralEarning_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[ReferralEarning]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReferralEarning_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[ReferralEarning] CHECK CONSTRAINT [FK_dbo.ReferralEarning_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.ReferralEarning_dbo.Currency_CurrencyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[ReferralEarning]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReferralEarning_dbo.Currency_CurrencyID] FOREIGN KEY([CurrencyID])
REFERENCES [dbo].[Currency] ([ID])
GO
ALTER TABLE [dbo].[ReferralEarning] CHECK CONSTRAINT [FK_dbo.ReferralEarning_dbo.Currency_CurrencyID]
GO
/****** Object:  ForeignKey [FK_dbo.ReferralEarning_dbo.Job_JobID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[ReferralEarning]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReferralEarning_dbo.Job_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[ReferralEarning] CHECK CONSTRAINT [FK_dbo.ReferralEarning_dbo.Job_JobID]
GO
/****** Object:  ForeignKey [FK_dbo.ReferralEarning_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[ReferralEarning]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReferralEarning_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ReferralEarning] CHECK CONSTRAINT [FK_dbo.ReferralEarning_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.ReferralEarning_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[ReferralEarning]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReferralEarning_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ReferralEarning] CHECK CONSTRAINT [FK_dbo.ReferralEarning_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.ReferralEarning_dbo.User_UserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[ReferralEarning]  WITH CHECK ADD  CONSTRAINT [FK_dbo.ReferralEarning_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[ReferralEarning] CHECK CONSTRAINT [FK_dbo.ReferralEarning_dbo.User_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.Mail_dbo.Candidate_RecipientCandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Mail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Mail_dbo.Candidate_RecipientCandidateID] FOREIGN KEY([RecipientCandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[Mail] CHECK CONSTRAINT [FK_dbo.Mail_dbo.Candidate_RecipientCandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.Mail_dbo.Company_RecipientCompanyID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Mail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Mail_dbo.Company_RecipientCompanyID] FOREIGN KEY([RecipientCompanyID])
REFERENCES [dbo].[Company] ([ID])
GO
ALTER TABLE [dbo].[Mail] CHECK CONSTRAINT [FK_dbo.Mail_dbo.Company_RecipientCompanyID]
GO
/****** Object:  ForeignKey [FK_dbo.Mail_dbo.Job_RelatedToJobID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Mail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Mail_dbo.Job_RelatedToJobID] FOREIGN KEY([RelatedToJobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[Mail] CHECK CONSTRAINT [FK_dbo.Mail_dbo.Job_RelatedToJobID]
GO
/****** Object:  ForeignKey [FK_dbo.Mail_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Mail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Mail_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Mail] CHECK CONSTRAINT [FK_dbo.Mail_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Mail_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Mail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Mail_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Mail] CHECK CONSTRAINT [FK_dbo.Mail_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.Mail_dbo.User_RecipientUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[Mail]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Mail_dbo.User_RecipientUserID] FOREIGN KEY([RecipientUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[Mail] CHECK CONSTRAINT [FK_dbo.Mail_dbo.User_RecipientUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobSkill_dbo.Job_JobID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobSkill]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSkill_dbo.Job_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[JobSkill] CHECK CONSTRAINT [FK_dbo.JobSkill_dbo.Job_JobID]
GO
/****** Object:  ForeignKey [FK_dbo.JobSkill_dbo.Skill_SkillID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobSkill]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSkill_dbo.Skill_SkillID] FOREIGN KEY([SkillID])
REFERENCES [dbo].[Skill] ([ID])
GO
ALTER TABLE [dbo].[JobSkill] CHECK CONSTRAINT [FK_dbo.JobSkill_dbo.Skill_SkillID]
GO
/****** Object:  ForeignKey [FK_dbo.JobSkill_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobSkill]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSkill_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobSkill] CHECK CONSTRAINT [FK_dbo.JobSkill_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobSkill_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobSkill]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobSkill_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobSkill] CHECK CONSTRAINT [FK_dbo.JobSkill_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobRecruitmentTeam_dbo.Job_JobID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobRecruitmentTeam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobRecruitmentTeam_dbo.Job_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[JobRecruitmentTeam] CHECK CONSTRAINT [FK_dbo.JobRecruitmentTeam_dbo.Job_JobID]
GO
/****** Object:  ForeignKey [FK_dbo.JobRecruitmentTeam_dbo.JobTeamCategory_JobTeamCategoryID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobRecruitmentTeam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobRecruitmentTeam_dbo.JobTeamCategory_JobTeamCategoryID] FOREIGN KEY([JobTeamCategoryID])
REFERENCES [dbo].[JobTeamCategory] ([ID])
GO
ALTER TABLE [dbo].[JobRecruitmentTeam] CHECK CONSTRAINT [FK_dbo.JobRecruitmentTeam_dbo.JobTeamCategory_JobTeamCategoryID]
GO
/****** Object:  ForeignKey [FK_dbo.JobRecruitmentTeam_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobRecruitmentTeam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobRecruitmentTeam_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobRecruitmentTeam] CHECK CONSTRAINT [FK_dbo.JobRecruitmentTeam_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobRecruitmentTeam_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobRecruitmentTeam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobRecruitmentTeam_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobRecruitmentTeam] CHECK CONSTRAINT [FK_dbo.JobRecruitmentTeam_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobRecruitmentTeam_dbo.User_UserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobRecruitmentTeam]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobRecruitmentTeam_dbo.User_UserID] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobRecruitmentTeam] CHECK CONSTRAINT [FK_dbo.JobRecruitmentTeam_dbo.User_UserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobNote_dbo.Job_JobID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobNote_dbo.Job_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[JobNote] CHECK CONSTRAINT [FK_dbo.JobNote_dbo.Job_JobID]
GO
/****** Object:  ForeignKey [FK_dbo.JobNote_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobNote_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobNote] CHECK CONSTRAINT [FK_dbo.JobNote_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobNote_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobNote]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobNote_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobNote] CHECK CONSTRAINT [FK_dbo.JobNote_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobCandidateHireLevel_dbo.Job_JobID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobCandidateHireLevel]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobCandidateHireLevel_dbo.Job_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[JobCandidateHireLevel] CHECK CONSTRAINT [FK_dbo.JobCandidateHireLevel_dbo.Job_JobID]
GO
/****** Object:  ForeignKey [FK_dbo.JobCandidateHireLevel_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobCandidateHireLevel]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobCandidateHireLevel_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobCandidateHireLevel] CHECK CONSTRAINT [FK_dbo.JobCandidateHireLevel_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobCandidateHireLevel_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobCandidateHireLevel]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobCandidateHireLevel_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobCandidateHireLevel] CHECK CONSTRAINT [FK_dbo.JobCandidateHireLevel_dbo.User_LastUpdatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobCandidateHire_dbo.Candidate_CandidateID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobCandidateHire]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobCandidateHire_dbo.Candidate_CandidateID] FOREIGN KEY([CandidateID])
REFERENCES [dbo].[Candidate] ([ID])
GO
ALTER TABLE [dbo].[JobCandidateHire] CHECK CONSTRAINT [FK_dbo.JobCandidateHire_dbo.Candidate_CandidateID]
GO
/****** Object:  ForeignKey [FK_dbo.JobCandidateHire_dbo.Job_JobID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobCandidateHire]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobCandidateHire_dbo.Job_JobID] FOREIGN KEY([JobID])
REFERENCES [dbo].[Job] ([ID])
GO
ALTER TABLE [dbo].[JobCandidateHire] CHECK CONSTRAINT [FK_dbo.JobCandidateHire_dbo.Job_JobID]
GO
/****** Object:  ForeignKey [FK_dbo.JobCandidateHire_dbo.JobCandidateHireLevel_JobCandidateHireLevelID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobCandidateHire]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobCandidateHire_dbo.JobCandidateHireLevel_JobCandidateHireLevelID] FOREIGN KEY([JobCandidateHireLevelID])
REFERENCES [dbo].[JobCandidateHireLevel] ([ID])
GO
ALTER TABLE [dbo].[JobCandidateHire] CHECK CONSTRAINT [FK_dbo.JobCandidateHire_dbo.JobCandidateHireLevel_JobCandidateHireLevelID]
GO
/****** Object:  ForeignKey [FK_dbo.JobCandidateHire_dbo.User_CreatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobCandidateHire]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobCandidateHire_dbo.User_CreatedByUserID] FOREIGN KEY([CreatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobCandidateHire] CHECK CONSTRAINT [FK_dbo.JobCandidateHire_dbo.User_CreatedByUserID]
GO
/****** Object:  ForeignKey [FK_dbo.JobCandidateHire_dbo.User_LastUpdatedByUserID]    Script Date: 07/21/2014 21:00:42 ******/
ALTER TABLE [dbo].[JobCandidateHire]  WITH CHECK ADD  CONSTRAINT [FK_dbo.JobCandidateHire_dbo.User_LastUpdatedByUserID] FOREIGN KEY([LastUpdatedByUserID])
REFERENCES [dbo].[User] ([ID])
GO
ALTER TABLE [dbo].[JobCandidateHire] CHECK CONSTRAINT [FK_dbo.JobCandidateHire_dbo.User_LastUpdatedByUserID]
GO
