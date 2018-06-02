using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project3.DAL;

namespace Project3.User.TruyenDoc
{
    public partial class DsTruyenControl : System.Web.UI.UserControl
    {
        int currentPage;
        ClsTruyen truyen = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadData();
            }

        }
        void loadData()
        {
            DataTable dt = new DataTable();
            dt = truyen.HienThiDSTruyen();
            //Start Paging
            PagedDataSource pds = new PagedDataSource();
            DataView dv = new DataView(dt);
            pds.DataSource = dv;
            pds.AllowPaging = true;

            //Hiển thị số truyện trong 1 trang
            pds.PageSize = 5;
            //Tổng số trang
            int numPage = pds.PageCount;

            
            if(Request.QueryString["page"] != null)
            {
                currentPage = Int32.Parse(Request.QueryString["page"]);
            }
            else
            {
                currentPage = 1;
            }

            //paging allways start at 0
            pds.CurrentPageIndex = currentPage - 1;
            //Hiển thị trang hiện tại
            Label1.Text = "Page " + currentPage + " of " + pds.PageCount;

            //Cài đặt link
            if (!pds.IsFirstPage)
                lnkPre.NavigateUrl = Request.CurrentExecutionFilePath + "?page=" + Convert.ToString(currentPage - 1);
            else
            {
                lnkPre.Visible = false;
            }
            if (!pds.IsLastPage)
                lnkNext.NavigateUrl = Request.CurrentExecutionFilePath + "?page=" + Convert.ToString(currentPage + 1);
            else
            {
                lnkNext.Visible = false;
            }

            //
            rptDSTruyen.DataSource = pds;
            rptDSTruyen.DataBind();
        }
    }
}