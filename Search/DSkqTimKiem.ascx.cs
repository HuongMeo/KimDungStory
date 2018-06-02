using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Project3.DAL;

namespace Project3.Search
{
    public partial class DSkqTimKiem : System.Web.UI.UserControl
    {
        ClsTruyen truyen = new ClsTruyen();
        
        protected void Page_Load(object sender, System.EventArgs e)
        {
            if (!IsPostBack)
            {
                string txt = Request["text"];
                LoadData(txt);
            }
        }


        //private void LoadData()

        //{
        //    DataTable dt = new DataTable();
        //    dt = truyen.search();
        //    GridView1.DataSource = dt;
        //    GridView1.DataBind();
        //}

        private void LoadData(string txtSearch)
        {
            DataTable dt = new DataTable();
            dt = truyen.search_by_txt(txtSearch);
            rptDSChuong.DataSource = truyen.search_by_txt_test(txtSearch);
            rptDSChuong.DataBind();
        }

        protected void btnSearch_Click(object sender, System.EventArgs e)
        {
             string txt = Request["text"];
            //if (string.IsNullOrEmpty(txt.Text))
            //{
            //    lblMessage.ForeColor = System.Drawing.Color.Red;
            //    lblMessage.Text = "Nhập nội dung bạn cần tìm";
            //}
            //else
            {
                //lblMessage.Text = "";
                LoadData(txt.Trim());
            }
        }
    }
}