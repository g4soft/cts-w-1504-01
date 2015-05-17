using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CTS.Data.Domain.Dao;
using CTS.W._150401.Models.Domain.Common.Dao;
using CTS.W._150401.Models.Domain.Object.Client;

namespace CTS.W._150401.Models.Domain.Dao.Client
{
    public class ItemsDetailDao : GenericDao<EntitiesDataContext>
    {
        // Định nghĩa hằng file sql
        public const string ITEMS_DETAIL_DAO_GET_INFO_SQL = "ItemsDetailDao_GetInfo.sql";

        /// <summary>
        /// Lấy thông tin sản phẩm
        /// </summary>
        public ItemObject GetInfo(string itemSearchName)
        {
            // Tạo tham số
            var param = new
            {
                ItemSearchName = itemSearchName
            };
            // Kết quả trả về
            return GetObjectByFile<ItemObject>(ITEMS_DETAIL_DAO_GET_INFO_SQL, param);
        }
    }
}
