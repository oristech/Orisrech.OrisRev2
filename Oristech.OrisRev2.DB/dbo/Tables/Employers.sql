CREATE TABLE [dbo].[Employers] (
    [ID]            INT            IDENTITY (1, 1) NOT NULL,
    [Employer_Name] VARCHAR (150)  NULL,
    [Address]       NVARCHAR (200) NULL,
    [Phone]         NCHAR (10)     NULL,
    [fax]           NVARCHAR (100) NULL,
    [email]         NVARCHAR (150) NULL,
    [addedby]       NVARCHAR (128) NULL,
    [Addedon]       SMALLDATETIME  NULL,
    [updatedby]     NVARCHAR (128) NULL,
    [updateon]      SMALLDATETIME  NULL,
    CONSTRAINT [PK__Employers__74444068] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Employers_AspNetUsers] FOREIGN KEY ([addedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Employers_AspNetUsers1] FOREIGN KEY ([updatedby]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

