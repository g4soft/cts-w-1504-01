-- =============================================
-- Insert data table [APMenuItems]
-- =============================================
-- Admin
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'db', N'Thống kê', '', 'dashboard', '', 1, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma', N'Danh mục', '', '', '', 100, 1, 'init', GETDATE(), 'init', GETDATE(), 0)

INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_ite', N'Sản phẩm', '', '', 'ma', 110, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_ite_li', N'Danh sách', '', 'master_items_list', 'ma_ite', 111, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_ite_en', N'Đăng ký/Cập nhật', '', 'master_items_entry', 'ma_ite', 112, 1, 'init', GETDATE(), 'init', GETDATE(), 0)

INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_cat', N'Loại sản phẩm', '', '', 'ma', 120, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_cat_li', N'Danh sách', '', 'master_categories_list', 'ma_cat', 121, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_cat_en', N'Đăng ký/Cập nhật', '', 'master_categories_entry', 'ma_cat', 122, 1, 'init', GETDATE(), 'init', GETDATE(), 0)

INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_nlt', N'Bản tin', '', '', 'ma', 130, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_nlt_li', N'Danh sách', '', 'master_newsletters_list', 'ma_nlt', 131, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'ma_nlt_en', N'Đăng ký/Cập nhật', '', 'master_newsletters_entry', 'ma_nlt', 132, 1, 'init', GETDATE(), 'init', GETDATE(), 0)

INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'sa', N'Bán hàng', '', '', '', 200, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'sa_li', N'Danh sách', '', 'sale_list', 'sa', 201, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
INSERT INTO [APMenuItems] VALUES ('vi', 'adm', 'sa_en', N'Đăng ký/Cập nhật', '', 'sale_entry', 'sa', 202, 1, 'init', GETDATE(), 'init', GETDATE(), 0)
GO