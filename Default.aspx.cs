using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project3
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            switch (Request["f"])
            {
                case "truyen":
                    Controls.Add(LoadControl("User/Utilities/CacBoTruyenControl.ascx"));
                    break;
                case "lh":
                    Controls.Add(LoadControl("Search/TimKiemControl.ascx"));
                    break;
                default:
                    Controls.Add(LoadControl("User/Utilities/CacBoTruyenControl.ascx"));
                    break;
            }
            Response.Redirect("Home.aspx");

        }
    }
}