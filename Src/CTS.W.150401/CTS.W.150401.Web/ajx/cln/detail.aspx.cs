using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTS.Web.Com.Domain.Controller;
using System.Web.Services;
using CTS.W._150401.Models.Domain.Logic.Client.Product.Detail;

namespace CTS.W._150401.Web.ajx.cln
{
    public partial class detail : PageBase
    {
        [WebMethod]
        public static object InitLayout(object request)
        {
            var logic = new InitOperateLogic();
            var response = Ajax.Invoke(logic, request);
            return response.ToStringify();
        }
    }
}