USE [ctt]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 2019/3/1 11:16:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Class] [nvarchar](50) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsesrInfo]    Script Date: 2019/3/1 11:16:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsesrInfo](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Age] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](50) NULL,
	[Sex] [nvarchar](50) NULL,
 CONSTRAINT [PK_UsesrInfo] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UsesrInfoes]    Script Date: 2019/3/1 11:16:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsesrInfoes](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Age] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Sex] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.UsesrInfoes] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[Student] ([ID], [Name], [Age], [Class]) VALUES (1, N'小花', 2, N'2.')
INSERT [dbo].[Student] ([ID], [Name], [Age], [Class]) VALUES (2, N'大华', 21, N'3')
INSERT [dbo].[Student] ([ID], [Name], [Age], [Class]) VALUES (3, N'程俊峰', 23, N'4')
INSERT [dbo].[Student] ([ID], [Name], [Age], [Class]) VALUES (4, N'刘静思', 21, N'5')
INSERT [dbo].[Student] ([ID], [Name], [Age], [Class]) VALUES (5, N'大宝', 20, N'5')
SET IDENTITY_INSERT [dbo].[UsesrInfo] ON 

INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (21, N'暗室逢灯', N'2', N'输入', N'二手房 ', N'男')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (23, N' 暗室逢灯', N'25', N' 输入', N' 二手房 ', N' 男')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (25, N'地方', N'2', N'2', N'2', N'男')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (29, N'srt ', N'4', N'f', N'', N'男')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (30, N'大张伟', N'12', N'大是大非', N'安抚', N'男')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (31, N'成佳', N'25', N'阿斯蒂芬', N'阿萨德', N'女')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (32, N'二哥', N'12', N'二哥', N'', N'男')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (33, N' 大师傅', N'63', N' 阿斯蒂芬', N' 阿斯蒂芬', N'')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (34, N'  师傅', N'63', N'  阿斯蒂芬', N'  阿斯蒂芬', N'女')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (35, N' 大师傅', N'63', N' 阿斯蒂芬', N' 阿斯蒂芬', N'')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (36, N'张三', N'23', N'阿斯蒂芬', N'阿斯蒂芬', N'女')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (37, N'阿萨德', N'32', N'阿萨德', N'阿萨德', N'男')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (38, N'是大法官', N'25', N'上的', N'上的', N'男')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (39, N'JAIE', N'25', N'ASD ', N'D F', N'男')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (40, N'dsf ', N'25', N'asdf ', N'as ', N'男')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (41, N'ev 12', N'12', N'aerg ', N' ', N'男')
INSERT [dbo].[UsesrInfo] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (42, N'ev 12', N'12', N'aerg ', N' ', N'男')
SET IDENTITY_INSERT [dbo].[UsesrInfo] OFF
SET IDENTITY_INSERT [dbo].[UsesrInfoes] ON 

INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (2, N' hahahahhahahahahhaha', N'12', N' retb', N' w ', N'男')
INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (3, N'hahahahhahahahahhaha', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (4, N'hahahahhahahahahhaha', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (5, N'hahahahhahahahahhaha', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (6, N'hahahahhahahahahhaha', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (7, N' hahahahhahahahahhaha', N'67', N' asdf ', N' asf', N'男')
INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (8, N'hahahahhahahahahhaha', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (9, N'hahahahhahahahahhaha', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (10, N'hahahahhahahahahhaha', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (11, N'哈哈哈哈哈', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (12, N'ertb', N'12', N'qtb', N'', N'男')
INSERT [dbo].[UsesrInfoes] ([UserID], [UserName], [Age], [Address], [Email], [Sex]) VALUES (13, N'Sargent', N'12', N'安抚', N'安慰', N'男')
SET IDENTITY_INSERT [dbo].[UsesrInfoes] OFF
