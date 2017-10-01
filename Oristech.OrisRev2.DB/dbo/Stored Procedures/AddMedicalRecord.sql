CREATE PROCEDURE [dbo].[AddMedicalRecord]
	@Casenumber int,
    @UnSortedPages int,
    @SortedPages int,
    @Jurisdictation int,
    @CreatedDateTime datetime,
    @Timereceived varchar(50),
    @Timereturned varchar(50),
    @lastModifiedDate int,
    @Addedby int,
    @CustomerID int,
    @AssignedTo int,
    @TemplateId int
AS
BEGIN
	
	SET NOCOUNT ON;

    INSERT INTO [OrisRev2].[dbo].[MedicalRecords]
           ([Casenumber]
           ,[UnSortedPages]
           ,[SortedPages]
           ,[Jurisdictation]
           ,[CreatedDateTime]
           ,[Timereceived]
           ,[Timereturned]
           ,[lastModifiedDate]
           ,[Addedby]
           ,[CustomerID]
           ,[AssignedTo]
           ,[TemplateId])
     VALUES
           (@Casenumber,
           @UnSortedPages,
           @SortedPages,
           @Jurisdictation,
           @CreatedDateTime,
           @Timereceived,
           @Timereturned,
           @lastModifiedDate,
           @Addedby,
           @CustomerID,
           @AssignedTo,
           @TemplateId)

END
