CREATE TABLE [dbo].[Customer_X_Users] (
    [id]         INT            IDENTITY (1, 1) NOT NULL,
    [UserId]     NVARCHAR (128) NULL,
    [CustomerID] INT            NULL,
    [addedon]    DATETIME       NULL,
    [updatedon]  DATETIME       NULL,
    CONSTRAINT [PK_Customer_X_Users] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Customer_X_Users_AspNetUsers] FOREIGN KEY ([UserId]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Customer_X_Users_Customers] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID])
);

