using Project3.DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Project3
{
    public partial class SiteMaster : MasterPage
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }



        

        protected void btnTarget_Click(object sender, ImageClickEventArgs e)

        {

            Response.Redirect("Administrator.aspx");

        }

     

        //protected void drpColorBgr_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string color_of_bgr = drpColorBgr.Items[drpColorBgr.SelectedIndex].Value;
        //    switch (color_of_bgr)
        //    {
        //        case "LavenderBlush":
        //            BgrColor.Style.Add("background-color", "LavenderBlush");
        //            break;
        //        case "LemonChiffon":
        //            BgrColor.Style.Add("background-color", "LemonChiffon");
        //            break;
        //        case "PaleTurquoise":
        //            BgrColor.Style.Add("background-color", "PaleTurquoise");
        //            break;
        //        case "SlateGrey":
        //            BgrColor.Style.Add("background-color", "SlateGrey");
        //            break;
        //        case "Sienna":
        //            BgrColor.Style.Add("background-color", "Sienna");
        //            break;
        //        case "WhiteSmoke":
        //            BgrColor.Style.Add("background-color", "WhiteSmoke");
        //            break;
        //        case "Snow":
        //            BgrColor.Style.Add("background-color", "Snow");
        //            break;
        //        case "LightYellow":
        //            BgrColor.Style.Add("background-color", "LightYellow");
        //            break;
        //        default:
        //            BgrColor.Style.Add("background-color", "#555");
        //            break;
        //    }
        //}
    }
}