CREATE TABLE [dbo].[ReviewCategory] (
    [id]       INT          IDENTITY (1, 1) NOT NULL,
    [Category] VARCHAR (50) NULL,
    CONSTRAINT [PK_ReviewCategory] PRIMARY KEY CLUSTERED ([id] ASC)
);

