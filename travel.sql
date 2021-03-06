USE [TravelManagement]
GO
/****** Object:  Table [dbo].[tbl_Payment]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Payment](
	[PaymentStatusID] [int] IDENTITY(1,1) NOT NULL,
	[PaymentStatus] [nvarchar](50) NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_HotelType]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_HotelType](
	[HotelTypeID] [int] NOT NULL,
	[HotelType] [nvarchar](50) NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_HotelType] PRIMARY KEY CLUSTERED 
(
	[HotelTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Hotel]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Hotel](
	[HotelID] [int] IDENTITY(1,1) NOT NULL,
	[HotelName] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Telephone] [nchar](11) NULL,
	[Address] [text] NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_Hotel] PRIMARY KEY CLUSTERED 
(
	[HotelID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Customer]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[Telephone] [nchar](11) NULL,
	[Address] [text] NULL,
	[Identify] [nchar](11) NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_Customer] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Company]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Company](
	[Id] [int] NOT NULL,
	[CompanyName] [nchar](10) NULL,
 CONSTRAINT [PK_tbl_Company] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CarTypeID]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CarTypeID](
	[CarTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CarType] [nvarchar](50) NULL,
	[CarProperty] [nvarchar](max) NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_CarTypeID] PRIMARY KEY CLUSTERED 
(
	[CarTypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_CarStatus]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_CarStatus](
	[CarStatusID] [int] IDENTITY(1,1) NOT NULL,
	[CarStatus] [nvarchar](50) NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_CarStatus] PRIMARY KEY CLUSTERED 
(
	[CarStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_UserRole]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_UserRole](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[Role] [nchar](10) NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_User]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Password] [text] NOT NULL,
	[FullName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Phone] [char](15) NULL,
	[Address] [ntext] NULL,
	[Avatar] [image] NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TourStatus]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_TourStatus](
	[TourStatusID] [int] NOT NULL,
	[TourStatus] [nchar](50) NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_TourStatus] PRIMARY KEY CLUSTERED 
(
	[TourStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_RoomStatus]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_RoomStatus](
	[RoomStatusID] [int] IDENTITY(1,1) NOT NULL,
	[RoomStatus] [text] NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_RoomStatus] PRIMARY KEY CLUSTERED 
(
	[RoomStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Room]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Room](
	[RoomID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[HotelID] [int] NULL,
	[DateStart] [smalldatetime] NULL,
	[DateFinish] [smalldatetime] NULL,
	[Quanlity] [int] NULL,
	[Details] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Price] [decimal](18, 0) NULL,
	[RoomStatusID] [int] NULL,
	[PaymentDatePlan] [smalldatetime] NULL,
	[PaymentDateActual] [smalldatetime] NULL,
	[PaymentStatusID] [int] NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_Room] PRIMARY KEY CLUSTERED 
(
	[RoomID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Tour]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Tour](
	[TourID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[TourName] [nvarchar](500) NULL,
	[DateStart] [smalldatetime] NULL,
	[DateFinish] [smalldatetime] NULL,
	[Details] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[TourStatusID] [int] NOT NULL,
	[PaymentDatePlan] [smalldatetime] NULL,
	[PaymentDateActual] [smalldatetime] NULL,
	[PaymentStatusID] [int] NOT NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_Tour] PRIMARY KEY CLUSTERED 
(
	[TourID] ASC,
	[CustomerID] ASC,
	[TourStatusID] ASC,
	[PaymentStatusID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_Car]    Script Date: 04/24/2016 15:29:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Car](
	[CarID] [int] IDENTITY(1,1) NOT NULL,
	[CarStatusID] [int] NULL,
	[CustomerID] [int] NULL,
	[CarName] [nvarchar](max) NULL,
	[DateStart] [smalldatetime] NULL,
	[DateFinish] [smalldatetime] NULL,
	[CartTypeID] [int] NULL,
	[Details] [text] NULL,
	[Notes] [text] NULL,
	[Price] [decimal](18, 0) NULL,
	[PaymentDatePlan] [smalldatetime] NULL,
	[PaymentDateActual] [smalldatetime] NULL,
	[PaymentStatusID] [int] NULL,
	[DeleteFlag] [int] NULL,
 CONSTRAINT [PK_tbl_Car] PRIMARY KEY CLUSTERED 
(
	[CarID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_tbl_Car_tbl_CarStatus]    Script Date: 04/24/2016 15:29:54 ******/
