using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CTS.W._150401.Models.Domain.Model.Client.Product;
using CTS.Com.Domain.Helper;
using CTS.Com.Domain.Model;
using CTS.W._150401.Models.Domain.Object.Client;
using CTS.W._150401.Models.Domain.Dao.Client;
using CTS.Data.APStorageFiles.Domain.Utils;
using CTS.Com.Domain.Constants;

namespace CTS.W._150401.Models.Domain.Logic.Client.Product
{
    /// <summary>
    /// FilterLogic tim kiếm sản phẩm
    /// </summary>
    public class FilterLogic
    {
        #region Execute Method
        /// <summary>
        /// Xử lý filter.
        /// </summary>
        /// <param name="inputObject">DataModel</param>
        /// <returns>DataModel</returns>
        public FilterDataModel Execute(FilterDataModel inputObject)
        {
            // Kiểm tra thông tin
            Check(inputObject);
            // Lấy thông tin
            var resultObject = GetInfo(inputObject);
            // Kết quả trả về
            return resultObject;
        }
        #endregion

        #region Private Method
        /// <summary>
        /// Kiểm tra thông tin.
        /// </summary>
        /// <param name="inputObject">DataModel</param>
        private void Check(FilterDataModel inputObject)
        {
        }

        /// <summary>
        /// Lấy thông tin.
        /// </summary>
        /// <param name="inputObject">DataModel</param>
        /// <returns>DataModel</returns>
        private FilterDataModel GetInfo(FilterDataModel inputObject)
        {
            // Khởi tạo biến cục bộ
            var getResult = new FilterDataModel();

            // Map dữ liệu
            DataHelper.CopyObject(inputObject, getResult);

            // Lấy thông tin sản phẩm
            var pagerItems = GetPagerItems(inputObject);

            // Trường hợp không tìm thấy sản phẩm
            if (pagerItems.ListData.Count == decimal.Zero)
            {
                // Gán message
                getResult.Messages.Add(MessageHelper.GetMessage("I_MSG_00008"));
                // Kết quả trả về
                return getResult;
            }

            // Gán giá trị trả về
            getResult.ListData = pagerItems.ListData;
            getResult.Total = pagerItems.Total;

            // Kết quả trả về
            return getResult;
        }

        /// <summary>
        /// Lấy pager sản phẩm
        /// </summary>
        private PagerInfoModel<ItemObject> GetPagerItems(FilterDataModel inputObject)
        {
            // Khởi tạo biến cục bộ
            var pagerResult = new PagerInfoModel<ItemObject>();
            var listData = new List<ItemObject>();
            var processDao = new ItemsListDao();
            var storageFileCom = new StorageFileCom();

            // Lấy thông tin danh sách sản phẩm
            var pagerItems = processDao.GetPagerItems(inputObject);

            // Khai báo biến dùng trong loop
            ItemObject info = null;
            // Duyệt danh sách sản phẩm mới
            foreach (var item in pagerItems.ListData)
            {
                // Khởi tạo đối tượng sản phẩm mới
                info = new ItemObject();

                // Gán giá trị vào đối tượng sản phẩm mới
                info.ItemCd = item.ItemCd;
                info.ItemName = item.ItemName;
                info.ItemSearchName = item.ItemSearchName;
                info.ItemImage = storageFileCom.GetFileName(
                    Logics.LOCALE_DEFAULT,
                    item.FileCd,
                    false);

                // Thêm vào đối tượng kết quả
                listData.Add(info);
            }

            // Gán giá trị trả về
            pagerResult.ListData = listData;
            pagerResult.Total = pagerItems.Total;

            // Kết quả trả về
            return pagerResult;
        }
        #endregion
    }
}
