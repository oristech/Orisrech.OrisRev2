CREATE TABLE [dbo].[Users_x_Login] (
    [id]         INT            IDENTITY (1, 1) NOT NULL,
    [UserID]     NVARCHAR (128) NOT NULL,
    [LoginTime]  SMALLDATETIME  NULL,
    [LogoutTime] SMALLDATETIME  NULL,
    CONSTRAINT [PK_Users_x_Login] PRIMARY KEY CLUSTERED ([id] ASC)
);

