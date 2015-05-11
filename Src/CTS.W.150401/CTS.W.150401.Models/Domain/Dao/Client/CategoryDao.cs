using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CTS.Data.Domain.Dao;
using CTS.W._150401.Models.Domain.Common.Dao;

namespace CTS.W._150401.Models.Domain.Dao.Client
{
    public class CategoryDao : GenericDao<EntitiesDataContext>
    {
        // Định nghĩa hằng file sql
        public const string CATEGORY_DAO_GET_LIST_SQL = "CategoryDao_GetList.sql";

        /// <summary>
        /// Lấy thông tin danh mục sản phẩm
        /// </summary>
        public IList<MACategory> GetList()
        {
            // Tạo tham số
            var param = new { };
            // Kết quả trả về
            return GetListByFile<MACategory>(CATEGORY_DAO_GET_LIST_SQL, param);
        }
    }
}
