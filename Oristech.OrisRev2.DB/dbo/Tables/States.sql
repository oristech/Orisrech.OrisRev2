CREATE TABLE [dbo].[States] (
    [StateID]   INT          NOT NULL,
    [StateName] VARCHAR (50) NULL,
    [StateABR]  VARCHAR (10) NULL,
    CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED ([StateID] ASC)
);

