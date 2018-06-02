using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;

namespace Project3.Admin.Truyen
{
    public partial class TruyenControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string fs = Request["fs"];
            switch (fs)
            {
                case "ndtruyen":
                    Controls.Add(LoadControl("BienTapNoiDung.ascx"));
                    break;
                default:
                    Controls.Add(LoadControl("DanhSachTruyenControl.ascx"));
                    break;
            }
        }
    }
}