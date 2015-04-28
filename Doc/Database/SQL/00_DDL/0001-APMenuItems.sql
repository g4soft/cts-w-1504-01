-- =============================================
-- Create table [APMenuItems]
-- =============================================
IF OBJECT_ID('[APMenuItems]', 'U') IS NOT NULL
	DROP TABLE [APMenuItems]
GO

CREATE TABLE [APMenuItems]
(
  [LocaleCd] VARCHAR(50), -- [MenuName]
	[AppCd] VARCHAR(50),
  [MenuCd] VARCHAR(50),
  [MenuName] NVARCHAR(255),
  [Icon] VARCHAR(255),
  [Path] VARCHAR(255),
  [PMenuCd] VARCHAR(50),	
	[SortKey] DECIMAL(18,0),
	[VersionNo] DECIMAL(18,0),
	[CreateUser] VARCHAR(50),
	[CreateDate] DATETIME,
	[UpdateUser] VARCHAR(50),
	[UpdateDate] DATETIME,
	[DeleteFlag] BIT,
	PRIMARY KEY ([LocaleCd], [AppCd], [MenuCd])
)
GO

EXEC sys.sp_addextendedproperty @level2name=N'LocaleCd', @value=N'Mã ngôn ngữ', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'AppCd', @value=N'Mã ứng dụng', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'MenuCd', @value=N'Mã menu', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'MenuName', @value=N'Tên menu', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'Icon', @value=N'Icon', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'Path', @value=N'Đường dẫn liên kết', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'PMenuCd', @value=N'Mã menu cha', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'SortKey', @value=N'Thứ tự', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'VersionNo', @value=N'Phiên bản', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CreateUser', @value=N'Người tạo', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CreateDate', @value=N'Ngày tạo', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'UpdateUser', @value=N'Người cập nhật', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'UpdateDate', @value=N'Ngày cập nhật', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'DeleteFlag', @value=N'Hoạt động', @level0name=N'dbo', @level1name=N'APMenuItems', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
GO