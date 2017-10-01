﻿CREATE TABLE [dbo].[Cases] (
    [OrisID]                   INT            IDENTITY (1, 10) NOT NULL,
    [CustReferral]             INT            NULL,
    [ClaimNo]                  INT            NULL,
    [Jurisdiction]             INT            NULL,
    [dateofinjury]             SMALLDATETIME  NULL,
    [dateofreceipt]            SMALLDATETIME  NULL,
    [Timeofreceipt]            NVARCHAR (50)  NULL,
    [dateofcompletion]         SMALLDATETIME  NULL,
    [dateofservicestart]       SMALLDATETIME  NULL,
    [dateofserviceend]         SMALLDATETIME  NULL,
    [dateofconsiderationstart] SMALLDATETIME  NULL,
    [dateofconsiderationend]   SMALLDATETIME  NULL,
    [appointmentdata]          DATETIME       NULL,
    [claimant]                 INT            NULL,
    [adjuster]                 INT            NULL,
    [customer]                 INT            NULL,
    [subcustomer]              INT            NULL,
    [employer]                 INT            NULL,
    [facility]                 INT            NULL,
    [ReqProvider]              INT            NULL,
    [Attorney]                 INT            NULL,
    [Clinic]                   INT            NULL,
    [AdditionalTesting]        INT            NULL,
    [RequestCode]              INT            NULL,
    [DiagnosticCode]           INT            NULL,
    [Type]                     INT            NULL,
    [ReviewCategory]           INT            NULL,
    [Category]                 INT            NULL,
    [Reviewer]                 INT            NULL,
    [DueDate]                  SMALLDATETIME  NULL,
    [AcceptedBodyPart]         NVARCHAR (250) NULL,
    [RelatedClaim]             INT            NULL,
    [priorAuthNumber]          INT            NULL,
    [CurrentMedications]       NVARCHAR (350) NULL,
    [PrePhyTherapy]            INT            NULL,
    [PreChiroCare]             INT            NULL,
    [Outcome]                  NVARCHAR (350) NULL,
    [Template]                 INT            NULL,
    [WorkLocation]             INT            NULL,
    [IsRush]                   BIT            NULL,
    [AssignedTo]               NVARCHAR (128) NULL,
    [Addedon]                  SMALLDATETIME  NULL,
    [addedby]                  NVARCHAR (128) NULL,
    [updateon]                 SMALLDATETIME  NULL,
    [updatedby]                NVARCHAR (128) NULL,
    CONSTRAINT [PK_Records] PRIMARY KEY CLUSTERED ([OrisID] ASC),
    CONSTRAINT [FK_Cases_Additional_Testing] FOREIGN KEY ([AdditionalTesting]) REFERENCES [dbo].[Additional_Testing] ([id]),
    CONSTRAINT [FK_Cases_AspNetUsers] FOREIGN KEY ([addedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Cases_AspNetUsers1] FOREIGN KEY ([updatedby]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Cases_AspNetUsers2] FOREIGN KEY ([AssignedTo]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_Cases_Attorneys] FOREIGN KEY ([Attorney]) REFERENCES [dbo].[Attorneys] ([id]),
    CONSTRAINT [FK_Cases_CaseCategory] FOREIGN KEY ([Category]) REFERENCES [dbo].[CaseCategory] ([ID]),
    CONSTRAINT [FK_Cases_CaseTypes] FOREIGN KEY ([Type]) REFERENCES [dbo].[CaseTypes] ([ID]),
    CONSTRAINT [FK_Cases_Clinics] FOREIGN KEY ([Clinic]) REFERENCES [dbo].[Clinics] ([Id]),
    CONSTRAINT [FK_Cases_Diagnosis] FOREIGN KEY ([DiagnosticCode]) REFERENCES [dbo].[Diagnosis] ([Id]),
    CONSTRAINT [FK_Cases_Request] FOREIGN KEY ([RequestCode]) REFERENCES [dbo].[Request] ([Id]),
    CONSTRAINT [FK_Cases_ReviewCategory] FOREIGN KEY ([ReviewCategory]) REFERENCES [dbo].[ReviewCategory] ([id]),
    CONSTRAINT [FK_Cases_Reviewer] FOREIGN KEY ([Reviewer]) REFERENCES [dbo].[Reviewer] ([ID]),
    CONSTRAINT [FK_Cases_Templates] FOREIGN KEY ([Template]) REFERENCES [dbo].[Templates] ([TemplateId]),
    CONSTRAINT [FK_Cases_WorkLocation] FOREIGN KEY ([WorkLocation]) REFERENCES [dbo].[WorkLocation] ([Locationid]),
    CONSTRAINT [FK_Records_Adjusters] FOREIGN KEY ([adjuster]) REFERENCES [dbo].[Adjusters] ([Id]),
    CONSTRAINT [FK_Records_Customer_SubAccount] FOREIGN KEY ([subcustomer]) REFERENCES [dbo].[Customer_SubAccount] ([Id]),
    CONSTRAINT [FK_Records_Customers] FOREIGN KEY ([customer]) REFERENCES [dbo].[Customers] ([CustomerID]),
    CONSTRAINT [FK_Records_Employers] FOREIGN KEY ([employer]) REFERENCES [dbo].[Employers] ([ID]),
    CONSTRAINT [FK_Records_Facility] FOREIGN KEY ([facility]) REFERENCES [dbo].[Facility] ([id]),
    CONSTRAINT [FK_Records_RequestingProviders] FOREIGN KEY ([ReqProvider]) REFERENCES [dbo].[RequestingProviders] ([Id]),
    CONSTRAINT [FK_Records_States] FOREIGN KEY ([claimant]) REFERENCES [dbo].[Claimants] ([ClaimantID]),
    CONSTRAINT [FK_Records_States1] FOREIGN KEY ([Jurisdiction]) REFERENCES [dbo].[States] ([StateID])
);
