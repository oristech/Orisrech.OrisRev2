CREATE TABLE [dbo].[Clinics] (
    [Id]             INT            IDENTITY (1, 1) NOT NULL,
    [Name]           NVARCHAR (150) NULL,
    [Address]        NVARCHAR (50)  NULL,
    [Phone]          NVARCHAR (50)  NULL,
    [Direction]      NVARCHAR (50)  NULL,
    [AppDate]        SMALLDATETIME  NULL,
    [AppTime]        SMALLDATETIME  NULL,
    [NoShow]         BIT            NULL,
    [ReSchedule]     BIT            NULL,
    [ReSchduledate]  SMALLDATETIME  NULL,
    [ReScheduleTime] SMALLDATETIME  NULL,
    [Addedon]        SMALLDATETIME  NULL,
    [addedby]        NVARCHAR (128) NULL,
    [updateon]       SMALLDATETIME  NULL,
    [updatedby]      NVARCHAR (128) NULL,
    CONSTRAINT [PK_Clinics] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Clinics_AspNetUsers] FOREIGN KEY ([addedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Clinics_AspNetUsers1] FOREIGN KEY ([updatedby]) REFERENCES [dbo].[AspNetUsers] ([Id])
);

