CREATE TABLE [dbo].[Additional_Testing] (
    [id]       INT           IDENTITY (1, 1) NOT NULL,
    [Reportid] INT           NOT NULL,
    [Type]     VARCHAR (50)  NULL,
    [place]    VARCHAR (50)  NULL,
    [date]     SMALLDATETIME NULL,
    [time]     SMALLDATETIME NULL,
    CONSTRAINT [PK_Additional_Testing] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Additional_Testing_Additional_Testing] FOREIGN KEY ([Reportid]) REFERENCES [dbo].[Cases] ([OrisID])
);

