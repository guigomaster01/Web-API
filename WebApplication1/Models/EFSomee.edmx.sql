
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/02/2024 20:03:09
-- Generated from EDMX file: C:\Users\LabInfo\source\repos\Web-API\WebApplication1\Models\EFSomee.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [230650_filmes];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[tb_Filme]', 'U') IS NOT NULL
    DROP TABLE [dbo].[tb_Filme];
GO
IF OBJECT_ID(N'[dbo].[Usuario]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuario];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'tb_Filme'
CREATE TABLE [dbo].[tb_Filme] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Titulo] varchar(50)  NULL,
    [Ano] varchar(50)  NULL,
    [Genero] varchar(50)  NULL,
    [Produtora] varchar(50)  NULL
);
GO

-- Creating table 'Usuario'
CREATE TABLE [dbo].[Usuario] (
    [Codigo] int IDENTITY(1,1) NOT NULL,
    [Email] varchar(50)  NULL,
    [Senha] varchar(50)  NULL,
    [UltimoAcesso] datetime  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Codigo] in table 'tb_Filme'
ALTER TABLE [dbo].[tb_Filme]
ADD CONSTRAINT [PK_tb_Filme]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'Usuario'
ALTER TABLE [dbo].[Usuario]
ADD CONSTRAINT [PK_Usuario]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------