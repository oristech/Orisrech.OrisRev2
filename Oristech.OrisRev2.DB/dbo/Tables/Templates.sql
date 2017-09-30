CREATE TABLE [dbo].[Templates] (
    [TemplateId]   INT            IDENTITY (1, 1) NOT NULL,
    [TemplateName] INT            NULL,
    [Path]         INT            NULL,
    [IsAcvitve]    INT            NULL,
    [AddedOn]      INT            NULL,
    [Modfiledon]   INT            NULL,
    [AddedBy]      NVARCHAR (128) NULL,
    [UpdatedBy]    NVARCHAR (128) NULL,
    CONSTRAINT [PK__Templates__4E88ABD4] PRIMARY KEY CLUSTERED ([TemplateId] ASC)
);

