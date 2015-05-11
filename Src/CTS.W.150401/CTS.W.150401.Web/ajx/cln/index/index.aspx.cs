using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CTS.Web.Com.Domain.Controller;
using System.Web.Services;

namespace CTS.W._150401.Web.ajx.cln.index
{
    public partial class index : PageBase
    {
        [WebMethod]
        public static object InitLayout(object request)
        {
            return null;
        }
    }
}