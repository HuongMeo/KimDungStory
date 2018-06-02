using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project3.User.TruyenDoc
{
    public partial class ChiTietTruyenControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request["cs"])
            {
                case "detail":
                    Controls.Add(LoadControl("../Chuong/NDChuongControl.ascx"));
                    break;
                default:
                    Controls.Add(LoadControl("../Utilities/ChuongControl.ascx"));
                    break;
            }
        }
    }
}