-- =============================================
-- Insert data table [APMenuItems]
-- =============================================
-- Admin
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'db', N'Thống kê', '', 'dashboard', '', 1, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma', N'Danh mục', '', '', '', 100, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_ite', N'Sản phẩm', '', '', 'ma', 110, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_ite_li', N'Danh sách', '', 'masters_items_list', 'ma_ite', 111, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_ite_en', N'Đăng ký/Cập nhật', '', 'masters_items_entry', 'ma_ite', 112, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'se', N'Thiết lập', '', '', '', 900, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'se_inf', N'Thông tin', '', 'settings_info', 'se', 901, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'se_sys', N'Hệ thống', '', 'settings_system', 'se', 902, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
GO