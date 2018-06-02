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

namespace Project3.User.Chuong
{
    public partial class DSChuongControl : System.Web.UI.UserControl
    {
        private string[] keys;
        private static int[] resultsIndex;
        private static StringBuilder ndTruyen;
        private static List<ClsChuong> dsChuong;
        public static int index;
        private bool textChanged;
        private MatchCollection matches;

        ClsTruyen chuong = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int truyenid = int.Parse(Request["id"]);
                LoadData(truyenid);
                ndTruyen = new StringBuilder();
                dsChuong = new List<ClsChuong>();
               
                ghepTruyen(truyenid);
            }
        }
        void LoadData(int truyenid)
        {
            rptDSChuong.DataSource = chuong.HienThiDSChuong(truyenid);
            rptDSChuong.DataBind();
        }
        protected void btnSearch_Click(object sender, EventArgs e)
        {
            if (textChanged)
            {
                keys = txtSearch.Text.Trim().Split(' ');
                for (int i = 0; i < keys.Length; i++)
                {
                    keys[i] = Regex.Escape(keys[i]);
                }
                string pattern = "\\W(";
                for (int i = 0; i < keys.Length; i++)
                {
                    pattern += "\\W?" + keys[i] + "\\W";
                    if (i != keys.Length - 1)
                        pattern += "|";
                }
                pattern += ")+\\w*<p>&nbsp;</p>";


                matches = Regex.Matches(ndTruyen.ToString(), pattern, RegexOptions.IgnoreCase);
                Order();
                textChanged = false;
            }
        }

        public void gotoSearchingResult()
        {
            foreach (ClsChuong chuong in dsChuong)
            {
                int indexTemp = matches[resultsIndex[index]].Index;
                if (indexTemp >= chuong.startIndex && indexTemp <= chuong.endIndex )
                {
                    
                }
            }
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            textChanged = true;
            matches = null;
        }

        public void ghepTruyen(int id)
        {
            int startIndex = 0;

            SqlConnection cnn = new SqlConnection("Data Source = DESKTOP-VQ4N288\\SQLEXPRESS; Initial Catalog = TruyenKimDung; Integrated Security = True");
            cnn.Open();
            SqlCommand sqlCom = new SqlCommand("Select * From Chuong where truyenid="+id, cnn);
            
            using (SqlDataReader reader = sqlCom.ExecuteReader())
            {
                while (reader.Read())
                {
                    ClsChuong chuong = new ClsChuong();
                    chuong.id = reader.GetInt64(0);
                    chuong.name = reader.GetString(2);
                    chuong.content = reader.GetString(3);
                    chuong.startIndex = startIndex;
                    chuong.endIndex = startIndex + chuong.content.Length - 1;
                    startIndex = chuong.endIndex + 1;
                    dsChuong.Add(chuong);
                    ndTruyen.Append(chuong.content);
                }
                cnn.Close();
            }
        }
        private void Order()
        {

            int len = matches.Count;
            int[] priority = new int[len];
            resultsIndex = new int[len];
            for (int i = 0; i < len; i++)
            {
                int n = 0;
                foreach (string key in keys)
                {
                    string pattern = "(^|\\W)" + key + "($|\\W)";
                    if (Regex.IsMatch(matches[i].Value, pattern, RegexOptions.IgnoreCase))
                    {
                        n++;
                    }
                }
                priority[i] = n;

            }
            for (int i = 0; i < len; i++)
            {
                resultsIndex[i] = i;
            }
            Array.Sort(priority, resultsIndex);
            Array.Reverse(resultsIndex);
            int a = 0;
        }
    }
}

