-- =============================================
-- Create table [MANewsletters]
-- =============================================
IF OBJECT_ID('[MANewsletters]', 'U') IS NOT NULL
	DROP TABLE [MANewsletters]
GO

CREATE TABLE [MANewsletters]
(
  [NewsletterCd] VARCHAR(50),
  [NewsletterName] NVARCHAR(255),
  [NewsletterSearchName] VARCHAR(255),
  [PostDate] DATETIME,
  [FileCd] VARCHAR(50),
  [Summary] NVARCHAR(255),
  [Notes] NVARCHAR(MAX),
	[SortKey] DECIMAL(18,0),
	[VersionNo] DECIMAL(18,0),
	[CreateUser] VARCHAR(50),
	[CreateDate] DATETIME,
	[UpdateUser] VARCHAR(50),
	[UpdateDate] DATETIME,
	[DeleteFlag] BIT,
	PRIMARY KEY ([NewsletterCd])
)
GO