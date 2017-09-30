CREATE TABLE [dbo].[CaseTypes] (
    [ID]       INT            IDENTITY (1, 1) NOT NULL,
    [CaseType] NVARCHAR (150) NULL,
    CONSTRAINT [PK_CaseTypes] PRIMARY KEY CLUSTERED ([ID] ASC)
);

