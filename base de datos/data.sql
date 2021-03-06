USE [master]
GO
/****** Object:  Database [sistemaDePrestamos]    Script Date: 04/07/2018 02:15:30 p.m. ******/
CREATE DATABASE [sistemaDePrestamos]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sistemaDePrestamos', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\sistemaDePrestamos.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sistemaDePrestamos_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\sistemaDePrestamos_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [sistemaDePrestamos] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sistemaDePrestamos].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sistemaDePrestamos] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET ARITHABORT OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sistemaDePrestamos] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sistemaDePrestamos] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sistemaDePrestamos] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sistemaDePrestamos] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sistemaDePrestamos] SET  MULTI_USER 
GO
ALTER DATABASE [sistemaDePrestamos] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sistemaDePrestamos] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sistemaDePrestamos] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sistemaDePrestamos] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [sistemaDePrestamos] SET DELAYED_DURABILITY = DISABLED 
GO
USE [sistemaDePrestamos]
GO
/****** Object:  Table [dbo].[Clietes]    Script Date: 04/07/2018 02:15:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clietes](
	[idCliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Telefono] [varchar](50) NULL,
	[Celular] [varchar](50) NOT NULL,
	[Cedula] [nvarchar](20) NULL,
	[Residencia] [varchar](50) NOT NULL,
	[Correo] [varchar](50) NULL,
	[Sexo] [varchar](50) NULL,
	[Empresa] [varchar](50) NOT NULL,
	[Telefono_Empresa] [varchar](50) NOT NULL,
	[Puesto] [varchar](50) NOT NULL,
	[Ingreso] [varchar](50) NOT NULL,
	[Supervisor] [varchar](50) NOT NULL,
	[Otro_Ingreso] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Clietes] PRIMARY KEY CLUSTERED 
(
	[idCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cuotas]    Script Date: 04/07/2018 02:15:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cuotas](
	[id_cuota] [int] IDENTITY(1,1) NOT NULL,
	[no_cuota] [int] NULL,
	[monto] [int] NULL,
	[monto_cuota] [int] NULL,
	[interes_cuota] [int] NULL,
	[fecha_de_pago] [datetime] NULL,
	[estado] [int] NULL,
	[prestamo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_cuota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empleado]    Script Date: 04/07/2018 02:15:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empleado](
	[idEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Celular] [varchar](50) NULL,
	[Sueldo] [varchar](50) NULL,
	[Usuario] [varchar](50) NULL,
	[Contra] [varchar](50) NULL,
	[Categoria] [varchar](50) NULL,
 CONSTRAINT [PK_Empleado] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EmpleadoImagenes]    Script Date: 04/07/2018 02:15:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpleadoImagenes](
	[IdImagenes] [int] NOT NULL,
	[Imagen] [image] NOT NULL,
	[Usuario] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdImagenes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 04/07/2018 02:15:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresas](
	[idEmpresa] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Calle] [varchar](100) NULL,
	[Ciudad] [varchar](50) NULL,
	[Sector] [varchar](50) NULL,
	[Numero] [int] NULL,
 CONSTRAINT [PK_Empresas] PRIMARY KEY CLUSTERED 
(
	[idEmpresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[garante]    Script Date: 04/07/2018 02:15:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[garante](
	[idGarante] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](50) NULL,
	[redidencia] [varchar](50) NULL,
	[Sueldo] [int] NULL,
	[cedula] [varchar](20) NULL,
	[empresa] [varchar](20) NULL,
	[correo] [varchar](20) NULL,
	[contacto] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[idGarante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Garantes]    Script Date: 04/07/2018 02:15:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Garantes](
	[idGarantes] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Residencia] [varchar](100) NULL,
	[Sueldo] [int] NOT NULL,
	[cedula] [varchar](12) NULL,
	[empresa] [varchar](25) NULL,
	[correo] [varchar](25) NULL,
	[contacto] [varchar](25) NULL,
 CONSTRAINT [PK_Garantes] PRIMARY KEY CLUSTERED 
(
	[idGarantes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notificacion]    Script Date: 04/07/2018 02:15:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notificacion](
	[idNotificacion] [int] IDENTITY(1,1) NOT NULL,
	[tipo] [int] NULL,
	[empleado] [varchar](50) NULL,
	[cliente] [varchar](50) NULL,
	[cantidad] [int] NULL,
	[descripcion] [varchar](100) NULL,
	[fecha] [datetime] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[idNotificacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[solicitud_prestamo]    Script Date: 04/07/2018 02:15:30 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitud_prestamo](
	[id_solicitud] [int] IDENTITY(1,1) NOT NULL,
	[cantidad_cuota] [int] NOT NULL,
	[cantidad_solicitada] [int] NOT NULL,
	[interes_prestamos] [int] NOT NULL,
	[aprobacion] [int] NOT NULL,
	[forma_de_pago] [int] NOT NULL,
	[cliente] [int] NULL,
	[garantes] [int] NULL,
	[fecha_de_solicitud] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_solicitud] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[cuotas]  WITH CHECK ADD FOREIGN KEY([prestamo])
REFERENCES [dbo].[solicitud_prestamo] ([id_solicitud])
GO
ALTER TABLE [dbo].[EmpleadoImagenes]  WITH CHECK ADD FOREIGN KEY([Usuario])
REFERENCES [dbo].[Empleado] ([idEmpleado])
GO
ALTER TABLE [dbo].[solicitud_prestamo]  WITH CHECK ADD FOREIGN KEY([cliente])
REFERENCES [dbo].[Clietes] ([idCliente])
GO
ALTER TABLE [dbo].[solicitud_prestamo]  WITH CHECK ADD FOREIGN KEY([garantes])
REFERENCES [dbo].[garante] ([idGarante])
GO
USE [master]
GO
ALTER DATABASE [sistemaDePrestamos] SET  READ_WRITE 
GO
