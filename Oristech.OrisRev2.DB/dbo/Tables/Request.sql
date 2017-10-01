CREATE TABLE [dbo].[Request] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [CPTCode]     NVARCHAR (50)  NULL,
    [Description] NVARCHAR (200) NULL,
    [Addedon]     SMALLDATETIME  NULL,
    [addedby]     NVARCHAR (128) NULL,
    [updateon]    SMALLDATETIME  NULL,
    [updatedby]   NVARCHAR (128) NULL,
    CONSTRAINT [PK_Request] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Request_AspNetUsers] FOREIGN KEY ([addedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Request_AspNetUsers1] FOREIGN KEY ([updatedby]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

