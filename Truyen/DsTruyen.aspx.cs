using System;
using System.Web;
using Project3.DAL;

namespace Project3
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ClsTruyen truyen = new ClsTruyen();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                HienThiDSTruyen();
                if ( Request[id] !== null
            }


            void HienThiDSTruyen()
            {
                rptDSTruyen.DataSource = truyen.HienThiDSTruyen();
                rptDSTruyen.DataBind();
            }



        }
    }
}
       

   
