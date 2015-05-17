using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CTS.Com.Domain.Model;
using CTS.W._150401.Models.Domain.Object.Client;
using CTS.Com.Domain.Attr;

namespace CTS.W._150401.Models.Domain.Model.Client.Product
{
    /// <summary>
    /// FilterDataModel: Thông tin kế quả tim kiếm sản phẩm.
    /// </summary>
    public class FilterDataModel : PagerInfoModel<ItemObject>
    {
        [InputText(RuleName = "searchName", MessageParam = "Từ khóa")]
        public string ItemSearchName { get; set; }
        
        [InputText(RuleName = "searchName", MessageParam = "Chủng loại")]
        public string CategorySearchName { get; set; }
    }
}
