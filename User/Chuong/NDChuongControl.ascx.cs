using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Project3.DAL;
using System.Drawing;
using System.Text.RegularExpressions;
using System.Text;

namespace Project3.User.Chuong
{
    public partial class NDChuongControl : System.Web.UI.UserControl
    {

        ClsTruyen chuong = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BgrColor.Style.Add("background-color", "LavenderBlush");
                int chuongid = int.Parse(Request["chuongid"]);
                int truyenid = int.Parse(Request["id"]);
                LoadData(chuongid);

            }
        }
        void LoadData(int chuongid)
        {
            DataTable dt = new DataTable();
            dt = chuong.HienThiNDChuong(chuongid);
            if (dt.Rows.Count > 0)
            {
                lttentruyen.Text = dt.Rows[0]["tentruyen"].ToString();
                ltTenChuong.Text = dt.Rows[0]["tenchuong"].ToString();
                ltNoiDung.Text = dt.Rows[0]["noidung"].ToString();
            }
        }

        protected void drpColorText_SelectedIndexChanged(object sender, EventArgs e)
        {

            string color_of_text = drpColorText.Items[drpColorText.SelectedIndex].Value;
            //ltNoiDung.ForeColor = System.Drawing.Color.Equals(color_of_text);
            switch (color_of_text)
            {
                case "Red":
                    ltNoiDung.ForeColor = System.Drawing.Color.Red;
                    break;
                case "GreenYellow":
                    ltNoiDung.ForeColor = System.Drawing.Color.GreenYellow;
                    break;
                case "Green":
                    ltNoiDung.ForeColor = System.Drawing.Color.Green;
                    break;
                case "Azure":
                    ltNoiDung.ForeColor = System.Drawing.Color.Azure;
                    break;
                case "Chocolate":
                    ltNoiDung.ForeColor = System.Drawing.Color.Chocolate;
                    break;
                case "DarkOrange":
                    ltNoiDung.ForeColor = System.Drawing.Color.DarkOrange;
                    break;
                case "Pink":
                    ltNoiDung.ForeColor = System.Drawing.Color.Pink;
                    break;
                case "White":
                    ltNoiDung.ForeColor = System.Drawing.Color.White;
                    break;
                case "Yellow":
                    ltNoiDung.ForeColor = System.Drawing.Color.Yellow;
                    break;
                case "Orange":
                    ltNoiDung.ForeColor = System.Drawing.Color.Orange;
                    break;
                case "Aquamarine":
                    ltNoiDung.ForeColor = System.Drawing.Color.Aquamarine;
                    break;
                case "Brown":
                    ltNoiDung.ForeColor = System.Drawing.Color.Brown;
                    break;
                case "Goldenrod":
                    ltNoiDung.ForeColor = System.Drawing.Color.Goldenrod;
                    break;
                case "Coral":
                    ltNoiDung.ForeColor = System.Drawing.Color.Coral;
                    break;
                case "Tomato":
                    ltNoiDung.ForeColor = System.Drawing.Color.Tomato;
                    break;
                case "LightSalmon":
                    ltNoiDung.ForeColor = System.Drawing.Color.LightSalmon;
                    break;
                case "Crimson":
                    ltNoiDung.ForeColor = System.Drawing.Color.Crimson;
                    break;
                case "DarkRed":
                    ltNoiDung.ForeColor = System.Drawing.Color.DarkRed;
                    break;
                default:
                    ltNoiDung.ForeColor = System.Drawing.Color.Black;
                    break;
            }

        }

        protected void drpColorBgr_SelectedIndexChanged(object sender, EventArgs e)
        {
            string color_of_bgr = drpColorBgr.Items[drpColorBgr.SelectedIndex].Value;
            switch (color_of_bgr)
            {
                case "LavenderBlush":
                    BgrColor.Style.Add("background-color", "LavenderBlush");
                    break;
                case "LemonChiffon":
                    BgrColor.Style.Add("background-color", "LemonChiffon");
                    break;
                case "PaleTurquoise":
                    BgrColor.Style.Add("background-color", "PaleTurquoise");
                    break;
                case "SlateGrey":
                    BgrColor.Style.Add("background-color", "SlateGrey");
                    break;
                case "Sienna":
                    BgrColor.Style.Add("background-color", "Sienna");
                    break;
                case "WhiteSmoke":
                    BgrColor.Style.Add("background-color", "WhiteSmoke");
                    break;
                case "Snow":
                    BgrColor.Style.Add("background-color", "Snow");
                    break;
                case "LightYellow":
                    BgrColor.Style.Add("background-color", "LightYellow");
                    break;
                default:
                    BgrColor.Style.Add("background-color", "LavenderBlush");
                    break;
            }
        }

        protected void btnCheckCT_Click(object sender, EventArgs e)
        {
            string text = ltNoiDung.Text.Replace("<p>&nbsp;</p>", "\n");
            string rs = "";
            CheckCT check = new CheckCT();
            text = Regex.Replace(text, "[.,;:!@#?$\"\'()^-]+", " ");
            text = Regex.Replace(text, " +", " ");
            text = text.Trim();
            string[] para = text.Split('\n');
            int tmp = 0;
            foreach (var p in para)
            {
                string[] words = p.Split(' ');
                foreach (var w in words)
                {
                    tmp = check.checkWord(w.Trim());
                    if (tmp == 0) rs += w + " ";
                    else rs += "<mark data-toggle='tooltip' title='" + CheckCT.errors[tmp] + "'>" + w + "</mark>" + " ";
                }
                rs += "<p>&nbsp;</p>";
            }
            ltNoiDung.Text = rs;
            btnCheckCT.Visible = false;
        }
    }
}