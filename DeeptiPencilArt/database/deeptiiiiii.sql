USE [master]
GO
/****** Object:  Database [DeeptiPencilArt]    Script Date: 07-05-2024 14:32:05 ******/
CREATE DATABASE [DeeptiPencilArt]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DeeptiPencilArt', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DeeptiPencilArt.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DeeptiPencilArt_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\DeeptiPencilArt_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DeeptiPencilArt] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DeeptiPencilArt].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DeeptiPencilArt] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET ARITHABORT OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DeeptiPencilArt] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DeeptiPencilArt] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DeeptiPencilArt] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DeeptiPencilArt] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DeeptiPencilArt] SET  MULTI_USER 
GO
ALTER DATABASE [DeeptiPencilArt] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DeeptiPencilArt] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DeeptiPencilArt] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DeeptiPencilArt] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DeeptiPencilArt] SET DELAYED_DURABILITY = DISABLED 
GO
USE [DeeptiPencilArt]
GO
/****** Object:  Table [dbo].[About]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[About](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](255) NOT NULL,
	[Heading] [varchar](255) NOT NULL,
	[about] [varchar](max) NOT NULL,
	[Opening_time] [varchar](255) NOT NULL,
	[Visit] [varchar](255) NOT NULL,
	[status] [varchar](255) NOT NULL,
	[rts] [datetime] NOT NULL,
 CONSTRAINT [PK__About__3213E83F058C6E1A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cart]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Cart](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_id] [varchar](255) NOT NULL,
	[Painting_id] [int] NOT NULL,
	[Frame_id] [varchar](255) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Size] [varchar](255) NULL,
	[status] [varchar](255) NOT NULL,
	[rts] [datetime] NOT NULL,
 CONSTRAINT [PK__Cart__3213E83FD35D5999] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [varchar](255) NULL,
	[image] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[rts] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[comment]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[comment](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[P_id] [varchar](255) NULL,
	[image] [varchar](255) NULL,
	[rating] [int] NULL,
	[c_name] [varchar](255) NULL,
	[comment] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[rts] [varchar](255) NULL,
 CONSTRAINT [PK__comment__3213E83FCE2638C3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Company_Detail]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Company_Detail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Comapany_Name] [varchar](255) NOT NULL,
	[Company_logo] [varchar](255) NOT NULL,
	[Company_Address] [nvarchar](max) NOT NULL,
	[Company_Contact_Number] [varchar](255) NOT NULL,
	[Company_googleMap_link] [nvarchar](max) NOT NULL,
	[Company_Email] [varchar](255) NOT NULL,
	[Opening_time] [varchar](255) NOT NULL,
	[status] [varchar](255) NOT NULL,
	[rts] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Frame_TBL1]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Frame_TBL1](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FrameCategory] [varchar](255) NULL,
	[Frame] [varchar](255) NOT NULL,
	[status] [varchar](255) NULL,
	[rts] [varchar](255) NULL,
 CONSTRAINT [PK__Frame_TB__3213E83FF24D8D2A] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[login]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[login](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](255) NOT NULL,
	[Password] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order_tbl]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Customer_id] [varchar](255) NOT NULL,
	[Painting_id] [varchar](255) NOT NULL,
	[Frame_id] [varchar](max) NOT NULL,
	[Quantity] [varchar](255) NOT NULL,
	[Size] [varchar](255) NOT NULL,
	[Order_date] [varchar](255) NOT NULL,
	[Shipping_id] [varchar](255) NOT NULL,
	[status] [varchar](255) NOT NULL,
	[rts] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[our_team]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[our_team](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[image] [varchar](255) NOT NULL,
	[Emp_name] [varchar](255) NULL,
	[position] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[rts] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Category_id] [varchar](255) NOT NULL,
	[SubCategoryId] [varchar](255) NULL,
	[image] [varchar](255) NULL,
	[Product_Name] [varchar](255) NULL,
	[Product_Description] [nvarchar](max) NULL,
	[Price] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[rts] [varchar](255) NULL,
 CONSTRAINT [PK__Product__3213E83F3B75A2B4] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Shipping_tbl]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Shipping_tbl](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Order_id] [varchar](255) NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[Email] [varchar](max) NOT NULL,
	[Contact] [varchar](255) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[State] [varchar](255) NOT NULL,
	[City] [varchar](255) NOT NULL,
	[PinCode] [varchar](255) NOT NULL,
	[Order_note] [varchar](255) NOT NULL,
	[status] [varchar](255) NOT NULL,
	[rts] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [varchar](255) NULL,
	[SubCategory] [varchar](255) NULL,
	[image] [varchar](255) NULL,
	[status] [varchar](255) NULL,
	[rts] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[test]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[test](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Age] [int] NULL,
 CONSTRAINT [PK_test] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrnOrderDetail]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrnOrderDetail](
	[AID] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNo] [int] NOT NULL,
	[OrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [numeric](18, 0) NOT NULL,
	[Rate] [numeric](18, 0) NOT NULL,
	[Size] [varchar](50) NOT NULL,
	[Frame_id] [varchar](50) NOT NULL,
	[Amount] [numeric](18, 0) NOT NULL,
	[DeliveryFees] [numeric](18, 0) NOT NULL,
	[NetAmount] [numeric](18, 0) NOT NULL,
	[Cancelled] [bit] NOT NULL,
	[Delivered] [bit] NOT NULL,
	[Returned] [bit] NOT NULL,
	[Dispatched] [bit] NOT NULL,
	[RTS] [datetime] NOT NULL,
	[DeliveryDate] [datetime] NOT NULL,
	[DeliveryCharges] [numeric](18, 0) NOT NULL,
	[remark] [nvarchar](max) NULL,
 CONSTRAINT [PK_TrnOrderDetail] PRIMARY KEY CLUSTERED 
(
	[AID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrnOrderMain]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrnOrderMain](
	[AID] [int] IDENTITY(1,1) NOT NULL,
	[OrderId] [int] NOT NULL,
	[Usercode] [int] NOT NULL,
	[OrderAmount] [numeric](18, 0) NOT NULL,
	[PaidAmount] [numeric](18, 0) NOT NULL,
	[TotalQuantity] [numeric](18, 0) NOT NULL,
	[DeliveryFees] [numeric](18, 0) NOT NULL,
	[Amount] [numeric](18, 0) NOT NULL,
	[Paymode] [varchar](50) NOT NULL,
	[TrnId] [nvarchar](max) NOT NULL,
	[TrnStatus] [varchar](100) NOT NULL,
	[OrderThrough] [varchar](50) NOT NULL,
	[ShippingName] [varchar](100) NOT NULL,
	[ShippingAddress] [varchar](max) NOT NULL,
	[ShippingMobileNo] [varchar](12) NOT NULL,
	[ShippingEmailId] [varchar](max) NOT NULL,
	[ShippingCity] [varchar](100) NOT NULL,
	[ShippingZipcode] [varchar](10) NOT NULL,
	[ShippingState] [varchar](50) NOT NULL,
	[Delivered] [bit] NOT NULL,
	[Cancelled] [bit] NOT NULL,
	[Returned] [bit] NOT NULL,
	[Dispatched] [bit] NOT NULL,
	[Settlement] [bit] NOT NULL,
	[RTS] [datetime] NOT NULL,
	[remark] [nvarchar](max) NULL,
	[sid] [int] NULL,
 CONSTRAINT [PK_TrnOrder_C3905BCF53FA2DFA] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User_Enquiry]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Enquiry](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [nvarchar](max) NULL,
	[user_email] [nvarchar](max) NULL,
	[user_number] [nvarchar](max) NULL,
	[user_message] [nvarchar](max) NULL,
	[rts] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User_Registration]    Script Date: 07-05-2024 14:32:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User_Registration](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[user_name] [varchar](255) NOT NULL,
	[user_email] [varchar](255) NOT NULL,
	[user_contact] [varchar](255) NOT NULL,
	[user_pass] [varchar](255) NOT NULL,
	[status] [varchar](255) NOT NULL,
	[rts] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([id], [image], [Heading], [about], [Opening_time], [Visit], [status], [rts]) VALUES (1, N'WhatsApp Image 2023-07-01 at 12.45.58 PM.jpeg', N'Skour', N'<p>Deimante Bruzguliene is a portrait artist based in the U.K. Deimante works in a variety of media including acrylic, oil, pastel, watercolor, graphite and mixed media and a large range of limited edition prints is also available.</p>

<p>I have drawn with pencil for longer than I can remember.</p>

<p>I love painting. I work with passion and love. It is like a second nature to me. My painting is a kind of therapy for me. It lets me say things that i cannot express any other way and at the same time allows me to populate the space around me with artifacts of myself. The paintings I currently have on my website are mostly very recent, and I am learning something new with each one. I hope you will revisit my galleries often, and that you will enjoy seeing the work as it develops. If you would like to commission a portrait, or other painting, please feel free to contact me.</p>
', N'10:00-2:00pm', N'patel nagar', N'1', CAST(N'2023-06-27 16:59:34.763' AS DateTime))
SET IDENTITY_INSERT [dbo].[About] OFF
SET IDENTITY_INSERT [dbo].[Cart] ON 

INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (1, N'Skour0506@gmail.com', 1, N'4', 5, NULL, N'1', CAST(N'2023-07-07 15:32:16.763' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (4, N'Diyaa@gmail.com', 8, N'1', 5, NULL, N'1', CAST(N'2023-07-08 11:23:07.127' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (5, N'Skour0506@gmail.com', 8, N'', 1, NULL, N'1', CAST(N'2023-07-08 11:52:35.023' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (6, N'Skour0506@gmail.com', 8, N'', 1, NULL, N'1', CAST(N'2023-07-08 11:52:44.877' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (7, N'Skour0506@gmail.com', 8, N'', 1, NULL, N'1', CAST(N'2023-07-08 11:53:04.993' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (8, N'Skour0506@gmail.com', 8, N'', 1, NULL, N'1', CAST(N'2023-07-08 11:53:17.043' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (9, N'Skour0506@gmail.com', 8, N'', 1, NULL, N'1', CAST(N'2023-07-08 11:53:32.037' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (10, N'Skour0506@gmail.com', 8, N'', 1, NULL, N'1', CAST(N'2023-07-08 11:55:16.583' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (11, N'Skour0506@gmail.com', 8, N'', 1, NULL, N'1', CAST(N'2023-07-08 11:55:28.423' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (12, N'Skour0506@gmail.com', 8, N'', 1, NULL, N'1', CAST(N'2023-07-08 11:56:26.140' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (13, N'Diyaa@gmail.com', 6, N'', 2, NULL, N'1', CAST(N'2023-07-08 12:09:58.260' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (14, N'Skour0506@gmail.com', 6, N'4', 5, NULL, N'1', CAST(N'2023-07-08 12:16:08.400' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (2014, N'Skour0506@gmail.com', 7, N'7', 3, NULL, N'1', CAST(N'2023-07-12 15:07:25.383' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (3014, N'goswamivikash078@gmail.com', 7, N'4', 8, NULL, N'1', CAST(N'2023-07-20 14:16:50.100' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (6014, N'Skour0506@gmail.com', 9, N'', 1, NULL, N'1', CAST(N'2023-08-01 10:49:31.100' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (6015, N'Skour0506@gmail.com', 1, N'6', 5, NULL, N'1', CAST(N'2023-08-01 11:48:15.653' AS DateTime))
INSERT [dbo].[Cart] ([id], [Customer_id], [Painting_id], [Frame_id], [Quantity], [Size], [status], [rts]) VALUES (7014, N'Diyaa@gmail.com', 5, N'4', 10, NULL, N'1', CAST(N'2023-08-03 16:28:11.627' AS DateTime))
SET IDENTITY_INSERT [dbo].[Cart] OFF
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([id], [CategoryName], [image], [status], [rts]) VALUES (1, N'Sketch', N'shivji4.jpeg', N'1', N'Jun  2 2023  5:35PM')
INSERT [dbo].[Category] ([id], [CategoryName], [image], [status], [rts]) VALUES (2, N'Mandala Art', N'shankh1.jpeg', N'1', N'Jun  2 2023  5:36PM')
INSERT [dbo].[Category] ([id], [CategoryName], [image], [status], [rts]) VALUES (3, N'Coloured', N'peacock1.jpeg', N'1', N'Jun 23 2023 12:48PM')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[comment] ON 

INSERT [dbo].[comment] ([id], [P_id], [image], [rating], [c_name], [comment], [status], [rts]) VALUES (1, N'5', N'diwali.jpeg', 2, N'Vikas', N'qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty qwerty ', N'1', N'Jul 27 2023 11:03AM')
INSERT [dbo].[comment] ([id], [P_id], [image], [rating], [c_name], [comment], [status], [rts]) VALUES (3, N'10', N'WhatsApp Image 2023-07-01 at 6.50.05 PM.jpeg', 3, N'Vikas', N'qwerty qwerty qwerty qwerty qwerty qwerty ', N'1', N'Jul 27 2023 11:04AM')
INSERT [dbo].[comment] ([id], [P_id], [image], [rating], [c_name], [comment], [status], [rts]) VALUES (4, N'10', N'baba1.jpeg', 3, N'diyaaaa', N'qwerty qwerty qwerty qwerty qwerty ', N'0', N'Jul 27 2023 11:05AM')
SET IDENTITY_INSERT [dbo].[comment] OFF
SET IDENTITY_INSERT [dbo].[Company_Detail] ON 

INSERT [dbo].[Company_Detail] ([id], [Comapany_Name], [Company_logo], [Company_Address], [Company_Contact_Number], [Company_googleMap_link], [Company_Email], [Opening_time], [status], [rts]) VALUES (2, N'DeeptiPencilArt', N'logo.png', N'B 301 New Gokul Heights CHSL, Near Tera Panth Bhawan, Thakur Complex, Kandivali(East), Mumbai', N'93262 72458', N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3767.6909638883285!2d72.85906742438516!3d19.208695597794975!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3be7b7c54b5f8cf7%3A0x16e1506bbf73e4ef!2sGokul%20Heights%20(Thakur%20Complex)!5e0!3m2!1sen!2sin!4v1686165379796!5m2!1sen!2sin', N'Info@Databoltahi.Com', N'10:00-2:00', N'1', CAST(N'2023-06-07 15:03:21.670' AS DateTime))
SET IDENTITY_INSERT [dbo].[Company_Detail] OFF
SET IDENTITY_INSERT [dbo].[Frame_TBL1] ON 

INSERT [dbo].[Frame_TBL1] ([id], [FrameCategory], [Frame], [status], [rts]) VALUES (1, N'Wooden', N'1.png', N'1', N'Jun 12 2023  2:22PM')
INSERT [dbo].[Frame_TBL1] ([id], [FrameCategory], [Frame], [status], [rts]) VALUES (2, N'Wooden', N'2.png', N'1', N'Jun 12 2023  2:22PM')
INSERT [dbo].[Frame_TBL1] ([id], [FrameCategory], [Frame], [status], [rts]) VALUES (3, N'Wooden', N'3.png', N'1', N'Jun 12 2023  2:23PM')
INSERT [dbo].[Frame_TBL1] ([id], [FrameCategory], [Frame], [status], [rts]) VALUES (4, N'Wooden', N'4.png', N'1', N'Jun 12 2023  2:23PM')
INSERT [dbo].[Frame_TBL1] ([id], [FrameCategory], [Frame], [status], [rts]) VALUES (5, N'Wooden', N'5.png', N'1', N'Jul  3 2023 12:39PM')
INSERT [dbo].[Frame_TBL1] ([id], [FrameCategory], [Frame], [status], [rts]) VALUES (6, N'Wooden', N'6.png', N'1', N'Jul  3 2023 12:57PM')
INSERT [dbo].[Frame_TBL1] ([id], [FrameCategory], [Frame], [status], [rts]) VALUES (7, N'Wooden', N'frame.png', N'1', N'Jul  4 2023  1:45PM')
SET IDENTITY_INSERT [dbo].[Frame_TBL1] OFF
SET IDENTITY_INSERT [dbo].[login] ON 

INSERT [dbo].[login] ([id], [Username], [Password]) VALUES (1, N'Simran', N'Skour')
SET IDENTITY_INSERT [dbo].[login] OFF
SET IDENTITY_INSERT [dbo].[our_team] ON 

INSERT [dbo].[our_team] ([id], [image], [Emp_name], [position], [status], [rts]) VALUES (1, N'bal krishan1.jpeg', N'ommmmmm', N'#Senior Developer', N'1', N'Jun  5 2023 12:49PM')
INSERT [dbo].[our_team] ([id], [image], [Emp_name], [position], [status], [rts]) VALUES (2, N'pasS.jpg', N'Vikas', N'Employee', N'1', N'Jun  6 2023  4:07PM')
SET IDENTITY_INSERT [dbo].[our_team] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([id], [Category_id], [SubCategoryId], [image], [Product_Name], [Product_Description], [Price], [status], [rts]) VALUES (1, N'1', N'1', N'shivji4.jpeg', N'Shiv Ji', N'<p>Shiva is all and everything; he is the Universe.</p>
', N'255', N'1', N'Jun  2 2023 12:55PM')
INSERT [dbo].[Product] ([id], [Category_id], [SubCategoryId], [image], [Product_Name], [Product_Description], [Price], [status], [rts]) VALUES (4, N'1', N'1', N'ram ji 1.jpeg', N'Ram ji And Hanuman Ji', N'<p>The divine relationship between Lord Ram and his disciple Lord Hanuman cannot be described with mere words.Lord Ram won many battles in which a major role was played by Lord Hanuman.</p>
', N'455', N'1', N'Jun  2 2023  4:11PM')
INSERT [dbo].[Product] ([id], [Category_id], [SubCategoryId], [image], [Product_Name], [Product_Description], [Price], [status], [rts]) VALUES (5, N'1', N'1', N'img1.jpeg', N'Ganpati', N'<p>Lord Ganesha, also known as Ganesh Ji or Vinayaka, is one of the most beloved deities in Hinduism. He is revered as the remover of obstacles, the lord of beginnings, wisdom, and intelligence. Here are some key points about Lord Ganesha:</p>

<p>Elephant-headed God: Ganesha is easily recognizable by his elephant head, which represents wisdom, intelligence, and divine power. He is often depicted with a plump human body and multiple arms, carrying various symbolic items.</p>

<p>Remover of Obstacles: Ganesha is widely worshipped as the deity who removes obstacles and brings success and prosperity. Devotees seek his blessings before starting any new venture, ceremony, or important task. He is believed to clear the path, remove hindrances, and ensure smooth transitions.</p>

<p>Symbolism: Lord Ganesha&#39;s appearance carries deep symbolism. His large elephant head signifies his wisdom and ability to think beyond ordinary limitations. The broken tusk in his hand represents sacrifice and the willingness to give up worldly attachments for spiritual growth. His rotund belly symbolizes contentment, abundance, and the ability to digest both the pleasant and unpleasant experiences of life.</p>

<p>Elephant Symbolism: Elephants are revered in many cultures for their strength, intelligence, and memory. In the case of Ganesha, the elephant head represents his immense wisdom and ability to perceive both the subtle and gross aspects of reality.</p>

<p>Consort and Family: Ganesha is often depicted with his consort, Goddess Siddhi (spiritual power), and Goddess Riddhi (prosperity). He is also considered the son of Lord Shiva and Goddess Parvati. In some traditions, he is regarded as the elder brother of Lord Kartikeya.</p>

<p>&nbsp;Festivals: Ganesh Chaturthi is the main festival dedicated to Lord Ganesha. It is celebrated with great enthusiasm in many parts of India and by Hindu communities worldwide. During this festival, Ganesha idols are installed in homes and public spaces, and prayers and offerings are made to seek his blessings.</p>

<p>Universal Appeal: Ganesha is widely venerated beyond the boundaries of Hinduism. His imagery and symbolism have transcended religious barriers, making him a popular figure embraced by people of various faiths and spiritual traditions.</p>

<p>The worship of Lord Ganesha represents the belief in overcoming obstacles, seeking wisdom, and embarking on new beginnings with divine guidance. His benevolence and charm have made him a beloved and revered deity in Hindu culture.</p>
', N'255', N'1', N'Jun  3 2023 12:11PM')
INSERT [dbo].[Product] ([id], [Category_id], [SubCategoryId], [image], [Product_Name], [Product_Description], [Price], [status], [rts]) VALUES (6, N'2', N'1', N'shankh1.jpeg', N'Shankh', N'<p>Shankh may appear to be small in size, but it has great healing and vibrational powers.</p>
', N'555', N'1', N'Jun  3 2023  1:37PM')
INSERT [dbo].[Product] ([id], [Category_id], [SubCategoryId], [image], [Product_Name], [Product_Description], [Price], [status], [rts]) VALUES (7, N'2', N'1', N'shivji2.jpeg', N'Shivji', N'<p>it is made in manadala art.Shivji&#39;s three eyes</p>
', N' 355', N'1', N'Jun  3 2023  1:48PM')
INSERT [dbo].[Product] ([id], [Category_id], [SubCategoryId], [image], [Product_Name], [Product_Description], [Price], [status], [rts]) VALUES (8, N'2', N'1', N'mandalaart1.jpeg', N'Mandala Designs', N'<p>Mandala art has been a popular form of expression and meditation for centuries.</p>
', N'255', N'1', N'Jun  3 2023  1:56PM')
INSERT [dbo].[Product] ([id], [Category_id], [SubCategoryId], [image], [Product_Name], [Product_Description], [Price], [status], [rts]) VALUES (9, N'3', N'1', N'peacock1.jpeg', N'Peacock', N'<p>A peacock has too little in its head, too much in its tail</p>
', N'255', N'1', N'Jun 23 2023 12:54PM')
INSERT [dbo].[Product] ([id], [Category_id], [SubCategoryId], [image], [Product_Name], [Product_Description], [Price], [status], [rts]) VALUES (10, N'1', N'3', N'img2.jpeg', N'Buddha Sketch', N'<p>Buddhism does not consider the historical figure of Siddhartha Gautama, commonly known as the Buddha, as a god. Instead, Buddhism views the Buddha as an enlightened being, a teacher, and a guide who attained enlightenment through his own efforts and then shared his teachings with others.</p>

<p>The Buddha, whose name means &quot;the awakened one,&quot; is highly revered in Buddhism for his profound understanding of the nature of suffering and the path to liberation. His teachings, known as the Dharma, form the foundation of Buddhism and provide guidance for individuals seeking to alleviate suffering and attain enlightenment.</p>

<p>Buddhism is a non-theistic religion, meaning that it does not involve belief in a supreme creator god or deities who control or govern human life. The focus in Buddhism is on personal spiritual development, ethical conduct, mindfulness, and the pursuit of wisdom.</p>

<p>While the Buddha is not considered a god in Buddhism, there are various forms of devotional practices and rituals associated with him. Devotees may offer respect, gratitude, and homage to the Buddha through acts such as making offerings, chanting prayers or mantras, and engaging in meditation practices inspired by his teachings.</p>

<p>It&#39;s important to note that Buddhism encompasses diverse traditions and cultural variations, and the way the Buddha is revered and worshipped can vary within different Buddhist communities. However, the central tenets of Buddhism emphasize the Buddha as a spiritual guide rather than a deity.</p>
', N'400', N'1', N'Jul 15 2023 12:49PM')
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[Shipping_tbl] ON 

INSERT [dbo].[Shipping_tbl] ([id], [Order_id], [Name], [Email], [Contact], [Address], [State], [City], [PinCode], [Order_note], [status], [rts]) VALUES (1, N'1', N'Simran kour', N's@gmail.com', N'1234567890', N'hggggg', N'Rajasthan', N'bhilwara', N'311001', N'ssssssssssss', N'1', CAST(N'2023-07-08 12:35:04.330' AS DateTime))
INSERT [dbo].[Shipping_tbl] ([id], [Order_id], [Name], [Email], [Contact], [Address], [State], [City], [PinCode], [Order_note], [status], [rts]) VALUES (2, N'2', N'Simran kour', N's@gmail.com', N'1234567890', N'hggggg', N'Rajasthan', N'bhilwara', N'311001', N'ssssssssssss', N'1', CAST(N'2023-07-08 12:35:04.340' AS DateTime))
INSERT [dbo].[Shipping_tbl] ([id], [Order_id], [Name], [Email], [Contact], [Address], [State], [City], [PinCode], [Order_note], [status], [rts]) VALUES (3, N'14', N'Simran kour', N's@gmail.com', N'1234567890', N'hggggg', N'Rajasthan', N'bhilwara', N'311001', N'ssssssssssss', N'1', CAST(N'2023-07-08 12:35:04.360' AS DateTime))
INSERT [dbo].[Shipping_tbl] ([id], [Order_id], [Name], [Email], [Contact], [Address], [State], [City], [PinCode], [Order_note], [status], [rts]) VALUES (4, N'15', N'Simran kour', N's@gmail.com', N'1234567890', N'hggggg', N'Rajasthan', N'bhilwara', N'311001', N'ssssssssssss', N'1', CAST(N'2023-07-08 12:35:04.387' AS DateTime))
INSERT [dbo].[Shipping_tbl] ([id], [Order_id], [Name], [Email], [Contact], [Address], [State], [City], [PinCode], [Order_note], [status], [rts]) VALUES (1002, N'4', N'Simran kour', N's@gmail.com', N'1234567890', N'xzzzzzzzzzzzzzzzzxxzzxx', N'Rajasthan', N'bhilwara', N'31100', N'sddddddddddddddddddddddddddddd', N'1', CAST(N'2023-07-15 15:18:02.007' AS DateTime))
INSERT [dbo].[Shipping_tbl] ([id], [Order_id], [Name], [Email], [Contact], [Address], [State], [City], [PinCode], [Order_note], [status], [rts]) VALUES (1003, N'4', N'Simran kour', N's@gmail.com', N'1234567890', N'xzzzzzzzzzzzzzzzzxxzzxx', N'Rajasthan', N'bhilwara', N'31100', N'sddddddddddddddddddddddddddddd', N'1', CAST(N'2023-07-15 15:18:34.137' AS DateTime))
INSERT [dbo].[Shipping_tbl] ([id], [Order_id], [Name], [Email], [Contact], [Address], [State], [City], [PinCode], [Order_note], [status], [rts]) VALUES (1004, N'4', N'Simran kour', N's@gmail.com', N'1234567890', N'xzzzzzzzzzzzzzzzzxxzzxx', N'Rajasthan', N'bhilwara', N'31100', N'sddddddddddddddddddddddddddddd', N'1', CAST(N'2023-07-15 15:18:45.017' AS DateTime))
SET IDENTITY_INSERT [dbo].[Shipping_tbl] OFF
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (2, N'1', N'Hinduism', N'img4.jpeg', N'1', N'Aug  3 2023 12:43PM')
INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (3, N'1', N'Budhhism', N'budhha1.jpeg', N'1', N'Aug  3 2023 12:56PM')
INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (4, N'1', N'Sikhism', N'', N'1', N'Aug  3 2023 12:56PM')
INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (5, N'1', N'jainism', N'', N'1', N'Aug  3 2023 12:56PM')
INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (6, N'2', N'Hinduism', N'img1.jpeg', N'1', N'Aug  3 2023 12:57PM')
INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (7, N'2', N'Budhhism', N'WhatsApp Image 2023-07-03 at 3.04.49 PM.jpeg', N'1', N'Aug  3 2023 12:57PM')
INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (8, N'2', N'Sikhism', N'', N'1', N'Aug  3 2023 12:57PM')
INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (9, N'2', N'jainism', N'', N'1', N'Aug  3 2023 12:57PM')
INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (10, N'3', N'Hinduism', N'shivji4.jpeg', N'1', N'Aug  3 2023 12:57PM')
INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (11, N'3', N'Budhhism', N'budhha1.jpeg', N'1', N'Aug  3 2023 12:58PM')
INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (12, N'3', N'Sikhism', N'', N'1', N'Aug  3 2023 12:58PM')
INSERT [dbo].[SubCategory] ([id], [CategoryId], [SubCategory], [image], [status], [rts]) VALUES (13, N'3', N'jainism', N'', N'1', N'Aug  3 2023 12:58PM')
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
SET IDENTITY_INSERT [dbo].[User_Enquiry] ON 

INSERT [dbo].[User_Enquiry] ([id], [user_name], [user_email], [user_number], [user_message], [rts]) VALUES (1, N'Simran kour', N's@gmail.com', N'7976300121', N'SkourSkourSkourSkourSkour', CAST(N'2023-07-15 17:20:51.390' AS DateTime))
INSERT [dbo].[User_Enquiry] ([id], [user_name], [user_email], [user_number], [user_message], [rts]) VALUES (2, N'Simran kour', N's@gmail.com', N'7976300121', N'SkourSkourSkourSkourSkour', CAST(N'2023-07-15 17:22:41.573' AS DateTime))
SET IDENTITY_INSERT [dbo].[User_Enquiry] OFF
SET IDENTITY_INSERT [dbo].[User_Registration] ON 

INSERT [dbo].[User_Registration] ([id], [user_name], [user_email], [user_contact], [user_pass], [status], [rts]) VALUES (1, N'Simran Kour', N'Skour0506@gmail.com', N'7976300121', N'Skour', N'1', CAST(N'2023-07-07 15:31:32.613' AS DateTime))
INSERT [dbo].[User_Registration] ([id], [user_name], [user_email], [user_contact], [user_pass], [status], [rts]) VALUES (2, N'Diyaaa', N'Diyaa@gmail.com', N'9876753222', N'1234', N'1', CAST(N'2023-07-08 11:22:28.153' AS DateTime))
INSERT [dbo].[User_Registration] ([id], [user_name], [user_email], [user_contact], [user_pass], [status], [rts]) VALUES (3, N'Vikas', N'goswamivikash078@gmail.com', N'9876753222', N'11', N'1', CAST(N'2023-07-19 13:05:04.683' AS DateTime))
INSERT [dbo].[User_Registration] ([id], [user_name], [user_email], [user_contact], [user_pass], [status], [rts]) VALUES (4, N'Vikas', N'goswamivikash07@gmail.com', N'9876753222', N'11', N'1', CAST(N'2023-07-19 13:06:07.643' AS DateTime))
SET IDENTITY_INSERT [dbo].[User_Registration] OFF
ALTER TABLE [dbo].[TrnOrderDetail] ADD  CONSTRAINT [DF_TrnOrderDeSize_7EACC042]  DEFAULT ('') FOR [Size]
GO
ALTER TABLE [dbo].[TrnOrderDetail] ADD  CONSTRAINT [DF_TrnOrderDColor_7FA0E47B]  DEFAULT ('') FOR [Frame_id]
GO
ALTER TABLE [dbo].[TrnOrderDetail] ADD  CONSTRAINT [DF_TrnOrderDCance_009508B4]  DEFAULT ((0)) FOR [Cancelled]
GO
ALTER TABLE [dbo].[TrnOrderDetail] ADD  CONSTRAINT [DF_TrnOrderDDeliv_01892CED]  DEFAULT ((0)) FOR [Delivered]
GO
ALTER TABLE [dbo].[TrnOrderDetail] ADD  CONSTRAINT [DF_TrnOrderDRetur_027D5126]  DEFAULT ((0)) FOR [Returned]
GO
ALTER TABLE [dbo].[TrnOrderDetail] ADD  CONSTRAINT [DF_TrnOrderDetail_Dispatched]  DEFAULT ((0)) FOR [Dispatched]
GO
ALTER TABLE [dbo].[TrnOrderDetail] ADD  CONSTRAINT [DF_TrnOrderDetRTS_0371755F]  DEFAULT (getdate()) FOR [RTS]
GO
ALTER TABLE [dbo].[TrnOrderDetail] ADD  CONSTRAINT [DF_TrnOrderDDeliv_697C9932]  DEFAULT (getdate()) FOR [DeliveryDate]
GO
ALTER TABLE [dbo].[TrnOrderDetail] ADD  CONSTRAINT [DF_TrnOrderDDeliv_024846FC]  DEFAULT ((0)) FOR [DeliveryCharges]
GO
ALTER TABLE [dbo].[TrnOrderMain] ADD  CONSTRAINT [DF_TrnOrderMain_PaidAmount]  DEFAULT ((0)) FOR [PaidAmount]
GO
ALTER TABLE [dbo].[TrnOrderMain] ADD  CONSTRAINT [DF_TrnOrderMTrnId_78F3E6EC]  DEFAULT ('') FOR [TrnId]
GO
ALTER TABLE [dbo].[TrnOrderMain] ADD  CONSTRAINT [DF_TrnOrderMTrnSt_79E80B25]  DEFAULT ('') FOR [TrnStatus]
GO
ALTER TABLE [dbo].[TrnOrderMain] ADD  CONSTRAINT [DF_TrnOrderMDeliv_7ADC2F5E]  DEFAULT ((0)) FOR [Delivered]
GO
ALTER TABLE [dbo].[TrnOrderMain] ADD  CONSTRAINT [DF_TrnOrderMain_Cancelled]  DEFAULT ((0)) FOR [Cancelled]
GO
ALTER TABLE [dbo].[TrnOrderMain] ADD  CONSTRAINT [DF_TrnOrderMain_Returned]  DEFAULT ((0)) FOR [Returned]
GO
ALTER TABLE [dbo].[TrnOrderMain] ADD  CONSTRAINT [DF_TrnOrderMain_Dispatched]  DEFAULT ((0)) FOR [Dispatched]
GO
ALTER TABLE [dbo].[TrnOrderMain] ADD  CONSTRAINT [DF_TrnOrderMain_Settlement]  DEFAULT ((0)) FOR [Settlement]
GO
ALTER TABLE [dbo].[TrnOrderMain] ADD  CONSTRAINT [DF_TrnOrderMaiRTS_7BD05397]  DEFAULT (getdate()) FOR [RTS]
GO
USE [master]
GO
ALTER DATABASE [DeeptiPencilArt] SET  READ_WRITE 
GO
