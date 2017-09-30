CREATE TABLE [dbo].[CaseCategory] (
    [ID]       INT            IDENTITY (1, 1) NOT NULL,
    [Category] NVARCHAR (150) NULL,
    CONSTRAINT [PK_CaseCategory] PRIMARY KEY CLUSTERED ([ID] ASC)
);

