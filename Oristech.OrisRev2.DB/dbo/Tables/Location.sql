CREATE TABLE [dbo].[Location] (
    [id]        INT            IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (150) NOT NULL,
    [Address]   NVARCHAR (150) NULL,
    [City]      NVARCHAR (150) NULL,
    [State]     NVARCHAR (150) NULL,
    [Country]   NVARCHAR (150) NULL,
    [addedby]   NVARCHAR (128) NULL,
    [updatedby] NVARCHAR (128) NULL,
    [addedon]   SMALLDATETIME  NULL,
    [updatedon] SMALLDATETIME  NULL,
    CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Location_AspNetUsers] FOREIGN KEY ([addedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Location_AspNetUsers1] FOREIGN KEY ([updatedby]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

