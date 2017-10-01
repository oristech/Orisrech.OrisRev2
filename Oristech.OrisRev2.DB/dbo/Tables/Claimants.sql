CREATE TABLE [dbo].[Claimants] (
    [ClaimantID]  INT           IDENTITY (1, 1) NOT NULL,
    [Name]        VARCHAR (50)  NULL,
    [dateofbirth] SMALLDATETIME NULL,
    [address]     VARCHAR (150) NULL,
    [gender]      CHAR (1)      NULL,
    [SSN]         VARCHAR (12)  NULL,
    CONSTRAINT [PK_Claimants] PRIMARY KEY CLUSTERED ([ClaimantID] ASC)
);

