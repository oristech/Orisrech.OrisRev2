CREATE TABLE [dbo].[Diagnosis] (
    [Id]          INT            IDENTITY (1, 1) NOT NULL,
    [ICD10Code]   NVARCHAR (50)  NULL,
    [Description] NVARCHAR (150) NULL,
    [Addedon]     SMALLDATETIME  NULL,
    [addedby]     NVARCHAR (128) NULL,
    [updateon]    SMALLDATETIME  NULL,
    [updatedby]   NVARCHAR (128) NULL,
    CONSTRAINT [PK_Diagnosis] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Diagnosis_AspNetUsers] FOREIGN KEY ([addedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Diagnosis_AspNetUsers1] FOREIGN KEY ([updatedby]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

