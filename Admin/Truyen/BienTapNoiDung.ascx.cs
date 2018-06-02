using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using Project3.DAL;

namespace Project3.Admin.Truyen
{
    public partial class TomTatTruyenControl : System.Web.UI.UserControl
    {
        ClsTruyen truyen = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LayDsTruyen();
                LayDsChuongAllTruyen();
            }
        }

        void LayDsChuongAllTruyen()
        {
            drpDsTruyen.DataSource = truyen.HienThiDSTruyen();
            drpDsTruyen.DataValueField = "truyenid";
            drpDsTruyen.DataTextField = "tentruyen";
            drpDsTruyen.DataBind();
        }

        void LayDsTruyen()
        {
            rptDsTruyen1.DataSource = truyen.HienThiDSTruyen();
            rptDsTruyen1.DataBind();
        }

        //void LayNdTruyen()
        //{
        //    rptDsChuong.DataSource = truyen.HienThiAllNdTruyen();
        //    rptDsChuong.DataBind();
        //}

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            //Thêm mới dữu liệu

            if (hdInsert.Value == "insert")
            {
                if (!string.IsNullOrEmpty(drpDsTruyen.SelectedValue.ToString()))
                {
                    truyen.ThemNdTruyen(int.Parse(drpDsTruyen.SelectedValue.ToString()), txtTenChuong.Text.Trim(), ftbNdTruyen.Text.Trim());
                    //Response.Redirect(Request.Url.ToString());
                    //Response.Write("Thêm thành công!!!");
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Thêm mới thành công!!!');", true);
                }
            }
            else if(hdInsert.Value == "update")
            {
                //Cập nhật
                //if (!string.IsNullOrEmpty(txtTenTruyen_update.Text.Trim()))
                {
                    truyen.CapNhatNdTruyen(int.Parse(hdChuongid.Value), txtTenChuong_update.Text.Trim(), ftbNd_update.Text.Trim());
                    //Response.Write("Cập nhật thành công!!!");
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Cập nhật thành công!!!');", true);
                }
            }
                //Response.Redirect(Request.Url.ToString());
                
            }

 

        protected void MesgDelete(object sender, System.EventArgs e)
        {
            ((LinkButton)sender).Attributes["onClick"] = "return confirm('Bạn có chắc chắn muốn xóa chương này???')";
        }

        protected void lnkUpdate_Click(object sender, EventArgs e)
        {
            hdInsert.Value = "insert"; 
            mul.ActiveViewIndex = 2;
        }

        protected void rptDsChuong_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DataTable dt = new DataTable();
            switch (e.CommandName.ToString())
            { 
                case "Update":
                    dt = truyen.LayDsChuong_by_id(int.Parse(e.CommandArgument.ToString()));
                    if (dt.Rows.Count > 0)
                    {
                        //txtTenTruyen_update.Text = dt.Rows[0]["tentruyen"].ToString();
                        ftbNd_update.Text = dt.Rows[0]["noidung"].ToString();
                        txtTenChuong_update.Text = dt.Rows[0]["tenchuong"].ToString();
                        hdChuongid.Value = e.CommandArgument.ToString();
                        hdInsert.Value = "update";
                        mul.ActiveViewIndex = 3;
                    }
                    break;

                case "delete":
                    dt = truyen.LayDsChuong_by_id(int.Parse(e.CommandArgument.ToString()));
                    if (dt.Rows.Count > 0)
                    {
                        truyen.XoaChuong(int.Parse(e.CommandArgument.ToString()));
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Xóa thành công!!!');", true);
                        //Response.Redirect(Request.Url.ToString());
                    }
                    break;
            }
        }

        protected void lnkSelect_Click(object sender, EventArgs e)
        {
            //hdTruyenId.Value = "select"; 
            mul.ActiveViewIndex = 1;
        }

        protected void rptDsTruyen1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();
            dt1 = truyen.HienThiDSChuong(int.Parse(e.CommandArgument.ToString()));
            dt2 = truyen.HienThiChiTietTruyen(int.Parse(e.CommandArgument.ToString()));
            switch (e.CommandName.ToString())
            {
                case "select":
                     if (dt1.Rows.Count > 0 && dt2.Rows.Count > 0)
                     {
                          hdTruyenId.Value = e.CommandArgument.ToString();
                          rptDsChuong.DataSource = dt1;
                          rptDsChuong.DataBind();

                        lbTenTruyen.Text = dt2.Rows[0]["tentruyen"].ToString();
                        lbTenTruyen.DataBind();
                        mul.ActiveViewIndex = 1;
                    }
                break;
        }
        }

        
    }
}
