using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project3.Search
{
    public partial class TimKiemControl : System.Web.UI.UserControl
    {
        public string MyParam1;

        public string Param1
        {
            get
            {
                return MyParam1;
            }
            set
            {
                MyParam1 = value;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //switch(Request["fs"])
            //{
            //    case "detail":
            //        Controls.Add(LoadControl("/User/TruyenDoc/ChiTietTruyenControl.ascx"));
            //        break;
            //    default:
            //Controls.Add(LoadControl("/User/TruyenDoc/DsTruyenControl.ascx"));
            
            Controls.Add(LoadControl("DSkqTimKiem.ascx"));
            //break;

            //}
        }
    }
}