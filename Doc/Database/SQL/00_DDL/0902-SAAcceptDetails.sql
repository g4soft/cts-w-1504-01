-- =============================================
-- Create table [SAAcceptDetails]
-- =============================================
IF OBJECT_ID('[SAAcceptDetails]', 'U') IS NOT NULL
	DROP TABLE [SAAcceptDetails]
GO

CREATE TABLE [SAAcceptDetails]
(
  [AcceptSlipNo] VARCHAR(255),
  [DetailNo] DECIMAL,
  [ItemCd] VARCHAR(255),
  [ItemName] NVARCHAR(255),
  [UnitCd] VARCHAR(255),
  [DetailQtty] DECIMAL(18,0),
  [DetailPrice] DECIMAL(18,0),
  [DetailAmt] DECIMAL(18,0),
  [Notes] NVARCHAR(MAX),	
	[SortKey] DECIMAL(18,0),
	[VersionNo] DECIMAL(18,0),
	[CreateUser] VARCHAR(50),
	[CreateDate] DATETIME,
	[UpdateUser] VARCHAR(50),
	[UpdateDate] DATETIME,
	[DeleteFlag] BIT,
	PRIMARY KEY ([AcceptSlipNo], [DetailNo])
)
GO