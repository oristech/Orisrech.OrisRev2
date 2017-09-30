CREATE TABLE [dbo].[Complaints] (
    [ID]               INT            IDENTITY (1, 1) NOT NULL,
    [CaseId]           INT            NULL,
    [Type]             INT            NULL,
    [SubmittedBy]      NVARCHAR (128) NULL,
    [Date]             SMALLDATETIME  NULL,
    [Resolution]       NVARCHAR (250) NULL,
    [DateofResolution] SMALLDATETIME  NULL,
    CONSTRAINT [PK_Complaints] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Complaints_AspNetUsers] FOREIGN KEY ([SubmittedBy]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Complaints_Cases] FOREIGN KEY ([CaseId]) REFERENCES [dbo].[Cases] ([OrisID]),
    CONSTRAINT [FK_Complaints_Complain_Types] FOREIGN KEY ([Type]) REFERENCES [dbo].[Complain_Types] ([ID])
);

