-- =============================================
-- Create table [APFileGroups]
-- =============================================
IF OBJECT_ID('[APFileGroups]', 'U') IS NOT NULL
	DROP TABLE [APFileGroups]
GO

CREATE TABLE [APFileGroups]
(
  [LocaleCd] VARCHAR(50), -- [Path]
	[FileGroupCd] VARCHAR(50),
  [FileType] VARCHAR(255),
  [Path] NVARCHAR(255),
  [FileMax] DECIMAL(18,0),	
	[SortKey] DECIMAL(18,0),
	[VersionNo] DECIMAL(18,0),
	[CreateUser] VARCHAR(50),
	[CreateDate] DATETIME,
	[UpdateUser] VARCHAR(50),
	[UpdateDate] DATETIME,
	[DeleteFlag] BIT,
	PRIMARY KEY ([LocaleCd], [FileGroupCd])
)
GO

EXEC sys.sp_addextendedproperty @level2name=N'LocaleCd', @value=N'Mã ngôn ngữ', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'FileGroupCd', @value=N'Mã nhóm file', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'FileType', @value=N'Loại file', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'Path', @value=N'Đường dẫn file', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'FileMax', @value=N'Số lượng file', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'SortKey', @value=N'Thứ tự', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'VersionNo', @value=N'Phiên bản', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CreateUser', @value=N'Người tạo', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CreateDate', @value=N'Ngày tạo', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'UpdateUser', @value=N'Người cập nhật', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'UpdateDate', @value=N'Ngày cập nhật', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'DeleteFlag', @value=N'Hoạt động', @level0name=N'dbo', @level1name=N'APFileGroups', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
GO