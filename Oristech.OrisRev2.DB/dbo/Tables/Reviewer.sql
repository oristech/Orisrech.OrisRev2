CREATE TABLE [dbo].[Reviewer] (
    [ID]         INT            IDENTITY (1, 1) NOT NULL,
    [Speciality] VARCHAR (50)   NULL,
    [State]      INT            NULL,
    [LicenseNo]  VARCHAR (50)   NULL,
    [Addedon]    SMALLDATETIME  NULL,
    [UpdateOn]   SMALLDATETIME  NULL,
    [AddedBy]    NVARCHAR (128) NULL,
    [UpdatedBy]  NVARCHAR (128) NULL,
    CONSTRAINT [PK_Reviewer] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Reviewer_AspNetUsers] FOREIGN KEY ([AddedBy]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Reviewer_AspNetUsers1] FOREIGN KEY ([UpdatedBy]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Reviewer_States] FOREIGN KEY ([State]) REFERENCES [dbo].[States] ([StateID])
);

