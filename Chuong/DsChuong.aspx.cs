using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Project3.DAL;

namespace Project3
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        ClsTruyen truyen = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadDsChuong();
            }
            //if (Session["truyenid"] != null)
            //{
            //    int id = int.Parse(Session["truyenid"].ToString());



            //    if (!IsPostBack)
            //    {
            //        rptDsChuong.DataSource = truyen.HienThiDSChuong(id);
            //        rptDsChuong.DataBind();
            //    }
            //}
            void LoadDsChuong()
            {
                DataTable dt = new DataTable();
                string idTruyen = Request["id"];
                dt = truyen.HienThiDSChuong(int.Parse(idTruyen));
                if (dt.Rows.Count > 0)
                {
                    tentruyen.Text = dt.Rows[0]["tentruyen"].ToString();
                    tenchuong.Text = dt.Rows[0]["tenchuong"].ToString();

                }


            };
        }

    }
}
