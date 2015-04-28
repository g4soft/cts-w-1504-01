-- =============================================
-- Create table [APStorageFiles]
-- =============================================
IF OBJECT_ID('[APStorageFiles]', 'U') IS NOT NULL
	DROP TABLE [APStorageFiles]
GO

CREATE TABLE [APStorageFiles]
(
  [LocaleCd] VARCHAR(50), -- [FileAlias]
	[FileCd] VARCHAR(50),
  [FileNo] Decimal(18,0),
  [FileName] VARCHAR(255),
  [FileAlias] NVARCHAR(255),
  [FileGroup] VARCHAR(255),	
	[SortKey] DECIMAL(18,0),
	[VersionNo] DECIMAL(18,0),
	[CreateUser] VARCHAR(50),
	[CreateDate] DATETIME,
	[UpdateUser] VARCHAR(50),
	[UpdateDate] DATETIME,
	[DeleteFlag] BIT,
	PRIMARY KEY ([LocaleCd], [FileCd], [FileNo])
)
GO

EXEC sys.sp_addextendedproperty @level2name=N'LocaleCd', @value=N'Mã ngôn ngữ', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'FileCd', @value=N'Mã file', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'FileNo', @value=N'Số file', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'FileName', @value=N'Tên file', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'FileAlias', @value=N'Tên alias', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'FileGroup', @value=N'Nhóm file', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'SortKey', @value=N'Thứ tự', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'VersionNo', @value=N'Phiên bản', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CreateUser', @value=N'Người tạo', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CreateDate', @value=N'Ngày tạo', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'UpdateUser', @value=N'Người cập nhật', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'UpdateDate', @value=N'Ngày cập nhật', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'DeleteFlag', @value=N'Hoạt động', @level0name=N'dbo', @level1name=N'APStorageFiles', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
GO