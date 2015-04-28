-- =============================================
-- Create table [MAItems]
-- =============================================
IF OBJECT_ID('[MAItems]', 'U') IS NOT NULL
	DROP TABLE [MAItems]
GO

CREATE TABLE [MAItems]
(
  [ItemCd] VARCHAR(255),
  [ItemName] NVARCHAR(255),
	[ItemSearchName] VARCHAR(255),
  [CategoryCd] VARCHAR(255),
	[UnitCd] VARCHAR(255),
	[SalesPrice] DECIMAL(18,0),
  [OfferPrice] DECIMAL(18,0),
	[SoldQtty] DECIMAL(18,0),
  [HasStock] BIT,
	[FileCd] VARCHAR(50),
	[SummaryNotes] NVARCHAR(4000),
  [Notes] NVARCHAR(MAX),	
	[SortKey] DECIMAL(18,0),
	[VersionNo] DECIMAL(18,0),
	[CreateUser] VARCHAR(50),
	[CreateDate] DATETIME,
	[UpdateUser] VARCHAR(50),
	[UpdateDate] DATETIME,
	[DeleteFlag] BIT,
	PRIMARY KEY ([ItemCd])
)
GO