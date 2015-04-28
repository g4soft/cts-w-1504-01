-- =============================================
-- Create table [APImageSizes]
-- =============================================
IF OBJECT_ID('[APImageSizes]', 'U') IS NOT NULL
	DROP TABLE [APImageSizes]
GO

CREATE TABLE [APImageSizes]
(
  [FileGroupCd] VARCHAR(50),
	[SizeCd] VARCHAR(50),
  [Width] Decimal(18,0) NOT NULL,
  [Height] Decimal(18,0) NOT NULL,
  [RatioWidth] BIT NOT NULL,
  [RatioHeight] BIT NOT NULL,	
	[SortKey] DECIMAL(18,0),
	[VersionNo] DECIMAL(18,0),
	[CreateUser] VARCHAR(50),
	[CreateDate] DATETIME,
	[UpdateUser] VARCHAR(50),
	[UpdateDate] DATETIME,
	[DeleteFlag] BIT,
	PRIMARY KEY ([FileGroupCd], [SizeCd])
)
GO

EXEC sys.sp_addextendedproperty @level2name=N'FileGroupCd', @value=N'Mã nhóm file', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'SizeCd', @value=N'Mã kích thước', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'Width', @value=N'Chiều rộng', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'Height', @value=N'Chiều cao', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'RatioWidth', @value=N'Ratio chiều rộng', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'RatioHeight', @value=N'Ratio chiều cao', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'SortKey', @value=N'Thứ tự', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'VersionNo', @value=N'Phiên bản', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CreateUser', @value=N'Người tạo', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CreateDate', @value=N'Ngày tạo', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'UpdateUser', @value=N'Người cập nhật', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'UpdateDate', @value=N'Ngày cập nhật', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'DeleteFlag', @value=N'Hoạt động', @level0name=N'dbo', @level1name=N'APImageSizes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
GO