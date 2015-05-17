using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CTS.W._150401.Models.Domain.Model.Client.Product;
using CTS.Com.Domain.Helper;
using CTS.Com.Domain.Constants;
using CTS.W._150401.Models.Domain.Common.Constains;
using CTS.Data.MAParameters.Domain.Utils;

namespace CTS.W._150401.Models.Domain.Logic.Client.Product
{
    /// <summary>
    /// InitLogic khởi tạo trang sản phẩm
    /// </summary>
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
            var parameterCom = new ParameterCom();

            // Map dữ liệu
            DataHelper.CopyObject(inputObject, getResult);
            
            // Kết quả trả về
            return getResult;
        }
        #endregion
    }
}
