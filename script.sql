USE [Facturacion]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 23/07/2021 03:59:27 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[IDCliente] [int] NOT NULL,
	[nombre] [varchar](30) NOT NULL,
	[apellidos] [varchar](30) NOT NULL,
	[fechaNacimiento] [date] NOT NULL,
 CONSTRAINT [PK_Clientes] PRIMARY KEY CLUSTERED 
(
	[IDCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleFactura]    Script Date: 23/07/2021 03:59:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleFactura](
	[IDDetalleFactura] [int] IDENTITY(1,1) NOT NULL,
	[IDFactura] [int] NOT NULL,
	[IDProducto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_DetalleFactura] PRIMARY KEY CLUSTERED 
(
	[IDDetalleFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Factura]    Script Date: 23/07/2021 03:59:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factura](
	[IDFactura] [int] IDENTITY(1,1) NOT NULL,
	[IDCliente] [int] NOT NULL,
	[fecha] [date] NOT NULL,
 CONSTRAINT [PK_Factura] PRIMARY KEY CLUSTERED 
(
	[IDFactura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Producto]    Script Date: 23/07/2021 03:59:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Producto](
	[IDProducto] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[cantidad] [int] NOT NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[IDProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([IDCliente], [nombre], [apellidos], [fechaNacimiento]) VALUES (15498465, N'jorge', N'gomez perez', CAST(N'2000-01-01' AS Date))
INSERT [dbo].[Cliente] ([IDCliente], [nombre], [apellidos], [fechaNacimiento]) VALUES (21448455, N'mericce', N'santiago cepeda', CAST(N'1979-10-12' AS Date))
INSERT [dbo].[Cliente] ([IDCliente], [nombre], [apellidos], [fechaNacimiento]) VALUES (487846548, N'vladimir', N'silva fuentes', CAST(N'1977-09-12' AS Date))
INSERT [dbo].[Cliente] ([IDCliente], [nombre], [apellidos], [fechaNacimiento]) VALUES (1054878456, N'sophie', N'silva santiago', CAST(N'2017-06-05' AS Date))
GO
SET IDENTITY_INSERT [dbo].[DetalleFactura] ON 

INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (1, 1, 8, 6, CAST(89.10 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (2, 1, 7, 9, CAST(12.70 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (3, 1, 5, 10, CAST(58.40 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (4, 2, 6, 9, CAST(62.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (5, 2, 1, 8, CAST(38.20 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (6, 2, 14, 1, CAST(39.50 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (7, 3, 11, 1, CAST(49.40 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (8, 3, 9, 9, CAST(99.60 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (9, 4, 3, 3, CAST(32.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (10, 5, 2, 8, CAST(86.40 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (11, 5, 4, 5, CAST(12.70 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (12, 6, 10, 10, CAST(99.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (13, 6, 12, 6, CAST(46.10 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (14, 7, 13, 9, CAST(36.10 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (15, 7, 15, 8, CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (16, 2, 6, 15, CAST(60.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (17, 8, 11, 10, CAST(49.00 AS Decimal(10, 2)))
INSERT [dbo].[DetalleFactura] ([IDDetalleFactura], [IDFactura], [IDProducto], [cantidad], [precio]) VALUES (18, 8, 9, 50, CAST(99.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[DetalleFactura] OFF
GO
SET IDENTITY_INSERT [dbo].[Factura] ON 

INSERT [dbo].[Factura] ([IDFactura], [IDCliente], [fecha]) VALUES (1, 21448455, CAST(N'2001-12-12' AS Date))
INSERT [dbo].[Factura] ([IDFactura], [IDCliente], [fecha]) VALUES (2, 21448455, CAST(N'2000-05-05' AS Date))
INSERT [dbo].[Factura] ([IDFactura], [IDCliente], [fecha]) VALUES (3, 21448455, CAST(N'2000-08-07' AS Date))
INSERT [dbo].[Factura] ([IDFactura], [IDCliente], [fecha]) VALUES (4, 487846548, CAST(N'2002-01-01' AS Date))
INSERT [dbo].[Factura] ([IDFactura], [IDCliente], [fecha]) VALUES (5, 487846548, CAST(N'2000-05-04' AS Date))
INSERT [dbo].[Factura] ([IDFactura], [IDCliente], [fecha]) VALUES (6, 1054878456, CAST(N'2000-03-03' AS Date))
INSERT [dbo].[Factura] ([IDFactura], [IDCliente], [fecha]) VALUES (7, 1054878456, CAST(N'1999-08-07' AS Date))
INSERT [dbo].[Factura] ([IDFactura], [IDCliente], [fecha]) VALUES (8, 15498465, CAST(N'2015-05-05' AS Date))
SET IDENTITY_INSERT [dbo].[Factura] OFF
GO
SET IDENTITY_INSERT [dbo].[Producto] ON 

INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (1, N'Mandarina', CAST(38.20 AS Decimal(10, 2)), 28)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (2, N'Lechuga', CAST(86.40 AS Decimal(10, 2)), 5)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (3, N'Melon', CAST(32.00 AS Decimal(10, 2)), 87)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (4, N'Col', CAST(12.70 AS Decimal(10, 2)), 37)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (5, N'Berenjena', CAST(58.40 AS Decimal(10, 2)), 16)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (6, N'Platano', CAST(62.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (7, N'Tomate', CAST(12.70 AS Decimal(10, 2)), 8)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (8, N'Uva', CAST(89.10 AS Decimal(10, 2)), 66)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (9, N'Esparrago', CAST(99.60 AS Decimal(10, 2)), 63)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (10, N'Zanahoria', CAST(99.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (11, N'Naranja', CAST(49.40 AS Decimal(10, 2)), 13)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (12, N'Melocoton', CAST(46.10 AS Decimal(10, 2)), 43)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (13, N'Pimiento', CAST(36.10 AS Decimal(10, 2)), 68)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (14, N'Manzana', CAST(39.50 AS Decimal(10, 2)), 5)
INSERT [dbo].[Producto] ([IDProducto], [nombre], [precio], [cantidad]) VALUES (15, N'Patata', CAST(45.00 AS Decimal(10, 2)), 32)
SET IDENTITY_INSERT [dbo].[Producto] OFF
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Factura] FOREIGN KEY([IDFactura])
REFERENCES [dbo].[Factura] ([IDFactura])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Factura]
GO
ALTER TABLE [dbo].[DetalleFactura]  WITH CHECK ADD  CONSTRAINT [FK_DetalleFactura_Producto] FOREIGN KEY([IDProducto])
REFERENCES [dbo].[Producto] ([IDProducto])
GO
ALTER TABLE [dbo].[DetalleFactura] CHECK CONSTRAINT [FK_DetalleFactura_Producto]
GO
ALTER TABLE [dbo].[Factura]  WITH CHECK ADD  CONSTRAINT [FK_Factura_Cliente] FOREIGN KEY([IDCliente])
REFERENCES [dbo].[Cliente] ([IDCliente])
GO
ALTER TABLE [dbo].[Factura] CHECK CONSTRAINT [FK_Factura_Cliente]
GO
/****** Object:  StoredProcedure [dbo].[sp_AnalisisProximaFechaCompra]    Script Date: 23/07/2021 03:59:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Vladimir Silva>
-- Create date: <21/07/2021>
-- Description:	<Procedimiento para obtener la posible proxima fecha de compra de un cliente dado>
-- =============================================
CREATE PROCEDURE [dbo].[sp_AnalisisProximaFechaCompra] (@IDCliente int, @mensaje varchar(150) OUTPUT)

AS

		DECLARE @cantidadFacturas int
		DECLARE @ultimaCompra date
		DECLARE @penultimaCompra date
		DECLARE @fechaProximaCompra date

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT @cantidadFacturas = COUNT(*) from Factura where Factura.IDCliente = @IDCliente

	if @cantidadFacturas < 2
		BEGIN
			SELECT @mensaje = 'No se puede hacer el analisis. Se necesitan minimo 2 facturas y el cliente tiene solo' + STR(@cantidadFacturas)
		END
	else
		BEGIN
			SELECT TOP 1 @ultimaCompra = F.fecha from Cliente as C join Factura as F on C.IDCliente = F.IDCliente  where C.IDCliente = @IDCliente
							   ORDER BY F.fecha desc
			SELECT TOP 1 @penultimaCompra = F.fecha from Cliente as C join Factura as F on C.IDCliente = F.IDCliente  where C.IDCliente = @IDCliente
							   and F.fecha <> @ultimaCompra ORDER BY F.fecha desc

			SELECT @fechaProximaCompra = DATEADD(d, DATEDIFF(DAY,@penultimaCompra,@ultimaCompra),@ultimaCompra)

			SELECT @mensaje =  'La posible proxima fecha de compra del cliente, será el ' + CAST(@fechaProximaCompra AS VARCHAR(10))
		END
END
GO
/****** Object:  StoredProcedure [dbo].[sp_listadoClientesMenores35annosconComprasenRangoFechas]    Script Date: 23/07/2021 03:59:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Vladimir Silva>
-- Create date: <21/07/2021>
-- Description:	<Procedimiento para obtener la lista de todos los clientes menores de 35 años y que efectuaron compras en un rango de fechas>
-- =============================================
CREATE PROCEDURE [dbo].[sp_listadoClientesMenores35annosconComprasenRangoFechas] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Select distinct(C.IDCliente) as IDCliente, CONCAT(C.nombre,' ', C.apellidos) as Nombre, C.fechaNacimiento from Cliente as C join Factura as F on C.IDCliente=F.IDCliente where  DATEDIFF(YEAR,C.fechaNacimiento,GETDATE())
-(case
   when DATEADD(YY,DATEDIFF(YEAR,C.fechaNacimiento,GETDATE()),C.fechaNacimiento)>GETDATE() then
      1
   else
      0 
   end) <= 35 and F.fecha >= '2/1/2000' and F.fecha <= '5/25/2000'
	
END
GO
/****** Object:  StoredProcedure [dbo].[sp_listadoPrecios]    Script Date: 23/07/2021 03:59:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Vladimir Silva>
-- Create date: <21/07/2021>
-- Description:	<Procedimiento para obtener la lista de todos los productos>
-- =============================================
CREATE PROCEDURE [dbo].[sp_listadoPrecios] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT nombre, precio from Producto
END
GO
/****** Object:  StoredProcedure [dbo].[sp_listadoProductosExistenciaIgual5Unidades]    Script Date: 23/07/2021 03:59:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Vladimir Silva>
-- Create date: <21/07/2021>
-- Description:	<Procedimiento para obtener la lista de todos los productos con cantidades igual a 5 unidades>
-- =============================================
CREATE PROCEDURE [dbo].[sp_listadoProductosExistenciaIgual5Unidades] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT * from Producto where cantidad = 5
END
GO
/****** Object:  StoredProcedure [dbo].[sp_listadoProductosVendidosenAnno2000]    Script Date: 23/07/2021 03:59:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Vladimir Silva>
-- Create date: <21/07/2021>
-- Description:	<Procedimiento para obtener la lista de todos los productos vendidos en el año 2000>
-- =============================================
CREATE PROCEDURE [dbo].[sp_listadoProductosVendidosenAnno2000] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	select P.IDProducto as IDProdcuto, P.nombre as nombreproducto, sum(D.cantidad*D.precio) as TotalVentas, sum(D.cantidad) as Cantidad from Factura as F join DetalleFactura as D on 
	F.IDFactura=D.IDFactura join Producto as P on P.IDProducto=D.IDProducto where YEAR(F.fecha) = 2000 group by P.nombre, P.IDProducto
END
GO
