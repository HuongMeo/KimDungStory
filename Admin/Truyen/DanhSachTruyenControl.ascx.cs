using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Project3.DAL;
using System.IO;

namespace Project3.Admin
{
    public partial class DanhSachTruyenControl : System.Web.UI.UserControl
    {
        ClsTruyen truyen = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();

            }

        }

        void LoadData()
        {
            rptDSTruyen.DataSource = truyen.HienThiDSTruyen();
            rptDSTruyen.DataBind();
        }

        protected void lnkThemTruyen_Click(object sender, EventArgs e)
        {
            hdInsert.Value = "insert";
            mul.ActiveViewIndex = 1;
        }

        protected void MesgDelete(object sender, System.EventArgs e)
        {
            ((LinkButton)sender).Attributes["onClick"] = "return confirm('Bạn có chắc chắn muốn xóa truyện này???')";
        }

        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            //upload ảnh
            string typefile = "";
            string file = "";
            if ( FileUpload1.FileName.Length > 0)
            {
                if (FileUpload1.PostedFile.ContentLength < 8000000)
                {
                    if(FileUpload1.PostedFile.ContentType.Equals("image/jpeg") || FileUpload1.PostedFile.Equals("image/png"))
                    {
                        typefile = Path.GetExtension(FileUpload1.FileName).ToLower();
                        file = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
                        //file = FileUpload1.FileName.Replace(file, "Project3" + typefile);
                        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Image/") + file);
                    }
                }
            }

            //Thêm mới csdl
            if (hdInsert.Value == "insert")
            {
                if (!string.IsNullOrEmpty(txtTenTruyen.Text.Trim()))
                {
                    truyen.ThemTruyen(txtTenTruyen.Text.Trim(), txtTomTat.Text.Trim(), int.Parse(txtSoChuong.Text.Trim()), file.ToString());
                    Response.Redirect(Request.Url.ToString());
                }
            }
            else
            {
                if (!string.IsNullOrEmpty(txtTenTruyen.Text.Trim()))
                {
                    truyen.CapNhatTruyen(int.Parse(hdTruyenID.Value),txtTenTruyen.Text.Trim(), txtTomTat.Text.Trim(), int.Parse(txtSoChuong.Text.Trim()), file);
                    Console.Write("Cập nhật thành công!");
                    Response.Redirect(Request.Url.ToString());
                }
            }
            
        }

        protected void rptDSTruyen_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            DataTable dt = new DataTable();
            switch (e.CommandName.ToString())
            {
                case "Update":

                    dt = truyen.LayDsTruyen_by_id(int.Parse(e.CommandArgument.ToString()));

                    if(dt.Rows.Count > 0)
                    {
                        txtTenTruyen.Text = dt.Rows[0]["tentruyen"].ToString();
                        txtTomTat.Text = dt.Rows[0]["tomtat"].ToString();
                        txtSoChuong.Text = dt.Rows[0]["sochuong"].ToString();
                        hdImage.Value = dt.Rows[0]["hinhanh"].ToString();
                        hdTruyenID.Value = e.CommandArgument.ToString();
                        hdInsert.Value = "update";

                        mul.ActiveViewIndex = 1;
                    }
                    break;

                case "delete":

                    dt = truyen.LayDsTruyen_by_id(int.Parse(e.CommandArgument.ToString()));
                    if(dt.Rows.Count > 0)
                    {
                        truyen.XoaTruyen(int.Parse(e.CommandArgument.ToString()));
                        Response.Redirect(Request.Url.ToString());
                    }
                    break;
            }

        }
    }
}