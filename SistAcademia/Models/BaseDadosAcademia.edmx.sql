
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 07/04/2017 16:42:36
-- Generated from EDMX file: C:\Users\SAMSUNG\Source\Repos\Asp.net.Aulas2\SistAcademia\SistAcademia\Models\BaseDadosAcademia.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BaseDadosAcademiaDB];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Alunos'
CREATE TABLE [dbo].[Alunos] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Peso] nvarchar(max)  NOT NULL,
    [Altura] nvarchar(max)  NOT NULL,
    [Idade] nvarchar(max)  NOT NULL,
    [Endereco] nvarchar(max)  NOT NULL,
    [Telefone] nvarchar(max)  NOT NULL,
    [Objetivo] nvarchar(max)  NOT NULL,
    [Ativo] bit  NOT NULL,
    [AcademiaId] int  NOT NULL
);
GO

-- Creating table 'Academias'
CREATE TABLE [dbo].[Academias] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Endereco] nvarchar(max)  NOT NULL,
    [Telefone] nvarchar(max)  NOT NULL,
    [Professor] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Alunos'
ALTER TABLE [dbo].[Alunos]
ADD CONSTRAINT [PK_Alunos]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Academias'
ALTER TABLE [dbo].[Academias]
ADD CONSTRAINT [PK_Academias]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AcademiaId] in table 'Alunos'
ALTER TABLE [dbo].[Alunos]
ADD CONSTRAINT [FK_AcademiaAluno]
    FOREIGN KEY ([AcademiaId])
    REFERENCES [dbo].[Academias]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AcademiaAluno'
CREATE INDEX [IX_FK_AcademiaAluno]
ON [dbo].[Alunos]
    ([AcademiaId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------