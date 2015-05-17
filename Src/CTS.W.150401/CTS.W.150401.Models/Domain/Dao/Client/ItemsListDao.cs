using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CTS.Data.Domain.Dao;
using CTS.W._150401.Models.Domain.Common.Dao;
using CTS.Com.Domain.Model;
using CTS.W._150401.Models.Domain.Model.Client.Product;
using CTS.Com.Domain.Helper;

namespace CTS.W._150401.Models.Domain.Dao.Client
{
    /// <summary>
    /// ItemsListDao: Xử lý thông tin sản phẩm
    /// </summary>
    public class ItemsListDao : GenericDao<EntitiesDataContext>
    {
        // Khai báo tên file sql
        private string ITEMS_LIST_DAO_GET_PAGER_ITEMS_SQL = "ItemsListDao_GetPagerItems.sql";

        /// <summary>
        /// Lấy thông tin danh sách sản phẩm.
        /// </summary>
        public PagerInfoModel<MAItem> GetPagerItems(FilterDataModel inputObject)
        {
            // Tạo tham số
            var param = new
            {
                ItemSearchName = inputObject.ItemSearchName,
                CategorySearchName = inputObject.CategorySearchName
            };

            // Tạo đối tượng pager
            var pagerInfo = new PagerInfoModel<MAItem>();

            // Sao chép thông tin pager
            DataHelper.CopyPagerInfo(inputObject, pagerInfo);

            // Gán tham số điêu kiện tim kiếm sản phẩm.
            pagerInfo.Critial = param;

            // Kết quả trả về
            return GetPagerByFile<MAItem>(ITEMS_LIST_DAO_GET_PAGER_ITEMS_SQL, pagerInfo);
        }
    }
}