ALTER TABLE [dbo].[tbl_Car]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Car_tbl_CarStatus] FOREIGN KEY([CarStatusID])
REFERENCES [dbo].[tbl_CarStatus] ([CarStatusID])
GO
ALTER TABLE [dbo].[tbl_Car] CHECK CONSTRAINT [FK_tbl_Car_tbl_CarStatus]
GO
/****** Object:  ForeignKey [FK_tbl_Car_tbl_CarTypeID]    Script Date: 04/24/2016 15:29:54 ******/
ALTER TABLE [dbo].[tbl_Car]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Car_tbl_CarTypeID] FOREIGN KEY([CartTypeID])
REFERENCES [dbo].[tbl_CarTypeID] ([CarTypeID])
GO
ALTER TABLE [dbo].[tbl_Car] CHECK CONSTRAINT [FK_tbl_Car_tbl_CarTypeID]
GO
/****** Object:  ForeignKey [FK_tbl_Car_tbl_Payment]    Script Date: 04/24/2016 15:29:54 ******/
ALTER TABLE [dbo].[tbl_Car]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Car_tbl_Payment] FOREIGN KEY([PaymentStatusID])
REFERENCES [dbo].[tbl_Payment] ([PaymentStatusID])
GO
ALTER TABLE [dbo].[tbl_Car] CHECK CONSTRAINT [FK_tbl_Car_tbl_Payment]
GO
/****** Object:  ForeignKey [FK_tbl_Room_tbl_Customer]    Script Date: 04/24/2016 15:29:54 ******/
ALTER TABLE [dbo].[tbl_Room]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Room_tbl_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[tbl_Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[tbl_Room] CHECK CONSTRAINT [FK_tbl_Room_tbl_Customer]
GO
/****** Object:  ForeignKey [FK_tbl_Room_tbl_Hotel]    Script Date: 04/24/2016 15:29:54 ******/
ALTER TABLE [dbo].[tbl_Room]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Room_tbl_Hotel] FOREIGN KEY([HotelID])
REFERENCES [dbo].[tbl_Hotel] ([HotelID])
GO
ALTER TABLE [dbo].[tbl_Room] CHECK CONSTRAINT [FK_tbl_Room_tbl_Hotel]
GO
/****** Object:  ForeignKey [FK_tbl_Room_tbl_Payment]    Script Date: 04/24/2016 15:29:54 ******/
ALTER TABLE [dbo].[tbl_Room]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Room_tbl_Payment] FOREIGN KEY([PaymentStatusID])
REFERENCES [dbo].[tbl_Payment] ([PaymentStatusID])
GO
ALTER TABLE [dbo].[tbl_Room] CHECK CONSTRAINT [FK_tbl_Room_tbl_Payment]
GO
/****** Object:  ForeignKey [FK_tbl_Tour_tbl_Customer]    Script Date: 04/24/2016 15:29:54 ******/
ALTER TABLE [dbo].[tbl_Tour]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Tour_tbl_Customer] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[tbl_Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[tbl_Tour] CHECK CONSTRAINT [FK_tbl_Tour_tbl_Customer]
GO
/****** Object:  ForeignKey [FK_tbl_Tour_tbl_Payment]    Script Date: 04/24/2016 15:29:54 ******/
ALTER TABLE [dbo].[tbl_Tour]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Tour_tbl_Payment] FOREIGN KEY([PaymentStatusID])
REFERENCES [dbo].[tbl_Payment] ([PaymentStatusID])
GO
ALTER TABLE [dbo].[tbl_Tour] CHECK CONSTRAINT [FK_tbl_Tour_tbl_Payment]
GO
/****** Object:  ForeignKey [FK_tbl_Tour_tbl_TourStatus]    Script Date: 04/24/2016 15:29:54 ******/
ALTER TABLE [dbo].[tbl_Tour]  WITH CHECK ADD  CONSTRAINT [FK_tbl_Tour_tbl_TourStatus] FOREIGN KEY([TourStatusID])
REFERENCES [dbo].[tbl_TourStatus] ([TourStatusID])
GO
ALTER TABLE [dbo].[tbl_Tour] CHECK CONSTRAINT [FK_tbl_Tour_tbl_TourStatus]
GO
