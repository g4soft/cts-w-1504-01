-- =============================================
-- Create table [MACodes]
-- =============================================
IF OBJECT_ID('[MACodes]', 'U') IS NOT NULL
	DROP TABLE [MACodes]
GO

CREATE TABLE [MACodes]
(
  [LocaleCd] VARCHAR(50), -- [CodeName], [Notes]
	[CodeGroupCd] VARCHAR(50),
	[CodeCd] VARCHAR(50),
	[CodeName] NVARCHAR(255),
	[PermitModify] BIT,
	[Notes] NVARCHAR(MAX),
	[SortKey] DECIMAL(18,0),
	[VersionNo] DECIMAL(18,0),
	[CreateUser] VARCHAR(50),
	[CreateDate] DATETIME,
	[UpdateUser] VARCHAR(50),
	[UpdateDate] DATETIME,
	[DeleteFlag] BIT,
	PRIMARY KEY ([LocaleCd], [CodeGroupCd], [CodeCd])
)
GO

EXEC sys.sp_addextendedproperty @level2name=N'LocaleCd', @value=N'Mã ngôn ngữ', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CodeGroupCd', @value=N'Mã nhóm code', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CodeCd', @value=N'Mã code', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CodeName', @value=N'Tên code', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'PermitModify', @value=N'Cho phép cập nhật', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'Notes', @value=N'Ghi chú', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'SortKey', @value=N'Thứ tự', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'VersionNo', @value=N'Phiên bản', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CreateUser', @value=N'Người tạo', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'CreateDate', @value=N'Ngày tạo', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'UpdateUser', @value=N'Người cập nhật', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'UpdateDate', @value=N'Ngày cập nhật', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
EXEC sys.sp_addextendedproperty @level2name=N'DeleteFlag', @value=N'Hoạt động', @level0name=N'dbo', @level1name=N'MACodes', @name=N'MS_Description', @level0type=N'SCHEMA', @level1type=N'TABLE', @level2type=N'COLUMN'
GO