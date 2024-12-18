USE [FASTFOOD_DB]
GO
/****** Object:  Table [dbo].[Carts]    Script Date: 2/11/2024 10:47:38 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carts](
	[CartId] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Carts] PRIMARY KEY CLUSTERED 
(
	[CartId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[ImageUrl] [varchar](max) NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[IsOffert] [bit] NULL,
	[OfferPercentage] [int] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contact]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contact](
	[ContactId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Subject] [varchar](200) NULL,
	[Message] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[ContactId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderDetailsId] [int] IDENTITY(1,1) NOT NULL,
	[OrderNo] [varchar](450) NULL,
	[ProductId] [int] NULL,
	[Quantity] [int] NULL,
	[UserId] [int] NULL,
	[Status] [varchar](50) NULL,
	[PaymentId] [int] NULL,
	[OrderDate] [datetime] NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderDetailsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Payment]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[PaymentId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[CardNo] [varchar](50) NULL,
	[ExpiryDate] [varchar](50) NULL,
	[CvvNo] [int] NULL,
	[Address] [varchar](max) NULL,
	[PaymentMode] [varchar](50) NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[PaymentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](max) NULL,
	[Price] [decimal](18, 2) NULL,
	[Quantity] [int] NULL,
	[ImageUrl] [varchar](max) NULL,
	[CategoryId] [int] NULL,
	[IsActive] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[IsOffert] [bit] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[UserName] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](max) NULL,
	[PostCode] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[ImageUrl] [varchar](max) NULL,
	[CreatedDate] [datetime] NULL,
	[Admin] [bit] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Carts] ON 

INSERT [dbo].[Carts] ([CartId], [ProductId], [Quantity], [UserId]) VALUES (12, 3, 1, 1)
SET IDENTITY_INSERT [dbo].[Carts] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl], [IsActive], [CreatedDate], [IsOffert], [OfferPercentage]) VALUES (1, N'Classic Burger', N'Category-1.jpg', 1, CAST(N'2024-11-01T14:55:10.017' AS DateTime), 0, 0)
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl], [IsActive], [CreatedDate], [IsOffert], [OfferPercentage]) VALUES (2, N'Signature Burger', N'Category-2.jpg', 1, CAST(N'2024-11-01T14:55:02.133' AS DateTime), 0, 0)
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl], [IsActive], [CreatedDate], [IsOffert], [OfferPercentage]) VALUES (3, N'Starter', N'Category-3.jpg', 1, CAST(N'2024-11-01T12:51:23.570' AS DateTime), 0, 0)
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl], [IsActive], [CreatedDate], [IsOffert], [OfferPercentage]) VALUES (4, N'Salads', N'Category-4.jpg', 1, CAST(N'2024-11-01T13:15:38.463' AS DateTime), 1, 30)
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl], [IsActive], [CreatedDate], [IsOffert], [OfferPercentage]) VALUES (5, N'Desserts', N'Category-5.jpg', 1, CAST(N'2024-11-01T13:15:47.830' AS DateTime), 1, 60)
INSERT [dbo].[Categories] ([CategoryId], [Name], [ImageUrl], [IsActive], [CreatedDate], [IsOffert], [OfferPercentage]) VALUES (6, N'Drinks', N'Category-6.jpg', 1, CAST(N'2024-11-01T12:53:18.850' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([ContactId], [Name], [Email], [Subject], [Message], [CreatedDate]) VALUES (1, N'Roberto', N'roberto@roberto.com', N'Roberto', N'El texto en sí no tiene sentido aparente, aunque no es aleatorio, sino que deriva de un texto de Cicerón en lengua latina, a cuyas palabras se les han eliminado sílabas o letras. El significado del mismo no tiene importancia, ya que solo es una demostración o prueba. El texto procede de la obra De finibus bonorum et malorum (Sobre los límites del bien y del mal) que comienza con:', CAST(N'2024-11-01T13:24:31.587' AS DateTime))
INSERT [dbo].[Contact] ([ContactId], [Name], [Email], [Subject], [Message], [CreatedDate]) VALUES (2, N'Carla', N'carla@carla.com', N'Carla', N'El texto en sí no tiene sentido aparente, aunque no es aleatorio, sino que deriva de un texto de Cicerón en lengua latina, a cuyas palabras se les han eliminado sílabas o letras. El significado del mismo no tiene importancia, ya que solo es una demostración o prueba. El texto procede de la obra De finibus bonorum et malorum (Sobre los límites del bien y del mal) que comienza con:El texto en sí no tiene sentido aparente, aunque no es aleatorio, sino que deriva de un texto de Cicerón en lengua latina, a cuyas palabras se les han eliminado sílabas o letras. El significado del mismo no tiene importancia, ya que solo es una demostración o prueba. El texto procede de la obra De finibus bonorum et malorum (Sobre los límites del bien y del mal) que comienza con:', CAST(N'2024-11-01T13:24:42.830' AS DateTime))
INSERT [dbo].[Contact] ([ContactId], [Name], [Email], [Subject], [Message], [CreatedDate]) VALUES (3, N'Pedro', N'pedro@pedro.com', N'Pedro', N'El texto en sí no tiene sentido aparente, aunque no es aleatorio, sino que deriva de un texto de Cicerón en lengua latina, a cuyas palabras se les han eliminado sílabas o letras. ', CAST(N'2024-11-01T13:24:59.350' AS DateTime))
INSERT [dbo].[Contact] ([ContactId], [Name], [Email], [Subject], [Message], [CreatedDate]) VALUES (4, N'Marina', N'marina@marina.com', N'Marina', N'El texto en sí no tiene sentido aparente, aunque no es aleatorio, sino que deriva de un texto de Cicerón en lengua latina, a cuyas palabras se les han eliminado sílabas o letras. El significado del mismo no tiene importancia, ya que solo es una demostración o prueba. El texto procede de la obra De finibus bonorum et malorum (Sobre los límites del bien y del mal) que comienza con:El texto en sí no tiene sentido aparente, aunque no es aleatorio, sino que deriva de un texto de Cicerón en lengua latina, a cuyas palabras se les han eliminado sílabas o letras. El significado del mismo no tiene importancia, ya que solo es una demostración o prueba. El texto procede de la obra De finibus bonorum et malorum (Sobre los límites del bien y del mal) que comienza con:', CAST(N'2024-11-01T13:25:12.347' AS DateTime))
SET IDENTITY_INSERT [dbo].[Contact] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([OrderDetailsId], [OrderNo], [ProductId], [Quantity], [UserId], [Status], [PaymentId], [OrderDate]) VALUES (1, N'827be000-bd39-48da-8be8-927712a3003e', 5, 3, 1, N'Pending', 1, CAST(N'2024-11-01T13:18:34.243' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsId], [OrderNo], [ProductId], [Quantity], [UserId], [Status], [PaymentId], [OrderDate]) VALUES (2, N'8f96bc6c-d9be-4ff6-863a-6167c5f8f627', 4, 1, 1, N'Pending', 1, CAST(N'2024-11-01T13:18:34.253' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsId], [OrderNo], [ProductId], [Quantity], [UserId], [Status], [PaymentId], [OrderDate]) VALUES (3, N'ec3c5ef9-a915-464d-9586-c3900f24c5c7', 12, 2, 1, N'Pending', 1, CAST(N'2024-11-01T13:18:34.253' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsId], [OrderNo], [ProductId], [Quantity], [UserId], [Status], [PaymentId], [OrderDate]) VALUES (4, N'afa20b0b-76b5-40d8-a8d4-d3151c554f9f', 10, 3, 1, N'Pending', 1, CAST(N'2024-11-01T13:18:34.253' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsId], [OrderNo], [ProductId], [Quantity], [UserId], [Status], [PaymentId], [OrderDate]) VALUES (5, N'366469c6-572a-4842-807d-a718b503d235', 6, 3, 1, N'Dispatched', 2, CAST(N'2024-11-01T13:20:01.247' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsId], [OrderNo], [ProductId], [Quantity], [UserId], [Status], [PaymentId], [OrderDate]) VALUES (6, N'1ffdaa68-c632-4613-8a03-3d8815880f19', 1, 1, 1, N'Delivered', 2, CAST(N'2024-11-01T13:20:01.277' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsId], [OrderNo], [ProductId], [Quantity], [UserId], [Status], [PaymentId], [OrderDate]) VALUES (7, N'd7a27688-cb7c-4ca7-a0c3-d0593021f31d', 8, 5, 1, N'Delivered', 2, CAST(N'2024-11-01T13:20:01.293' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsId], [OrderNo], [ProductId], [Quantity], [UserId], [Status], [PaymentId], [OrderDate]) VALUES (8, N'f7c71899-ce1c-49b0-925c-4dbf2434fc08', 3, 4, 1, N'Pending', 3, CAST(N'2024-11-01T14:58:25.923' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsId], [OrderNo], [ProductId], [Quantity], [UserId], [Status], [PaymentId], [OrderDate]) VALUES (9, N'16e9ed79-996a-46c2-86c3-a4836397e8f0', 12, 1, 1, N'Pending', 3, CAST(N'2024-11-01T14:58:25.930' AS DateTime))
INSERT [dbo].[Orders] ([OrderDetailsId], [OrderNo], [ProductId], [Quantity], [UserId], [Status], [PaymentId], [OrderDate]) VALUES (10, N'0054147d-5334-472b-b408-956bd1bdb04e', 5, 1, 2, N'Pending', 4, CAST(N'2024-11-02T20:37:52.583' AS DateTime))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Payment] ON 

INSERT [dbo].[Payment] ([PaymentId], [Name], [CardNo], [ExpiryDate], [CvvNo], [Address], [PaymentMode]) VALUES (1, N'Usuario', NULL, NULL, NULL, N'Roca 32', N'cod')
INSERT [dbo].[Payment] ([PaymentId], [Name], [CardNo], [ExpiryDate], [CvvNo], [Address], [PaymentMode]) VALUES (2, N'Usuario', N'************2222', N'22/2222', 222, N'Roca 33', N'card')
INSERT [dbo].[Payment] ([PaymentId], [Name], [CardNo], [ExpiryDate], [CvvNo], [Address], [PaymentMode]) VALUES (3, N'Usuario', NULL, NULL, NULL, N'Roca 1234', N'cod')
INSERT [dbo].[Payment] ([PaymentId], [Name], [CardNo], [ExpiryDate], [CvvNo], [Address], [PaymentMode]) VALUES (4, N'Admin', NULL, NULL, NULL, N'Larrea(562)', N'cod')
SET IDENTITY_INSERT [dbo].[Payment] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (1, N'Cheeseburger', N'Grilled meat, bread, cheddar cheese, mustard and ketchup. Suitable for adding more cheese ;)', CAST(3.00 AS Decimal(18, 2)), 99, N'Product-1.jpg', 1, 1, CAST(N'2024-11-01T13:02:17.263' AS DateTime), 1)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (2, N' Classic Burger', N'Grilled meat, bread, tomato, lettuce, mustard and ketchup. It''s called classic because it never goes out of style.', CAST(4.00 AS Decimal(18, 2)), 100, N'Product-2.jpg', 1, 1, CAST(N'2024-11-01T13:01:34.397' AS DateTime), 1)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (3, N'Mushroom King Meat', N'Potato bread, mushrooms, arugula, sautéed onion and meat. Conquer a new kingdom of flavor!', CAST(6.00 AS Decimal(18, 2)), 96, N'Product-3.jpg', 2, 1, CAST(N'2024-11-01T12:59:04.973' AS DateTime), 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (4, N'Whopper Guacamole', N'Bread, grilled meat, lettuce, tomato, onion, cucumber, mayonnaise and guacamole', CAST(8.00 AS Decimal(18, 2)), 99, N'Product-4.jpg', 2, 1, CAST(N'2024-11-01T13:02:05.097' AS DateTime), 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (5, N'Quad Stacker', N'4 grilled meats, stacker sauce, bread, cheddar cheese, bacon. You feel that handle', CAST(10.00 AS Decimal(18, 2)), 95, N'Product-5.jpg', 2, 1, CAST(N'2024-11-01T13:01:05.763' AS DateTime), 1)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (6, N'Mozzarella Sticks', N'Breaded mozzarella sticks. You can order them  x12.', CAST(8.00 AS Decimal(18, 2)), 97, N'Product-6.jpg', 3, 1, CAST(N'2024-11-01T13:04:22.380' AS DateTime), 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (7, N'Nuggets', N'Enjoy them x 20 units', CAST(7.00 AS Decimal(18, 2)), 100, N'Product-7.jpg', 3, 1, CAST(N'2024-11-01T13:05:39.430' AS DateTime), 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (8, N'Caesar Salad with Chicken', N'Lettuce, string cheese, croutons, crispy chicken and 500ml mineral water. Fresh and delicious.', CAST(12.00 AS Decimal(18, 2)), 95, N'Product-8.jpg', 4, 1, CAST(N'2024-11-01T13:06:45.943' AS DateTime), 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (9, N'Tuna Salad', N'Natural and healthy flavors: arugula, lettuce, tomato, grated carrot and tuna.', CAST(13.00 AS Decimal(18, 2)), 100, N'Product-9.jpg', 4, 1, CAST(N'2024-11-01T13:07:24.760' AS DateTime), 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (10, N'Brownissimo', N'The king of sweets, chocolate brownie topped with vanilla ice cream and chocolate topping. To explode with flavor!', CAST(9.00 AS Decimal(18, 2)), 97, N'Product-10.jpg', 5, 1, CAST(N'2024-11-01T13:08:30.763' AS DateTime), 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (11, N'Filled Cone', N'Ice cream cone, chocolate sauce and ice cream.', CAST(4.00 AS Decimal(18, 2)), 100, N'Product-11.jpg', 5, 1, CAST(N'2024-11-01T13:09:15.500' AS DateTime), 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (12, N'Lemonade', N'Lemonade that refreshes all your ideas.', CAST(3.00 AS Decimal(18, 2)), 97, N'Product-12.jpg', 6, 1, CAST(N'2024-11-01T13:10:34.423' AS DateTime), 0)
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Price], [Quantity], [ImageUrl], [CategoryId], [IsActive], [CreatedDate], [IsOffert]) VALUES (13, N'CocaCola', N'', CAST(5.00 AS Decimal(18, 2)), 99, N'Product-13.jpg', 6, 1, CAST(N'2024-11-01T13:14:11.280' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserId], [Name], [UserName], [Mobile], [Email], [Address], [PostCode], [Password], [ImageUrl], [CreatedDate], [Admin]) VALUES (1, N'Usuario', N'Usuario', N'1234567891', N'usuario@usuario.com', N'Usuario 7', N'2000', N'1234', NULL, CAST(N'2024-11-01T11:19:52.843' AS DateTime), 0)
INSERT [dbo].[Users] ([UserId], [Name], [UserName], [Mobile], [Email], [Address], [PostCode], [Password], [ImageUrl], [CreatedDate], [Admin]) VALUES (2, N'Admin', N'Admin', N'1234567877', N'admin@admin.com', N'Admin 77', N'2000', N'1234', N'User-2.jpg', CAST(N'2024-11-02T22:03:48.777' AS DateTime), 1)
INSERT [dbo].[Users] ([UserId], [Name], [UserName], [Mobile], [Email], [Address], [PostCode], [Password], [ImageUrl], [CreatedDate], [Admin]) VALUES (6, N'carlos', N'carlos', N'2113585222', N'carlos@carlos.com', N'Larrea(562)', N'2000', N'1234', N'User-6.jpg', CAST(N'2024-11-02T22:03:20.597' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Orders_OrderNo]    Script Date: 2/11/2024 10:47:39 pm ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [UQ_Orders_OrderNo] UNIQUE NONCLUSTERED 
(
	[OrderNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Users_Email]    Script Date: 2/11/2024 10:47:39 pm ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UQ_Users_Email] UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Users_UserName]    Script Date: 2/11/2024 10:47:39 pm ******/
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [UQ_Users_UserName] UNIQUE NONCLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Products]
GO
ALTER TABLE [dbo].[Carts]  WITH CHECK ADD  CONSTRAINT [FK_Carts_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Carts] CHECK CONSTRAINT [FK_Carts_Users]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Payment] FOREIGN KEY([PaymentId])
REFERENCES [dbo].[Payment] ([PaymentId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Payment]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([ProductId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Products]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Orders_Users] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([UserId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Orders_Users]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([CategoryId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories]
GO
/****** Object:  StoredProcedure [dbo].[ShowCategoryIdProduct]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[ShowCategoryIdProduct]
@UserId int,
@CartId int
as
select Ca.CategoryId from Carts C
Inner join Products P on C.ProductId = P.ProductId
Inner Join Categories Ca on P.CategoryId = Ca.CategoryId
Where C.UserId = @UserId And C.CartId = @CartId
GO
/****** Object:  StoredProcedure [dbo].[storedAddCategory]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedAddCategory]
@Name varchar(50),
@IsActive bit,
@IsOffert bit,
@OfferPercentage int
as
insert into Categories(Name, IsActive, CreatedDate, IsOffert, OfferPercentage) output inserted.CategoryId Values (@Name, @IsActive,  GETDATE() ,@IsOffert, @OfferPercentage)
GO
/****** Object:  StoredProcedure [dbo].[storedAddCategoryImage]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedAddCategoryImage]
@ImageUrl  varchar(max),
@CategoryId int
as
update Categories set ImageUrl=@ImageUrl Where CategoryId =@CategoryId
GO
/****** Object:  StoredProcedure [dbo].[storedAddImageProduct]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedAddImageProduct]
@ImageUrl varchar(max),
@ProductId int
as
Update Products set ImageUrl =@ImageUrl Where ProductId =@ProductId
GO
/****** Object:  StoredProcedure [dbo].[storedAddImageUser]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedAddImageUser]
@ImageUrl varchar(max),
@UserId int
as
update Users set ImageUrl =@ImageUrl Where UserId =@UserId
GO
/****** Object:  StoredProcedure [dbo].[storedAddNewMessage]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedAddNewMessage]
@Name varchar(50),
@Email varchar(50),
@Subject varchar(200),
@Message varchar(max)
as
insert into Contact (Name, Email, Subject, Message, CreatedDate) values (@Name, @Email, @Subject, @Message, GETDATE())
GO
/****** Object:  StoredProcedure [dbo].[storedAddOrder]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedAddOrder]
@PaymentId int,
@ProductId int,
@OrderNo varchar(50),
@Quantity int,
@UserId int,
@Status varchar(50),
@OrderDate datetime
as
insert into Orders(PaymentId,ProductId, OrderNo, Quantity, UserId, Status, OrderDate )
values (@PaymentId, @ProductId, @OrderNo, @Quantity, @UserId, @Status, @OrderDate )
GO
/****** Object:  StoredProcedure [dbo].[storedAddPayment]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedAddPayment]
@Name varchar(50),
@CardNo varchar(50),
@ExpiryDate varchar(50),
@CvvNo int,
@Address varchar(max),
@PaymentMode varchar(50)
as
insert into Payment(Name, CardNo, ExpiryDate, CvvNo, Address, PaymentMode ) output inserted.PaymentId 
values (@Name, @CardNo, @ExpiryDate, @CvvNo, @Address, @PaymentMode)
GO
/****** Object:  StoredProcedure [dbo].[storedAddPaymentDelivery]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedAddPaymentDelivery]
@Name varchar(50),
@Address varchar(max),
@PaymentMode varchar(50)
as
insert into Payment(Address, PaymentMode, Name ) output inserted.PaymentId 
values (@Address, @PaymentMode, @Name)
GO
/****** Object:  StoredProcedure [dbo].[storedAddProductCart]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedAddProductCart]
@ProductId int,
@Quantity int,
@UserId int
as
Insert into Carts (ProductId, Quantity, UserId) output inserted.CartId Values (@ProductId, @Quantity, @UserId )
GO
/****** Object:  StoredProcedure [dbo].[storedAddProducts]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedAddProducts]
@Name varchar(50),
@Description varchar(max),
@Price decimal,
@Quantity int,
@CategoryId int,
@IsActive bit,
@IsOffert bit
as
insert into Products(Name, Description, Price, Quantity, CategoryId, IsActive, CreatedDate, IsOffert) 
output inserted.ProductId values (@Name, @Description, @Price, @Quantity, @CategoryId, @IsActive, GETDATE(), @IsOffert)
GO
/****** Object:  StoredProcedure [dbo].[storedAddUser]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedAddUser]
@Name varchar(50),
@UserName varchar(50),
@Email varchar(50),
@Password varchar(50),
@Mobile varchar(50),
@Address varchar(max),
@PostCode varchar(50),
@ImageUrl varchar(max)
as
insert into Users (Name, UserName, email, password, Mobile, Address, PostCode,ImageUrl, admin, CreatedDate) output inserted.UserId 
values (@Name, @UserName, @Email, @Password, @Mobile, @Address, @PostCode, @ImageUrl, 0, GETDATE())
GO
/****** Object:  StoredProcedure [dbo].[storedCartCountItems]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedCartCountItems]
@UserId int
as
Select sum(Quantity) as Quantity from Carts where UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[storedChangeStatus]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedChangeStatus]
@OrderDetailsId int
as
Select OrderDetailsId, Status from Orders
Where OrderDetailsId = @OrderDetailsId
GO
/****** Object:  StoredProcedure [dbo].[storedContacts]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedContacts]
as
select Count(*) as Total from Contact
GO
/****** Object:  StoredProcedure [dbo].[storedDeleteCategory]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedDeleteCategory]
@CategoryId int
as
Delete Categories where CategoryId =@CategoryId
GO
/****** Object:  StoredProcedure [dbo].[storedDeleteContact]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedDeleteContact]
@ContactId int
as
Delete Contact where ContactId =@ContactId
GO
/****** Object:  StoredProcedure [dbo].[storedDeleteMessageContacts]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedDeleteMessageContacts]
@ContactId int
as
delete Contact where ContactId= @ContactId
GO
/****** Object:  StoredProcedure [dbo].[storedDeleteProduct]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedDeleteProduct]
@ProductId int
as
Delete Products where ProductId =@ProductId
GO
/****** Object:  StoredProcedure [dbo].[storedDeleteProductCart]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedDeleteProductCart]
@ProductId int,
@UserId int
as
Delete Carts Where UserId =@UserId And ProductId =@ProductId
GO
/****** Object:  StoredProcedure [dbo].[storedDeleteProductCartAll]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedDeleteProductCartAll]
@UserId int
as
Delete Carts Where UserId =@UserId
GO
/****** Object:  StoredProcedure [dbo].[storedDeleteUser]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedDeleteUser]
@UserId int
as
Delete Users where UserId =@UserId
GO
/****** Object:  StoredProcedure [dbo].[storedGetByIdCart]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedGetByIdCart]
@UserId int,
@ProdcutId int
as
select * from Carts Where UserId =@UserId And ProductId =@ProdcutId 
GO
/****** Object:  StoredProcedure [dbo].[storedListCart]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedListCart]
@UserId int
as
select C.ProductId, P.Name, P.ImageUrl, P.Price, C.Quantity as Qty, P.Quantity as PrdQty, C.CartId from Carts C 
INNER JOIN Products P ON  C.ProductId = P.ProductId
Where UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[storedListCartSumaProduct]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedListCartSumaProduct]
@UserId int
as
select C.CartId, C.ProductId, P.Name, P.ImageUrl, P.Price, C.Quantity as Qty, (P.Price * C.Quantity) as Total from Carts C 
INNER JOIN Products P ON  C.ProductId = P.ProductId
Where UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[storedListCategories]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedListCategories]
as
Select CategoryId, Name, ImageUrl, IsActive, CreatedDate, IsOffert from Categories
GO
/****** Object:  StoredProcedure [dbo].[storedListCategoriesActive]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from Categories

create procedure [dbo].[storedListCategoriesActive]
as
Select CategoryId, Name, ImageUrl, IsActive, CreatedDate from Categories Where IsActive = 1

GO
/****** Object:  StoredProcedure [dbo].[storedListCategoriesActiveOffert]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedListCategoriesActiveOffert]
as
Select CategoryId, Name, ImageUrl, IsActive, CreatedDate, IsOffert, OfferPercentage from Categories Where IsActive = 1 And IsOffert = 1
GO
/****** Object:  StoredProcedure [dbo].[storedListMessageContacts]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedListMessageContacts]
as
select ContactId, Name, Email, Subject, Message, CreatedDate from Contact
GO
/****** Object:  StoredProcedure [dbo].[storedListOrder]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedListOrder]
@UserId  int,
@PaymentId int
as
Select O.OrderDetailsId, O.OrderNo, P.ImageUrl, P.Name, P.Price, O.Quantity, (P.Price * O.Quantity) as TotalPrice, O.OrderDate, O.Status from Orders O 
Inner Join Products P on O.ProductId = P.ProductId
Where UserId = @UserId And PaymentId = @PaymentId
GO
/****** Object:  StoredProcedure [dbo].[storedListProducts]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedListProducts]
as
Select ProductId,P.Name, Description, Price, Quantity, P.ImageUrl, P.IsActive,  P.CreatedDate, C.Name Category, P.IsOffert
from Products P, Categories C Where P.CategoryId = C.CategoryId

GO
/****** Object:  StoredProcedure [dbo].[storedListProductsActive]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from Products

create procedure [dbo].[storedListProductsActive]
as
Select ProductId,P.Name, Description, Price, Quantity, P.ImageUrl, P.IsActive,  P.CreatedDate, C.Name Category
from Products P, Categories C Where P.CategoryId = C.CategoryId And P.IsActive = 1

GO
/****** Object:  StoredProcedure [dbo].[storedListProductsActiveCategory]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedListProductsActiveCategory]
@CategoryId int
as
Select ProductId,P.Name, Description, Price, Quantity, P.ImageUrl, P.IsActive,  P.CreatedDate, C.Name Category
from Products P Join Categories C On P.CategoryId = C.CategoryId Where P.CategoryId = @CategoryId And P.IsActive = 1
GO
/****** Object:  StoredProcedure [dbo].[storedListProductsActiveOffert]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedListProductsActiveOffert]
as
Select Name, ImageUrl, IsActive, CreatedDate, IsOffert, Description, Price, ProductId from Products Where IsActive = 1 And IsOffert = 1
GO
/****** Object:  StoredProcedure [dbo].[storedListStatus]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[storedListStatus]
as
Select O.OrderDetailsId, O.OrderNo, (Pr.Price * O.Quantity) as TotalPrice, O.Status, O.OrderDate, P.PaymentMode, Pr.Name from Orders O 
Inner Join Payment P On O.PaymentId = P.PaymentId
Inner Join Products Pr On O.ProductId = Pr.ProductId
GO
/****** Object:  StoredProcedure [dbo].[storedListUsers]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedListUsers]
as
Select UserId, Name, UserName,Mobile, Email, Address, PostCode, Password, ImageUrl, CreatedDate, Admin 
from Users 
GO
/****** Object:  StoredProcedure [dbo].[storedLogin]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[storedLogin]
@UserName varchar(50),
@Password varchar(50)
as
Select UserId, Name, UserName,Mobile, Email, Address, PostCode, Password, ImageUrl, CreatedDate, Admin 
from Users Where UserName =@UserName And Password =@Password
GO
/****** Object:  StoredProcedure [dbo].[storedSellingReport]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedSellingReport]
@FromDate Date = null,
@ToDate Date = null
as
Select Row_Number() Over(Order by (select 1)) as [SrNo], U.Name, U.Email, SUM(O.Quantity) As TotalOrders, SUM(O.Quantity * P.Price) As TotalPrice from Orders O 
Inner Join Products P On O.ProductId = P.ProductId
Inner Join Users U On O.UserId = U.UserId 
Where CAST(O.OrderDate As DATE) Between @FromDate And @ToDate
Group By U.Name, U.Email
GO
/****** Object:  StoredProcedure [dbo].[storedShowCategory]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedShowCategory]
@CategoryId int
as
Select CategoryId, Name, ImageUrl, IsActive, CreatedDate, IsOffert, OfferPercentage from Categories Where CategoryId = @CategoryId
GO
/****** Object:  StoredProcedure [dbo].[storedShowChangeStatus]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedShowChangeStatus]
@OrderDetailsId int
as
Select O.OrderDetailsId, O.OrderNo, (Pr.Price * O.Quantity) as TotalPrice, O.Status, O.OrderDate, P.PaymentMode, Pr.Name, Pr.ImageUrl, O.Quantity from Orders O 
Inner Join Payment P On O.PaymentId = P.PaymentId
Inner Join Products Pr On O.ProductId = Pr.ProductId
Where OrderDetailsId =@OrderDetailsId
GO
/****** Object:  StoredProcedure [dbo].[storedShowDetailProducts]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedShowDetailProducts]
@ProductId int
as
Select ProductId,P.Name, Description, Price, Quantity, P.ImageUrl, P.IsActive,  P.CreatedDate, C.Name Category, P.IsOffert
from Products P, Categories C Where ProductId =@ProductId And P.CategoryId = C.CategoryId
GO
/****** Object:  StoredProcedure [dbo].[storedShowDetailUser]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedShowDetailUser]
@UserId int
as
Select UserId, Name, Username, Mobile, Email, Address, PostCode,  ImageUrl, CreatedDate, Admin 
from Users Where UserId =@UserId
GO
/****** Object:  StoredProcedure [dbo].[storedShowMessageContacts]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedShowMessageContacts]
@ContactId int
as
select ContactId as SrNo, Name, Email, Subject, Message, CreatedDate from Contact Where ContactId =@ContactId
GO
/****** Object:  StoredProcedure [dbo].[storedShowProduct]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedShowProduct]
@ProductId int
as
Select ProductId, Name, Description, Price, Quantity, ImageUrl, CategoryId, IsActive, CreatedDate, IsOffert 
from Products Where ProductId =@ProductId
GO
/****** Object:  StoredProcedure [dbo].[storedShowProductName]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedShowProductName]
@Name varchar(50)
as
Select ProductId, Name, CreatedDate from Products Where Name = @Name
GO
/****** Object:  StoredProcedure [dbo].[storedTotalAmount]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedTotalAmount]
as
select Sum(O.Quantity * P.Price)  as Total from Orders O
Inner Join Products P On O.ProductId = P.ProductId
GO
/****** Object:  StoredProcedure [dbo].[storedTotalCategories]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedTotalCategories]
as
select Count(*)  as Total from Categories
GO
/****** Object:  StoredProcedure [dbo].[storedTotalDelivered]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedTotalDelivered]
as
select Count(*)  as Total from Orders
Where Status = 'Delivered'
GO
/****** Object:  StoredProcedure [dbo].[storedTotalOrders]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedTotalOrders]
as
select Count(*)  as Total from Orders
GO
/****** Object:  StoredProcedure [dbo].[storedTotalPending]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedTotalPending]
as
select Count(*)  as Total from Orders
Where Status in ('Pending', 'Dispatched')
GO
/****** Object:  StoredProcedure [dbo].[storedTotalProducts]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedTotalProducts]
as
select Count(*)  as Total from Products
GO
/****** Object:  StoredProcedure [dbo].[storedTotalUsers]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedTotalUsers]
as
select Count(*)  as Total from Users
GO
/****** Object:  StoredProcedure [dbo].[storedUpdateCategory]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedUpdateCategory]
@Name varchar(50),
@ImageUrl varchar(max),
@IsActive bit,
@CategoryId int,
@IsOffert bit,
@OfferPercentage int
as
update Categories set Name =@Name, ImageUrl =@ImageUrl, IsActive =@IsActive, CreatedDate =GETDATE(), IsOffert =@IsOffert, OfferPercentage =@OfferPercentage where CategoryId =@CategoryId
GO
/****** Object:  StoredProcedure [dbo].[storedUpdateProduct]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedUpdateProduct]
@Name varchar(50),
@Description varchar(max),
@Price decimal(18,2),
@Quantity int,
@ImageUrl varchar(max),
@CategoryId int,
@IsActive bit,
@ProductId int,
@IsOffert bit
as
Update Products set Name =@Name, Description =@Description, Price =@Price, Quantity =@Quantity, ImageUrl =@ImageUrl, CategoryId =@CategoryId, IsActive =@IsActive, CreatedDate =GETDATE(), IsOffert =@IsOffert
Where ProductId =@ProductId
GO
/****** Object:  StoredProcedure [dbo].[storedUpdateProductCart]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[storedUpdateProductCart]
@ProductId int,
@Quantity int,
@UserId int
as
Update Carts set Quantity =@Quantity output inserted.CartId Where UserId =@UserId And ProductId =@ProductId
GO
/****** Object:  StoredProcedure [dbo].[storedUpdateStatus]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storedUpdateStatus]
@OrderDetailsId int,
@Status varchar(50)
as
update Orders set Status = @Status Where OrderDetailsId = @OrderDetailsId
GO
/****** Object:  StoredProcedure [dbo].[storedUpdateUser]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--select * from Users

CREATE procedure [dbo].[storedUpdateUser]
@Name varchar(50),
@Password varchar(50),
@Mobile varchar(50),
@Address varchar(max),
@PostCode varchar(50),
@ImageUrl varchar(max),
@UserId int,
@Admin bit
as
update  Users set Name =@Name, Admin =@Admin, password =@Password, Mobile =@Mobile, Address =@Address, PostCode =@PostCode,ImageUrl =@ImageUrl, CreatedDate =GETDATE() where UserId =@UserId
GO
/****** Object:  StoredProcedure [dbo].[storePurchaseHistorty]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[storePurchaseHistorty]
@UserId int
as
Select Distinct O.PaymentId, P.PaymentMode, P.CardNo 
from Orders O 
Inner Join Payment P On O.PaymentId = P.PaymentId 
Where O.UserId = @UserId
GO
/****** Object:  StoredProcedure [dbo].[stotedUpdateQuantityProduct]    Script Date: 2/11/2024 10:47:39 pm ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[stotedUpdateQuantityProduct]
@ProductId int,
@Quantity int
as
update Products set Quantity =@Quantity Where ProductId =@ProductId
GO
