CREATE TABLE [dbo].[location_x_Users] (
    [id]         INT            IDENTITY (1, 1) NOT NULL,
    [userid]     NVARCHAR (128) NOT NULL,
    [locationid] INT            NOT NULL,
    [addedon]    SMALLDATETIME  NULL,
    [addedby]    NVARCHAR (128) NULL,
    CONSTRAINT [PK_location_x_Users] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_location_x_Users_AspNetUsers] FOREIGN KEY ([userid]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_location_x_Users_AspNetUsers1] FOREIGN KEY ([addedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_location_x_Users_Location] FOREIGN KEY ([locationid]) REFERENCES [dbo].[Location] ([id])
);

