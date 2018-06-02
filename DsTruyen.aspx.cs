using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project3.DAL;
using System.Data;
using System.Data.SqlClient;

namespace Project3
{
    public partial class DsTruyen : System.Web.UI.Page
    {
        ClsTruyen truyen = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {
            //switch (Request["f"])
            //{
            //    case "truyen":
            //        Controls.Add(LoadControl("User/Utilities/CacBoTruyenControl.ascx"));
            //        break;
            //    case "lienhe":
            //        Controls.Add(LoadControl("User/Utilities/CacBoTruyenControl.ascx"));
            //        break;
            //    default:
            //        Controls.Add(LoadControl("User/Utilities/CacBoTruyenControl.ascx"));
            //        break;
            //}
        }
    }
}