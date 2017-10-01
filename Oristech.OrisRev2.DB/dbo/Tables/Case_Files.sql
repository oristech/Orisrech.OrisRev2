CREATE TABLE [dbo].[Case_Files] (
    [Id]       INT            IDENTITY (1, 1) NOT NULL,
    [CaseID]   INT            NOT NULL,
    [FileName] VARCHAR (150)  NULL,
    [Path]     NVARCHAR (250) NULL,
    CONSTRAINT [PK_Case_Files] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Case_Files_Cases] FOREIGN KEY ([CaseID]) REFERENCES [dbo].[Cases] ([OrisID])
);

