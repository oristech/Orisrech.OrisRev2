CREATE TABLE [dbo].[WorkLocation] (
    [Locationid] INT            IDENTITY (1, 1) NOT NULL,
    [Name]       VARCHAR (50)   NULL,
    [AddedOn]    SMALLDATETIME  NULL,
    [AddedBy]    NVARCHAR (128) NULL,
    CONSTRAINT [PK_WorkLocation] PRIMARY KEY CLUSTERED ([Locationid] ASC),
    CONSTRAINT [FK_WorkLocation_AspNetUsers] FOREIGN KEY ([AddedBy]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

