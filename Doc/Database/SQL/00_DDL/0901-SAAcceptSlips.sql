-- =============================================
-- Create table [SAAcceptSlips]
-- =============================================
IF OBJECT_ID('[SAAcceptSlips]', 'U') IS NOT NULL
	DROP TABLE [SAAcceptSlips]
GO

CREATE TABLE [SAAcceptSlips]
(
  [AcceptSlipNo] VARCHAR(50),
  [SlipStatus] VARCHAR(50),
  [AcceptDate] DATETIME,
  [ClientTel] VARCHAR(50),
  [ClientName] NVARCHAR(255),
  [ClientAddress] NVARCHAR(255),
  [ClientEmail] VARCHAR(255),
  [ClientNotes] NVARCHAR(MAX),
  [TotalAmt] DECIMAL,
  [Notes] NVARCHAR(MAX),
	[SortKey] DECIMAL(18,0),
	[VersionNo] DECIMAL(18,0),
	[CreateUser] VARCHAR(50),
	[CreateDate] DATETIME,
	[UpdateUser] VARCHAR(50),
	[UpdateDate] DATETIME,
	[DeleteFlag] BIT,
	PRIMARY KEY ([AcceptSlipNo])
)
GO