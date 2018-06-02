using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project3.Admin
{
    public partial class AdminControl : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Convert.ToString(Session["taikhoan"]) == "")
            {
                Response.Redirect("Admin/Log_in_out/dangnhap.aspx");
            }
            else
            {
                lbtaikhoan.Text = Convert.ToString(Session["taikhoan"]);
            }

            string s = Request["f"];
            switch (s)
            {
                case "truyen":
                    plLoad.Controls.Add(LoadControl("Truyen/TruyenControl.ascx"));
                    break;
            }
        }

        //protected void Unnamed1_Click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Admin/Log_in_out/dangnhap.aspx");
        //}
    }
}