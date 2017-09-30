CREATE TABLE [dbo].[Complain_Types] (
    [ID]              INT            IDENTITY (1, 1) NOT NULL,
    [TypeDescription] VARCHAR (250)  NULL,
    [Addedon]         SMALLDATETIME  NULL,
    [addedby]         NVARCHAR (128) NULL,
    [updateon]        SMALLDATETIME  NULL,
    [updatedby]       NVARCHAR (128) NULL,
    CONSTRAINT [PK_Complain_Types] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Complain_Types_AspNetUsers] FOREIGN KEY ([addedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Complain_Types_AspNetUsers1] FOREIGN KEY ([updatedby]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

