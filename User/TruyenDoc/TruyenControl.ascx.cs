using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project3.User.TruyenDoc
{
    public partial class TruyenControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request["fs"])
            {
                case "detail":
                    Controls.Add(LoadControl("ChiTietTruyenControl.ascx"));
                    break;
                default:
                    Controls.Add(LoadControl("DSTruyenControl.ascx"));
                    //Response.Redirect("~/DsTruyen.aspx");
                    break;
            }
        }
    }
}