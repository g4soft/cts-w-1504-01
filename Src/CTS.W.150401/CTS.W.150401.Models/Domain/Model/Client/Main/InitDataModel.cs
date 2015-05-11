using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CTS.Com.Domain.Attr;
using CTS.W._150401.Models.Domain.Common.Dao;
using CTS.Com.Domain.Model;
using CTS.W._150401.Models.Domain.Object.Client;

namespace CTS.W._150401.Models.Domain.Model.Client.Main
{
    public class InitDataModel : BasicInfoModel
    {
        // Danh sách danh mục sản phẩm.
        [OutputList(IgnoreAttribute = true)]
        public IList<MACategory> ListCategories { get; set; }

        // Danh sách lỗi.
        [OutputList(IgnoreAttribute = true)]
        public IList<Message> Messages { get; set; }
    }
}
