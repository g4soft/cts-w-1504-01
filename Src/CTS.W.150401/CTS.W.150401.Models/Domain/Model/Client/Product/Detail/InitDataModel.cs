using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CTS.Com.Domain.Model;
using CTS.Com.Domain.Attr;
using CTS.W._150401.Models.Domain.Object.Client;

namespace CTS.W._150401.Models.Domain.Model.Client.Product.Detail
{
    /// <summary>
    /// InitDataModel quản lý dữ liệu thông tin chi tiết sản phẩm.
    /// </summary>
    public class InitDataModel : BasicInfoModel
    {
        [InputText(RuleName = "searchName", MessageParam = "Từ khóa")]
        public string ItemSearchName { get; set; }

        [OutputObject(IgnoreAttribute = false)]
        public ItemObject ItemInfo { get; set; }
    }
}
