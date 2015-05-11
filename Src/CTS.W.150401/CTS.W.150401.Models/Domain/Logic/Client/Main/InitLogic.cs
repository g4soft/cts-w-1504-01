using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CTS.W._150401.Models.Domain.Model.Client.Main;
using CTS.Com.Domain.Helper;
using CTS.W._150401.Models.Domain.Dao.Client;

namespace CTS.W._150401.Models.Domain.Logic.Client.Main
{
    public class InitLogic
    {
        #region Execute Method
        /// <summary>
        /// Xử lý init.
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
            var processDao = new CategoryDao();

            // Map dữ liệu
            DataHelper.CopyObject(inputObject, getResult);
            // Lấy thông tin danh mục sản phẩm
            var dataInfo = processDao.GetList();

            // Trường hợp không tìm thấy danh mục sản phẩm
            if (dataInfo == null || dataInfo.Count == 0)
            {
                // Gán message
                getResult.Messages.Add(MessageHelper.GetMessage("I_MSG_00008"));
                // Kết quả trả về
                return getResult;
            }

            //Gán danh mục sản phẩm tim` được vao` kết quả trả vê`.
            getResult.ListCategories = dataInfo;

            // Kết quả trả về
            return getResult;
        }
        #endregion
    }
}
