CREATE TABLE [dbo].[Adjusters] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Name]      VARCHAR (50)   NULL,
    [Address]   NVARCHAR (150) NULL,
    [Phone]     NVARCHAR (50)  NULL,
    [Email]     NVARCHAR (50)  NULL,
    [Addedon]   SMALLDATETIME  NULL,
    [addedby]   NVARCHAR (128) NULL,
    [updateon]  SMALLDATETIME  NULL,
    [updatedby] NVARCHAR (128) NULL,
    CONSTRAINT [PK_Adjusters] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Adjusters_AspNetUsers] FOREIGN KEY ([addedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Adjusters_AspNetUsers1] FOREIGN KEY ([updatedby]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

