
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/31/2017 10:09:13
-- Generated from EDMX file: C:\Users\Aluno\Documentos\Visual Studio 2015\Geison\ProjetoAcademia\ProjetoAcademia\Models\BaseDeDados.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [BasedeDados];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AcademiaAluno]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Alunos] DROP CONSTRAINT [FK_AcademiaAluno];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Academias]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Academias];
GO
IF OBJECT_ID(N'[dbo].[Alunos]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Alunos];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Academias'
CREATE TABLE [dbo].[Academias] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nome] nvarchar(max)  NOT NULL,
    [Endereco] nvarchar(max)  NOT NULL,
    [Telefone] nvarchar(max)  NOT NULL,
    [Professor] nvarchar(max)  NOT NULL
);
GO

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
    [AcademiaId] int  NOT NULL,
    [Ativo] bit  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Academias'
ALTER TABLE [dbo].[Academias]
ADD CONSTRAINT [PK_Academias]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Alunos'
ALTER TABLE [dbo].[Alunos]
ADD CONSTRAINT [PK_Alunos]
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