using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project3.DAL;

namespace Project3.User.Chuong
{
    public partial class ThongTinTruyenControl : System.Web.UI.UserControl
    {
        ClsTruyen truyen = new ClsTruyen();
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
            rptThongTinTruyen.DataSource = truyen.HienThiChiTietTruyen(truyenid);
            rptThongTinTruyen.DataBind();
        }
    }
}