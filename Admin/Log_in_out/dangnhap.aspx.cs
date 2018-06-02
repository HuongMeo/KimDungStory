using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project3.DAL;

namespace Project3.Admin.Log_in_out
{
    public partial class dangnhap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //public static string mahoa(string input)
        //{
        //    // Use input string to calculate MD5 hash
        //    MD5 md5 = System.Security.Cryptography.MD5.Create();
        //    byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
        //    byte[] hashBytes = md5.ComputeHash(inputBytes);

        //    // Convert the byte array to hexadecimal string
        //    StringBuilder sb = new StringBuilder();
        //    for (int i = 0; i < hashBytes.Length; i++)
        //    {
        //        sb.Append(hashBytes[i].ToString("X2"));
        //    }
        //    return sb.ToString();
        //}

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            //string passmahoa = mahoa(txtmatkhau.Text);
            SqlConnection con;
            con = new SqlConnection("Data Source=DESKTOP-QIK0E5L\\SQLEXPRESS;Initial Catalog=TruyenKimDung;Integrated Security=True");
            con.Open();
            String sql = "SELECT * FROM DangNhap WHERE username='" + txttaikhoan.Text + "' AND pass='" + /*passmahoa*/ txtmatkhau.Text+ "'";
            SqlCommand com = new SqlCommand(sql, con);
            SqlDataReader dr = com.ExecuteReader();
            bool chk = dr.Read();
            dr.Close();
            con.Close();
            if (chk)
            {
                Session.Add("taikhoan", txttaikhoan.Text);
                Session.Add("matkhau", txtmatkhau.Text);
                Response.Redirect("/Administrator.aspx");
                
            }
            else
            {
                Response.Write("<center>Tài khoản không đúng hoặc mật khẩu sai. Bạn vui lòng nhập lại.</center>");
            }
        }
    }
}