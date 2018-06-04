using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project3.DAL;
using System.Data.SqlClient;
using System.Data;
using System.Text.RegularExpressions;
using System.Text;
using Project3.Search;

namespace Project3.User.Chuong
{
    public partial class DSChuongControl : System.Web.UI.UserControl
    {

        public static string txt;
        ClsTruyen chuong = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int truyenid = int.Parse(Request["id"]);
                LoadData(truyenid);
                
            }
        }
        void LoadData(int truyenid)
        {
            rptDSChuong.DataSource = chuong.HienThiDSChuong(truyenid);
            rptDSChuong.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Controls.Clear();
            txt = txtSearch.Text;
            TimKiemControl mycontrol =(TimKiemControl) Page.LoadControl("~/Search/TimKiemControl.ascx");
            Controls.Add(mycontrol);
            
        }
    }
}

