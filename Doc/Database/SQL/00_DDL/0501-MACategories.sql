-- =============================================
-- Create table [MACategories]
-- =============================================
IF OBJECT_ID('[MACategories]', 'U') IS NOT NULL
	DROP TABLE [MACategories]
GO

CREATE TABLE [MACategories]
(

  [CategoryCd] VARCHAR(255),
  [CategoryName] NVARCHAR(255),
  [CategorySearchName] VARCHAR(255),
  [Notes] NVARCHAR(MAX),	
	[SortKey] DECIMAL(18,0),
	[VersionNo] DECIMAL(18,0),
	[CreateUser] VARCHAR(50),
	[CreateDate] DATETIME,
	[UpdateUser] VARCHAR(50),
	[UpdateDate] DATETIME,
	[DeleteFlag] BIT,
	PRIMARY KEY ([CategoryCd])
)
GO