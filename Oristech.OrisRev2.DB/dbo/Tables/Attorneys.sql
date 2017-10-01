CREATE TABLE [dbo].[Attorneys] (
    [id]        INT            IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (150) NULL,
    [Address]   NVARCHAR (150) NULL,
    [Phone]     NVARCHAR (50)  NULL,
    [Fax]       NVARCHAR (50)  NULL,
    [Email]     NVARCHAR (50)  NULL,
    [Addedon]   SMALLDATETIME  NULL,
    [addedby]   NVARCHAR (128) NULL,
    [updateon]  SMALLDATETIME  NULL,
    [updatedby] NVARCHAR (128) NULL,
    CONSTRAINT [PK_Attorneys] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Attorneys_AspNetUsers] FOREIGN KEY ([addedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Attorneys_AspNetUsers1] FOREIGN KEY ([updatedby]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

