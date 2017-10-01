CREATE TABLE [dbo].[Facility] (
    [id]         INT            IDENTITY (1, 1) NOT NULL,
    [Speciality] NVARCHAR (150) NULL,
    [Address]    NVARCHAR (50)  NULL,
    [Phone]      NVARCHAR (50)  NULL,
    [Fax]        NVARCHAR (50)  NULL,
    [email]      NVARCHAR (50)  NULL,
    [Addedon]    SMALLDATETIME  NULL,
    [UpdateOn]   SMALLDATETIME  NULL,
    [AddedBy]    NVARCHAR (128) NULL,
    [UpdatedBy]  NVARCHAR (128) NULL,
    CONSTRAINT [PK_Facility] PRIMARY KEY CLUSTERED ([id] ASC),
    CONSTRAINT [FK_Facility_AspNetUsers] FOREIGN KEY ([AddedBy]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Facility_AspNetUsers1] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

