CREATE TABLE [dbo].[Notes] (
    [ID]     INT            IDENTITY (1, 1) NOT NULL,
    [CaseID] INT            NULL,
    [Note]   NVARCHAR (MAX) NULL,
    [NoteBy] NVARCHAR (128) NULL,
    [NoteOn] SMALLDATETIME  NULL,
    CONSTRAINT [PK_Notes] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Notes_AspNetUsers] FOREIGN KEY ([NoteBy]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Notes_Cases] FOREIGN KEY ([CaseID]) REFERENCES [dbo].[Cases] ([OrisID])
);

