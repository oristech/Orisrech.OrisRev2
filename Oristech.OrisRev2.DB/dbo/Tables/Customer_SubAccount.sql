CREATE TABLE [dbo].[Customer_SubAccount] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [CustomerId]  INT            NOT NULL,
    [SubAcc_Name] VARCHAR (150)  NULL,
    [FolderName]  NVARCHAR (100) NULL,
    [AddedBy]     NVARCHAR (128) NULL,
    [AddedOn]     SMALLDATETIME  NULL,
    [TAT]         INT            NULL,
    [STAT]        INT            NULL,
    CONSTRAINT [PK_Customer_SubAccount] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Customer_SubAccount_Customer_SubAccount] FOREIGN KEY ([Id]) REFERENCES [dbo].[Customer_SubAccount] ([Id]),
    CONSTRAINT [FK_Customer_SubAccount_Customers] FOREIGN KEY ([AddedBy]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

