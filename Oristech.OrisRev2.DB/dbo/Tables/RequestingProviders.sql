CREATE TABLE [dbo].[RequestingProviders] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [Speciality] NVARCHAR (150) NULL,
    [Address]    NVARCHAR (150) NULL,
    [Phone]      NVARCHAR (50)  NULL,
    [fax]        NVARCHAR (50)  NULL,
    [email]      NVARCHAR (150) NULL,
    [addedby]    NVARCHAR (128) NULL,
    [Addedon]    SMALLDATETIME  NULL,
    [updatedby]  NVARCHAR (128) NULL,
    [updateon]   SMALLDATETIME  NULL,
    CONSTRAINT [PK_RequestingProviders] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_RequestingProviders_AspNetUsers] FOREIGN KEY ([addedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_RequestingProviders_AspNetUsers1] FOREIGN KEY ([updatedby]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

