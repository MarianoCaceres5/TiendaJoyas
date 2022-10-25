USE [ProyectoIntegral]
GO
/****** Object:  Table [dbo].[Carritos]    Script Date: 25/10/2022 20:01:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Carritos](
	[IdCarrito] [int] IDENTITY(1,1) NOT NULL,
	[IdProducto] [int] NOT NULL,
	[FechaAgregadoACarrito] [datetime] NULL,
	[CantidadUnidades] [int] NULL,
 CONSTRAINT [PK_Carritos] PRIMARY KEY CLUSTERED 
(
	[IdCarrito] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 25/10/2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias](
	[IdCategoria] [int] IDENTITY(1,1) NOT NULL,
	[NombreCategoria] [varchar](50) NULL,
	[FotoCategoria] [varchar](100) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Consultas]    Script Date: 25/10/2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Consultas](
	[IdConsulta] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [varchar](50) NULL,
	[FechaConsulta] [datetime] NULL,
	[DescripcionConsulta] [varchar](100) NULL,
	[EmailUsuario] [varchar](50) NULL,
 CONSTRAINT [PK_Consultas] PRIMARY KEY CLUSTERED 
(
	[IdConsulta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 25/10/2022 20:01:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[IdProducto] [int] IDENTITY(1,1) NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[PrecioProducto] [int] NULL,
	[IdCategoria] [int] NOT NULL,
	[FotoProducto] [varchar](100) NULL,
	[MaterialProducto] [varchar](50) NULL,
	[DescripcionProducto] [varchar](100) NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[IdProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Categorias] ON 

INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [FotoCategoria]) VALUES (1, N'DIJES', N'https://almacendejoyas.com/img/img_articulos/thumbs/1618600475-4376570.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [FotoCategoria]) VALUES (2, N'ANILLOS', N'https://almacendejoyas.com/img/img_articulos/thumbs/1657551098-2056645973.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [FotoCategoria]) VALUES (3, N'PULSERAS', N'https://almacendejoyas.com/img/img_articulos/thumbs/1644351850-1726772900.jpg')
INSERT [dbo].[Categorias] ([IdCategoria], [NombreCategoria], [FotoCategoria]) VALUES (4, N'COLGANTES', N'https://almacendejoyas.com/img/img_articulos/thumbs/1634921511-1153297678.jpg')
SET IDENTITY_INSERT [dbo].[Categorias] OFF
GO
SET IDENTITY_INSERT [dbo].[Productos] ON 

INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (1, N'Ala ángel', 14800, 1, N'https://almacendejoyas.com/img/img_articulos/1649427760-1759678283.jpg', N'Plata', N'Colgante ala, 7 cm total. Calidad en materiales')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (2, N'Medalla virgen', 13600, 1, N'https://almacendejoyas.com/img/img_articulos/1649261551-1724549111.jpg', N'Bronce', N'Medalla virgen piedras multicolor, 3,5 cm')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (3, N'Anillo solitario', 8400, 2, N'https://almacendejoyas.com/img/img_articulos/1657813281-1060550454.jpg', N'Oro', N'Anillo solitario, amarillo, piedra ovalada, medio sin fin')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (4, N'Anillo andante', 5200, 2, N'https://almacendejoyas.com/img/img_articulos/1657805769-1630887724.jpg', N'Plata', N'Anillo solitario blanco')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (5, N'Pulsera Esclava linea', 25600, 3, N'https://almacendejoyas.com/img/img_articulos/1651069456-295448413.jpg', N'Plata', N'Esclava linea premium, piedras de distinto tamaños, rosada')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (9, N'Pulsera Reina linea', 25600, 3, N'https://almacendejoyas.com/img/img_articulos/1651069404-551993277.jpg', N'Oro', N'Esclava linea premium, piedras de distinto tamaños, amarilla')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (10, N'Gargantilla linea premium', 122800, 4, N'https://almacendejoyas.com/img/img_articulos/1644501594-812599517.jpg', N'Oro', N'Gargantilla linea premium, eslabonada, con piedras en el centro, amarilla')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (11, N'Tic tac toe', 31200, 4, N'https://almacendejoyas.com/img/img_articulos/1618607495-1499908871.jpg', N'Plata', N'Gargantilla eslabonada tic tac toe ( precio x 45 cm)')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (12, N'La A', 21200, 1, N'https://almacendejoyas.com/img/img_articulos/1618605839-760894845.jpg', N'Plata', N'Colgante letra grande, argolla con piedras, platabella. 2,1 cm aprox ( letra sin argolla )')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (13, N'Anillo doble de oro', 10000, 2, N'https://almacendejoyas.com/img/img_articulos/1656952950-1680154902.jpg', N'Oro', N'Anillo doble, amarillo, medio sin fin y solitario de piedras baguettes')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (14, N'Linea premium', 28400, 3, N'https://almacendejoyas.com/img/img_articulos/1651065990-668442358.jpg', N'Oro', N'Pulsera linea premium, esclava, con piedras mas grandes en el centro, amarilla')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (16, N'Pua de plata', 14400, 4, N'https://almacendejoyas.com/img/img_articulos/1575574835-2008926469.jpg', N'Plata', N'Corbatero tif 2 con corazon mediano')
INSERT [dbo].[Productos] ([IdProducto], [NombreProducto], [PrecioProducto], [IdCategoria], [FotoProducto], [MaterialProducto], [DescripcionProducto]) VALUES (21, N'Collar de Bolitas', 24800, 4, N'https://almacendejoyas.com/img/img_articulos/b(15)col5_d35fb4350d648b3e09d45a8ead807be6.jpg', N'Bronce', N'collar bolitas 6 mm ( precio x 40 cms )')
SET IDENTITY_INSERT [dbo].[Productos] OFF
GO
ALTER TABLE [dbo].[Carritos]  WITH CHECK ADD  CONSTRAINT [FK_Carritos_Productos] FOREIGN KEY([IdProducto])
REFERENCES [dbo].[Productos] ([IdProducto])
GO
ALTER TABLE [dbo].[Carritos] CHECK CONSTRAINT [FK_Carritos_Productos]
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD  CONSTRAINT [FK_Productos_Categorias] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categorias] ([IdCategoria])
GO
ALTER TABLE [dbo].[Productos] CHECK CONSTRAINT [FK_Productos_Categorias]
GO
