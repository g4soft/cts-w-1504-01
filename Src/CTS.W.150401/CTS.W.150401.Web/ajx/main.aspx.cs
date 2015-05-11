using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTS.Web.Com.Domain.Controller;
using System.Web.Services;
using CTS.W._150401.Models.Domain.Logic.Client.Main;

namespace CTS.W._150401.Web.ajx
{
    public partial class main : PageBase
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