CREATE TABLE [dbo].[Customers] (
    [CustomerID] INT            IDENTITY (1, 1) NOT NULL,
    [Name]       NVARCHAR (50)  NOT NULL,
    [Path]       NVARCHAR (150) NULL,
    [Addrerss1]  NVARCHAR (50)  NULL,
    [Address2]   NVARCHAR (50)  NULL,
    [Addedon]    SMALLDATETIME  NULL,
    [UpdateOn]   SMALLDATETIME  NULL,
    [AddedBy]    NVARCHAR (128) NULL,
    [UpdatedBy]  NVARCHAR (128) NULL,
    [TAT]        INT            NULL,
    [STAT]       INT            NULL,
    CONSTRAINT [PK__Customers__5441852A] PRIMARY KEY CLUSTERED ([CustomerID] ASC),
    CONSTRAINT [FK_Customers_AspNetUsers] FOREIGN KEY ([AddedBy]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Customers_AspNetUsers1] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

