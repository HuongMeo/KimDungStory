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
    public partial class TimKiem : System.Web.UI.Page
    {
        ClsTruyen truyen = new ClsTruyen();
        protected void Page_Load(object sender, System.EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }


        private void LoadData()
        {
            DataTable dt = new DataTable();
            dt = truyen.search();
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        private void LoadData(string txtSearch)
        {
            DataTable dt = new DataTable();
            dt = truyen.search_by_txt(txtSearch);
            GridView1.DataSource = truyen.search_by_txt(txtSearch);
            GridView1.DataBind();
        }

        protected void btnSearch_Click(object sender, System.EventArgs e)
        {
            if (string.IsNullOrEmpty(txtSearch.Text))
            {
                lblMessage.ForeColor = System.Drawing.Color.Black;
                lblMessage.Text = "Nhập nội dung bận cần tìm";
            }
            else
            {
                lblMessage.Text = "";
                LoadData(txtSearch.Text.Trim());
            }
        }
    }
}
