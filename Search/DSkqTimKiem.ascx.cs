using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Project3.DAL;
using System.Text.RegularExpressions;
using System.Text;
using FastMember;
using System.ComponentModel;
using System.Reflection;
using Project3.User.Chuong;

namespace Project3.Search
{
    public partial class DSkqTimKiem : UserControl
    {
       
        private string[] keys;
        public static List<ClsKQTimKiem> dsKetQua;
        private string txtSearch;
        private DataTable table;
        private int[] resultsIndex;
        private StringBuilder ndTruyen;
        private List<ClsChuong> dsChuong;
        private int truyenid;



        private MatchCollection matches;
        ClsTruyen truyen = new ClsTruyen();
        
        protected void Page_Load(object sender, System.EventArgs e)
        {
            //   if (!IsPostBack)
            
            {
                truyenid = int.Parse(Request["id"]);

                txtSearch = DSChuongControl.txt;
                
                ndTruyen = new StringBuilder();
                dsChuong = new List<ClsChuong>();
                ghepTruyen(truyenid);
                search();
               LoadData();
              
                



            }
        }

        private void LoadData()
        {
            //DataTable dt = new DataTable();
            //dt = truyen.search_by_txt(txtSearch);
            rptDSChuong.DataSource = table;
            rptDSChuong.DataBind();
        }

        protected void search()
        {
            
            {
                keys = txtSearch.Trim().Split(' ');
                for (int i = 0; i < keys.Length; i++)
                {
                    keys[i] = Regex.Escape(keys[i]);
                }
                string pattern = "";
                if (keys.Length > 0)
                {
                    pattern = "\\b(" + keys[0] + "\\b|"; 
                }
                for (int i = 1; i < keys.Length; i++)
                {
                    pattern += keys[i] + "\\b";
                    if (i != keys.Length - 1)
                        pattern += "|";
                }
                pattern += ")+[^<>\\n]*";


                matches = Regex.Matches(ndTruyen.ToString(), pattern, RegexOptions.IgnoreCase);
                Order();
                dsKetQua  = new List<ClsKQTimKiem>();
                int len = matches.Count;
                for (int i = 0; i < len; i++)
                {
                    ClsKQTimKiem kq = new ClsKQTimKiem();
                    kq.content = matches[resultsIndex[i]].Value;
                    for (int j = 0; j < dsChuong.Count; j++)
                    {
                        if (matches[resultsIndex[i]].Index >= dsChuong[j].startIndex && matches[resultsIndex[i]].Index < dsChuong[j].endIndex)
                        {
                            kq.id = i;
                            kq.truyenId = truyenid;
                            kq.index = matches[resultsIndex[i]].Index - dsChuong[j].startIndex ;
                            kq.chuongId = dsChuong[j].id;
                            kq.tenChuong = dsChuong[j].name;
                            kq.ndChuong = ReplaceAt(dsChuong[j].content, kq.index, kq.content.Length, kq.content);
                            
                            
                            break;
                        }
                    }
                    dsKetQua.Add(kq);
                }
                table = ExtensionMethods.ToDataTable<ClsKQTimKiem>(dsKetQua);
                //table = new DataTable();
                //using (var reader = ObjectReader.Create(dsKetQua))
                //{
                //    table.Load(reader);
                //}


            }

                
            }

          
        
        public void ghepTruyen(int id)
        {
            int startIndex = 0;

            SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-VQ4N288\\SQLEXPRESS;Initial Catalog=TruyenKimDung;Integrated Security=True");
            cnn.Open();
            SqlCommand sqlCom = new SqlCommand("Select * From Chuong where truyenid=" + id, cnn);

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
        public static string ReplaceAt(string str, int index, int length, string replace)
        {
            replace = "<mark>" + replace + "</mark>";
            return str.Remove(index, Math.Min(length, str.Length - index)).Insert(index, replace);
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
            
        }
        
        
    }
}