using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CTS.W._150401.Models.Domain.Model.Client.Product.Detail;
using CTS.Com.Domain.Helper;
using CTS.W._150401.Models.Domain.Dao.Client;
using CTS.Com.Domain.Constants;
using CTS.Data.APStorageFiles.Domain.Utils;

namespace CTS.W._150401.Models.Domain.Logic.Client.Product.Detail
{
    /// <summary>
    /// InitLogic khởi tạo trang thông tin chi tiết sản phẩm.
    /// </summary>
    public class InitLogic
    {
        #region Execute Method
        /// <summary>
        /// Xử lý filter.
        /// </summary>
        /// <param name="inputObject">DataModel</param>
        /// <returns>DataModel</returns>
        public InitDataModel Execute(InitDataModel inputObject)
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
        private void Check(InitDataModel inputObject)
        {
        }

        /// <summary>
        /// Lấy thông tin.
        /// </summary>
        /// <param name="inputObject">DataModel</param>
        /// <returns>DataModel</returns>
        private InitDataModel GetInfo(InitDataModel inputObject)
        {
            // Khởi tạo biến cục bộ
            var getResult = new InitDataModel();

            // Map dữ liệu
            DataHelper.CopyObject(inputObject, getResult);

            // Lấy thông tin sản phẩm
            var itemInfo = GetItemInfo(inputObject);

            // Gán giá trị trả về
            getResult = itemInfo;

            // Kết quả trả về
            return getResult;
        }

        /// <summary>
        /// Lấy pager sản phẩm
        /// </summary>
        private InitDataModel GetItemInfo(InitDataModel inputObject)
        {
            // Khởi tạo biến cục bộ
            var getResult = new InitDataModel();
            var processDao = new ItemsDetailDao();
            var storageFileCom = new StorageFileCom();

            // Map dữ liệu
            DataHelper.CopyObject(inputObject, getResult);

            // Lấy thông tin sản phẩm
            var dataInfo = processDao.GetInfo(inputObject.ItemSearchName);
            // Trường hợp không tìm thấy thông tin sản phẩm
            if (dataInfo == null)
            {
                // Gán message
                getResult.Messages.Add(MessageHelper.GetMessage("I_MSG_00008"));
                // Kết quả trả về
                return getResult;
            }

            // Lấy đương dẫn hinh ảnh của sản phẩm
            dataInfo.ItemImage = storageFileCom.GetFileName(
                    Logics.LOCALE_DEFAULT,
                    dataInfo.FileCd,
                    false);

            // Gán giá trị trả về
            getResult.ItemInfo = dataInfo;

            // Kết quả trả về
            return getResult;
        }
        #endregion
    }
}
