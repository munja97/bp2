
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/30/2021 10:28:05
-- Generated from EDMX file: C:\Users\User\source\repos\BP2\db\database.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [bp2];
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

-- Creating table 'Radniks'
CREATE TABLE [dbo].[Radniks] (
    [PRZ] nvarchar(max)  NOT NULL,
    [IME] nvarchar(max)  NOT NULL,
    [PLT] int  NOT NULL,
    [JMBG] int  NOT NULL,
    [POZ] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Kupacs'
CREATE TABLE [dbo].[Kupacs] (
    [KID] int  NOT NULL,
    [KNAZIV] nvarchar(max)  NOT NULL,
    [KULICA] nvarchar(max)  NOT NULL,
    [KGRAD] nvarchar(max)  NOT NULL,
    [KBROJ] nvarchar(max)  NOT NULL,
    [KFIKSNI] nvarchar(max)  NOT NULL,
    [KMOB] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Ugovors'
CREATE TABLE [dbo].[Ugovors] (
    [DATUM] datetime  NOT NULL,
    [DirektorJMBG] int  NOT NULL,
    [KupacKID] int  NOT NULL
);
GO

-- Creating table 'Porudzbinas'
CREATE TABLE [dbo].[Porudzbinas] (
    [UgovorKupacKID] int  NOT NULL,
    [UgovorDirektorJMBG] int  NOT NULL,
    [ID] int  NOT NULL,
    [MenadzerJMBG] int  NOT NULL
);
GO

-- Creating table 'Prosledjujes'
CREATE TABLE [dbo].[Prosledjujes] (
    [PorudzbinaID] int  NOT NULL,
    [MagacionerJMBG1] int  NOT NULL
);
GO

-- Creating table 'Dobavljacs'
CREATE TABLE [dbo].[Dobavljacs] (
    [ID] int  NOT NULL,
    [NAZIV] nvarchar(max)  NOT NULL,
    [ULICA] nvarchar(max)  NOT NULL,
    [GRAD] nvarchar(max)  NOT NULL,
    [BROJ] nvarchar(max)  NOT NULL,
    [FIKSNI] nvarchar(max)  NOT NULL,
    [MOBILNI] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Kontakts'
CREATE TABLE [dbo].[Kontakts] (
    [DATUM] datetime  NOT NULL,
    [DobavljacID] int  NOT NULL,
    [DirektorJMBG] int  NOT NULL
);
GO

-- Creating table 'Magacins'
CREATE TABLE [dbo].[Magacins] (
    [MID] int  NOT NULL,
    [MGRAD] nvarchar(max)  NOT NULL,
    [MULICA] nvarchar(max)  NOT NULL,
    [MBROJ] nvarchar(max)  NOT NULL,
    [KAPACITET] int  NOT NULL
);
GO

-- Creating table 'Povrces'
CREATE TABLE [dbo].[Povrces] (
    [VID] int  NOT NULL,
    [VNAZIV] nvarchar(max)  NOT NULL,
    [ZEMLJAP] nvarchar(max)  NOT NULL,
    [ROK] nvarchar(max)  NOT NULL,
    [MagacinMID] int  NOT NULL,
    [KontaktDobavljacID] int  NOT NULL,
    [KontaktDirektorJMBG] int  NOT NULL,
    [ProsledjujePorudzbinaID] int  NOT NULL,
    [ProsledjujeMagacionerJMBG1] int  NOT NULL
);
GO

-- Creating table 'Odvajas'
CREATE TABLE [dbo].[Odvajas] (
    [PovrceMagacinMID] int  NOT NULL,
    [PovrceVID] int  NOT NULL,
    [ProsledjujePorudzbinaID] int  NOT NULL,
    [ProsledjujeMagacionerJMBG1] int  NOT NULL
);
GO

-- Creating table 'Tovaris'
CREATE TABLE [dbo].[Tovaris] (
    [VozacJMBG] int  NOT NULL,
    [OdvajaPovrceMagacinMID] int  NOT NULL,
    [OdvajaPovrceVID] int  NOT NULL
);
GO

-- Creating table 'Vozis'
CREATE TABLE [dbo].[Vozis] (
    [KupacKID] int  NOT NULL,
    [TovariVozacJMBG] int  NOT NULL,
    [TovariOdvajaPovrceMagacinMID] int  NOT NULL,
    [TovariOdvajaPovrceVID] int  NOT NULL
);
GO

-- Creating table 'Radniks_Direktor'
CREATE TABLE [dbo].[Radniks_Direktor] (
    [JMBG] int  NOT NULL
);
GO

-- Creating table 'Radniks_Menadzer'
CREATE TABLE [dbo].[Radniks_Menadzer] (
    [JMBG] int  NOT NULL
);
GO

-- Creating table 'Radniks_Magacioner'
CREATE TABLE [dbo].[Radniks_Magacioner] (
    [JMBG] int  NOT NULL
);
GO

-- Creating table 'Radniks_Vozac'
CREATE TABLE [dbo].[Radniks_Vozac] (
    [JMBG] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [JMBG] in table 'Radniks'
ALTER TABLE [dbo].[Radniks]
ADD CONSTRAINT [PK_Radniks]
    PRIMARY KEY CLUSTERED ([JMBG] ASC);
GO

-- Creating primary key on [KID] in table 'Kupacs'
ALTER TABLE [dbo].[Kupacs]
ADD CONSTRAINT [PK_Kupacs]
    PRIMARY KEY CLUSTERED ([KID] ASC);
GO

-- Creating primary key on [KupacKID], [DirektorJMBG] in table 'Ugovors'
ALTER TABLE [dbo].[Ugovors]
ADD CONSTRAINT [PK_Ugovors]
    PRIMARY KEY CLUSTERED ([KupacKID], [DirektorJMBG] ASC);
GO

-- Creating primary key on [ID] in table 'Porudzbinas'
ALTER TABLE [dbo].[Porudzbinas]
ADD CONSTRAINT [PK_Porudzbinas]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [PorudzbinaID], [MagacionerJMBG1] in table 'Prosledjujes'
ALTER TABLE [dbo].[Prosledjujes]
ADD CONSTRAINT [PK_Prosledjujes]
    PRIMARY KEY CLUSTERED ([PorudzbinaID], [MagacionerJMBG1] ASC);
GO

-- Creating primary key on [ID] in table 'Dobavljacs'
ALTER TABLE [dbo].[Dobavljacs]
ADD CONSTRAINT [PK_Dobavljacs]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [DobavljacID], [DirektorJMBG] in table 'Kontakts'
ALTER TABLE [dbo].[Kontakts]
ADD CONSTRAINT [PK_Kontakts]
    PRIMARY KEY CLUSTERED ([DobavljacID], [DirektorJMBG] ASC);
GO

-- Creating primary key on [MID] in table 'Magacins'
ALTER TABLE [dbo].[Magacins]
ADD CONSTRAINT [PK_Magacins]
    PRIMARY KEY CLUSTERED ([MID] ASC);
GO

-- Creating primary key on [MagacinMID], [VID] in table 'Povrces'
ALTER TABLE [dbo].[Povrces]
ADD CONSTRAINT [PK_Povrces]
    PRIMARY KEY CLUSTERED ([MagacinMID], [VID] ASC);
GO

-- Creating primary key on [PovrceMagacinMID], [PovrceVID] in table 'Odvajas'
ALTER TABLE [dbo].[Odvajas]
ADD CONSTRAINT [PK_Odvajas]
    PRIMARY KEY CLUSTERED ([PovrceMagacinMID], [PovrceVID] ASC);
GO

-- Creating primary key on [VozacJMBG], [OdvajaPovrceMagacinMID], [OdvajaPovrceVID] in table 'Tovaris'
ALTER TABLE [dbo].[Tovaris]
ADD CONSTRAINT [PK_Tovaris]
    PRIMARY KEY CLUSTERED ([VozacJMBG], [OdvajaPovrceMagacinMID], [OdvajaPovrceVID] ASC);
GO

-- Creating primary key on [KupacKID], [TovariVozacJMBG], [TovariOdvajaPovrceMagacinMID], [TovariOdvajaPovrceVID] in table 'Vozis'
ALTER TABLE [dbo].[Vozis]
ADD CONSTRAINT [PK_Vozis]
    PRIMARY KEY CLUSTERED ([KupacKID], [TovariVozacJMBG], [TovariOdvajaPovrceMagacinMID], [TovariOdvajaPovrceVID] ASC);
GO

-- Creating primary key on [JMBG] in table 'Radniks_Direktor'
ALTER TABLE [dbo].[Radniks_Direktor]
ADD CONSTRAINT [PK_Radniks_Direktor]
    PRIMARY KEY CLUSTERED ([JMBG] ASC);
GO

-- Creating primary key on [JMBG] in table 'Radniks_Menadzer'
ALTER TABLE [dbo].[Radniks_Menadzer]
ADD CONSTRAINT [PK_Radniks_Menadzer]
    PRIMARY KEY CLUSTERED ([JMBG] ASC);
GO

-- Creating primary key on [JMBG] in table 'Radniks_Magacioner'
ALTER TABLE [dbo].[Radniks_Magacioner]
ADD CONSTRAINT [PK_Radniks_Magacioner]
    PRIMARY KEY CLUSTERED ([JMBG] ASC);
GO

-- Creating primary key on [JMBG] in table 'Radniks_Vozac'
ALTER TABLE [dbo].[Radniks_Vozac]
ADD CONSTRAINT [PK_Radniks_Vozac]
    PRIMARY KEY CLUSTERED ([JMBG] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [DirektorJMBG] in table 'Ugovors'
ALTER TABLE [dbo].[Ugovors]
ADD CONSTRAINT [FK_DirektorUgovor]
    FOREIGN KEY ([DirektorJMBG])
    REFERENCES [dbo].[Radniks_Direktor]
        ([JMBG])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DirektorUgovor'
CREATE INDEX [IX_FK_DirektorUgovor]
ON [dbo].[Ugovors]
    ([DirektorJMBG]);
GO

-- Creating foreign key on [KupacKID] in table 'Ugovors'
ALTER TABLE [dbo].[Ugovors]
ADD CONSTRAINT [FK_KupacUgovor]
    FOREIGN KEY ([KupacKID])
    REFERENCES [dbo].[Kupacs]
        ([KID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [UgovorKupacKID], [UgovorDirektorJMBG] in table 'Porudzbinas'
ALTER TABLE [dbo].[Porudzbinas]
ADD CONSTRAINT [FK_UgovorPorudzbina]
    FOREIGN KEY ([UgovorKupacKID], [UgovorDirektorJMBG])
    REFERENCES [dbo].[Ugovors]
        ([KupacKID], [DirektorJMBG])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UgovorPorudzbina'
CREATE INDEX [IX_FK_UgovorPorudzbina]
ON [dbo].[Porudzbinas]
    ([UgovorKupacKID], [UgovorDirektorJMBG]);
GO

-- Creating foreign key on [MenadzerJMBG] in table 'Porudzbinas'
ALTER TABLE [dbo].[Porudzbinas]
ADD CONSTRAINT [FK_MenadzerPorudzbina]
    FOREIGN KEY ([MenadzerJMBG])
    REFERENCES [dbo].[Radniks_Menadzer]
        ([JMBG])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MenadzerPorudzbina'
CREATE INDEX [IX_FK_MenadzerPorudzbina]
ON [dbo].[Porudzbinas]
    ([MenadzerJMBG]);
GO

-- Creating foreign key on [PorudzbinaID] in table 'Prosledjujes'
ALTER TABLE [dbo].[Prosledjujes]
ADD CONSTRAINT [FK_PorudzbinaProsledjuje]
    FOREIGN KEY ([PorudzbinaID])
    REFERENCES [dbo].[Porudzbinas]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [MagacionerJMBG1] in table 'Prosledjujes'
ALTER TABLE [dbo].[Prosledjujes]
ADD CONSTRAINT [FK_MagacionerProsledjuje]
    FOREIGN KEY ([MagacionerJMBG1])
    REFERENCES [dbo].[Radniks_Magacioner]
        ([JMBG])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_MagacionerProsledjuje'
CREATE INDEX [IX_FK_MagacionerProsledjuje]
ON [dbo].[Prosledjujes]
    ([MagacionerJMBG1]);
GO

-- Creating foreign key on [DobavljacID] in table 'Kontakts'
ALTER TABLE [dbo].[Kontakts]
ADD CONSTRAINT [FK_DobavljacKontakt]
    FOREIGN KEY ([DobavljacID])
    REFERENCES [dbo].[Dobavljacs]
        ([ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DirektorJMBG] in table 'Kontakts'
ALTER TABLE [dbo].[Kontakts]
ADD CONSTRAINT [FK_DirektorKontakt]
    FOREIGN KEY ([DirektorJMBG])
    REFERENCES [dbo].[Radniks_Direktor]
        ([JMBG])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DirektorKontakt'
CREATE INDEX [IX_FK_DirektorKontakt]
ON [dbo].[Kontakts]
    ([DirektorJMBG]);
GO

-- Creating foreign key on [MagacinMID] in table 'Povrces'
ALTER TABLE [dbo].[Povrces]
ADD CONSTRAINT [FK_MagacinPovrce]
    FOREIGN KEY ([MagacinMID])
    REFERENCES [dbo].[Magacins]
        ([MID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [KontaktDobavljacID], [KontaktDirektorJMBG] in table 'Povrces'
ALTER TABLE [dbo].[Povrces]
ADD CONSTRAINT [FK_KontaktPovrce]
    FOREIGN KEY ([KontaktDobavljacID], [KontaktDirektorJMBG])
    REFERENCES [dbo].[Kontakts]
        ([DobavljacID], [DirektorJMBG])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_KontaktPovrce'
CREATE INDEX [IX_FK_KontaktPovrce]
ON [dbo].[Povrces]
    ([KontaktDobavljacID], [KontaktDirektorJMBG]);
GO

-- Creating foreign key on [ProsledjujePorudzbinaID], [ProsledjujeMagacionerJMBG1] in table 'Povrces'
ALTER TABLE [dbo].[Povrces]
ADD CONSTRAINT [FK_ProsledjujePovrce]
    FOREIGN KEY ([ProsledjujePorudzbinaID], [ProsledjujeMagacionerJMBG1])
    REFERENCES [dbo].[Prosledjujes]
        ([PorudzbinaID], [MagacionerJMBG1])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProsledjujePovrce'
CREATE INDEX [IX_FK_ProsledjujePovrce]
ON [dbo].[Povrces]
    ([ProsledjujePorudzbinaID], [ProsledjujeMagacionerJMBG1]);
GO

-- Creating foreign key on [PovrceMagacinMID], [PovrceVID] in table 'Odvajas'
ALTER TABLE [dbo].[Odvajas]
ADD CONSTRAINT [FK_PovrceOdvaja]
    FOREIGN KEY ([PovrceMagacinMID], [PovrceVID])
    REFERENCES [dbo].[Povrces]
        ([MagacinMID], [VID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ProsledjujePorudzbinaID], [ProsledjujeMagacionerJMBG1] in table 'Odvajas'
ALTER TABLE [dbo].[Odvajas]
ADD CONSTRAINT [FK_ProsledjujeOdvaja]
    FOREIGN KEY ([ProsledjujePorudzbinaID], [ProsledjujeMagacionerJMBG1])
    REFERENCES [dbo].[Prosledjujes]
        ([PorudzbinaID], [MagacionerJMBG1])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProsledjujeOdvaja'
CREATE INDEX [IX_FK_ProsledjujeOdvaja]
ON [dbo].[Odvajas]
    ([ProsledjujePorudzbinaID], [ProsledjujeMagacionerJMBG1]);
GO

-- Creating foreign key on [VozacJMBG] in table 'Tovaris'
ALTER TABLE [dbo].[Tovaris]
ADD CONSTRAINT [FK_VozacTovari]
    FOREIGN KEY ([VozacJMBG])
    REFERENCES [dbo].[Radniks_Vozac]
        ([JMBG])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [OdvajaPovrceMagacinMID], [OdvajaPovrceVID] in table 'Tovaris'
ALTER TABLE [dbo].[Tovaris]
ADD CONSTRAINT [FK_OdvajaTovari]
    FOREIGN KEY ([OdvajaPovrceMagacinMID], [OdvajaPovrceVID])
    REFERENCES [dbo].[Odvajas]
        ([PovrceMagacinMID], [PovrceVID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_OdvajaTovari'
CREATE INDEX [IX_FK_OdvajaTovari]
ON [dbo].[Tovaris]
    ([OdvajaPovrceMagacinMID], [OdvajaPovrceVID]);
GO

-- Creating foreign key on [KupacKID] in table 'Vozis'
ALTER TABLE [dbo].[Vozis]
ADD CONSTRAINT [FK_KupacVozi]
    FOREIGN KEY ([KupacKID])
    REFERENCES [dbo].[Kupacs]
        ([KID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [TovariVozacJMBG], [TovariOdvajaPovrceMagacinMID], [TovariOdvajaPovrceVID] in table 'Vozis'
ALTER TABLE [dbo].[Vozis]
ADD CONSTRAINT [FK_TovariVozi]
    FOREIGN KEY ([TovariVozacJMBG], [TovariOdvajaPovrceMagacinMID], [TovariOdvajaPovrceVID])
    REFERENCES [dbo].[Tovaris]
        ([VozacJMBG], [OdvajaPovrceMagacinMID], [OdvajaPovrceVID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TovariVozi'
CREATE INDEX [IX_FK_TovariVozi]
ON [dbo].[Vozis]
    ([TovariVozacJMBG], [TovariOdvajaPovrceMagacinMID], [TovariOdvajaPovrceVID]);
GO

-- Creating foreign key on [JMBG] in table 'Radniks_Direktor'
ALTER TABLE [dbo].[Radniks_Direktor]
ADD CONSTRAINT [FK_Direktor_inherits_Radnik]
    FOREIGN KEY ([JMBG])
    REFERENCES [dbo].[Radniks]
        ([JMBG])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [JMBG] in table 'Radniks_Menadzer'
ALTER TABLE [dbo].[Radniks_Menadzer]
ADD CONSTRAINT [FK_Menadzer_inherits_Radnik]
    FOREIGN KEY ([JMBG])
    REFERENCES [dbo].[Radniks]
        ([JMBG])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [JMBG] in table 'Radniks_Magacioner'
ALTER TABLE [dbo].[Radniks_Magacioner]
ADD CONSTRAINT [FK_Magacioner_inherits_Radnik]
    FOREIGN KEY ([JMBG])
    REFERENCES [dbo].[Radniks]
        ([JMBG])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [JMBG] in table 'Radniks_Vozac'
ALTER TABLE [dbo].[Radniks_Vozac]
ADD CONSTRAINT [FK_Vozac_inherits_Radnik]
    FOREIGN KEY ([JMBG])
    REFERENCES [dbo].[Radniks]
        ([JMBG])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------