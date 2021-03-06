USE [GMSCms]
GO
/****** Object:  Table [dbo].[Tag]    Script Date: 01/02/2014 08:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Hits] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Tag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tag] ON
INSERT [dbo].[Tag] ([ID], [Name], [Hits], [CreateTime]) VALUES (15, N'最新', 2, CAST(0x0000A2880185565E AS DateTime))
INSERT [dbo].[Tag] ([ID], [Name], [Hits], [CreateTime]) VALUES (16, N'最热', 1, CAST(0x0000A2880185565E AS DateTime))
INSERT [dbo].[Tag] ([ID], [Name], [Hits], [CreateTime]) VALUES (18, N'反腐', 0, CAST(0x0000A2A301264AB5 AS DateTime))
INSERT [dbo].[Tag] ([ID], [Name], [Hits], [CreateTime]) VALUES (19, N'温家宝', 0, CAST(0x0000A2A301264AB5 AS DateTime))
SET IDENTITY_INSERT [dbo].[Tag] OFF
/****** Object:  Table [dbo].[Channel]    Script Date: 01/02/2014 08:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Channel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Desc] [nvarchar](300) NULL,
	[CoverPicture] [nvarchar](300) NULL,
	[Hits] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Channel] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Channel] ON
INSERT [dbo].[Channel] ([ID], [Name], [Desc], [CoverPicture], [Hits], [IsActive], [CreateTime]) VALUES (1, N'公司动态', N'暂时无', NULL, 0, 1, CAST(0x0000A28700E84B46 AS DateTime))
INSERT [dbo].[Channel] ([ID], [Name], [Desc], [CoverPicture], [Hits], [IsActive], [CreateTime]) VALUES (2, N'最新通知', N'暂时无', NULL, 0, 1, CAST(0x0000A28700E86377 AS DateTime))
INSERT [dbo].[Channel] ([ID], [Name], [Desc], [CoverPicture], [Hits], [IsActive], [CreateTime]) VALUES (3, N'业界新闻', N'暂时没有', NULL, 0, 1, CAST(0x0000A2870144506F AS DateTime))
SET IDENTITY_INSERT [dbo].[Channel] OFF
/****** Object:  Table [dbo].[ArticleTag]    Script Date: 01/02/2014 08:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArticleTag](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ArticleId] [int] NOT NULL,
	[TagId] [int] NOT NULL,
 CONSTRAINT [PK_ArticleTag] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ArticleTag] ON
INSERT [dbo].[ArticleTag] ([ID], [ArticleId], [TagId]) VALUES (26, 16, 18)
INSERT [dbo].[ArticleTag] ([ID], [ArticleId], [TagId]) VALUES (27, 16, 19)
SET IDENTITY_INSERT [dbo].[ArticleTag] OFF
/****** Object:  Table [dbo].[Article]    Script Date: 01/02/2014 08:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Article](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[ChannelId] [int] NOT NULL,
	[CoverPicture] [nvarchar](300) NULL,
	[Hits] [int] NOT NULL,
	[Diggs] [int] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[UserId] [int] NOT NULL,
	[UserName] [nvarchar](100) NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Article] ON
INSERT [dbo].[Article] ([ID], [Title], [Content], [ChannelId], [CoverPicture], [Hits], [Diggs], [IsActive], [UserId], [UserName], [CreateTime]) VALUES (16, N'吉林"最狠拆迁女市长"被双开 曾称有"尚方宝剑"', N'<p class="f_center"><img src="http://img6.cache.netease.com/cnews/2013/12/29/201312290432079cb70.jpg" alt="韩迎新资料图" /><br />韩迎新资料图</p><p>晨报讯 吉林省舒兰市原市委常委、副市长韩迎新昨天被证实开除党籍、公职，其涉嫌犯罪问题已移送司法机关依法处理。2011年，韩迎新曾因辖区内拆迁户到中央上访而受到舆论关注。</p><p>经查，韩迎新利用职务便利和职权影响，为他人牟取利益，收受他人贿赂数额较大。其行为已构成严重违纪。公开资料显示，韩迎新任副市长期间曾分管市监察局、市财政局、市审计局。并协助市长分管市政府办公室、市住房和城乡建设局、市城市管理局、市棚户区改造管理办公室、市政府采购中心等重要部门。</p><p>公开报道称，韩迎新曾说过“我不懂拆迁法，不按拆迁法办”、“我有尚方宝剑！你们随便告，我不怕”等言论，而被称为“史上最美最狠拆迁女市长”。2011年，韩迎新更是成为焦点人物。那一年，因门面房被无理强拆，舒兰市市民许桂芹到中央上访，并得到了时任总理温家宝的亲自接待。</p><!--EndFragment-->', 3, NULL, 0, 0, 1, 1, N'guozili', CAST(0x0000A2A301264AB1 AS DateTime))
SET IDENTITY_INSERT [dbo].[Article] OFF
/****** Object:  Default [DF_Tag_Hits]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[Tag] ADD  CONSTRAINT [DF_Tag_Hits]  DEFAULT ((0)) FOR [Hits]
GO
/****** Object:  Default [DF_Tag_CreateDate]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[Tag] ADD  CONSTRAINT [DF_Tag_CreateDate]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Channel_Hits]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[Channel] ADD  CONSTRAINT [DF_Channel_Hits]  DEFAULT ((0)) FOR [Hits]
GO
/****** Object:  Default [DF_Channel_IsActive]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[Channel] ADD  CONSTRAINT [DF_Channel_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
/****** Object:  Default [DF_Channel_CreateDate]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[Channel] ADD  CONSTRAINT [DF_Channel_CreateDate]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_ArticleTag_ArticleId]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[ArticleTag] ADD  CONSTRAINT [DF_ArticleTag_ArticleId]  DEFAULT ((0)) FOR [ArticleId]
GO
/****** Object:  Default [DF_ArticleTag_TagId]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[ArticleTag] ADD  CONSTRAINT [DF_ArticleTag_TagId]  DEFAULT ((0)) FOR [TagId]
GO
/****** Object:  Default [DF_Article_Hits]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_Hits]  DEFAULT ((0)) FOR [Hits]
GO
/****** Object:  Default [DF_Article_Diggs]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_Diggs]  DEFAULT ((0)) FOR [Diggs]
GO
/****** Object:  Default [DF_Article_IsActive]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_IsActive]  DEFAULT ((0)) FOR [IsActive]
GO
/****** Object:  Default [DF_Article_ExternalId]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_ExternalId]  DEFAULT ((0)) FOR [UserName]
GO
/****** Object:  Default [DF_Article_CreateDate]    Script Date: 01/02/2014 08:19:50 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_CreateDate]  DEFAULT (getdate()) FOR [CreateTime]
GO
