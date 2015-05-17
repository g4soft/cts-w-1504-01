using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CTS.Com.Domain.Attr;

namespace CTS.W._150401.Models.Domain.Object.Client
{
    public class ItemObject
    {
        // Mã sản phẩm.
        [OutputText]
        public string ItemCd { get; set; }

        // Tên sản phẩm.
        [OutputText]
        public string ItemName { get; set; }

        // Tên tim kiếm sản phẩm.
        [OutputText]
        public string ItemSearchName { get; set; }

        // Mã file hinh ảnh.
        [OutputText]
        public string FileCd { get; set; }

        // Hỉnh ảnh sản phẩm.
        [OutputText]
        public string ItemImage { get; set; }

        // Giá bán
        [OutputText(Format = "{0:N0}")]
        public decimal? SalesPrice { get; set; }

        // Giá khuyến mãi
        [OutputText(Format = "{0:N0}")]
        public decimal? OfferPrice { get; set; }

        // Tồn kho
        [OutputText]
        public Boolean HasStock { get; set; }

        // Mô tả sản phẩm.
        [OutputText]
        public string Notes { get; set; }
    }
}
