using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Web.Mail;

namespace Project3
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void GuiMail(string pNoiDung, string pNguoiNhan)

        {

#pragma warning disable CS0618 // Type or member is obsolete
            MailMessage pMail = new MailMessage();
#pragma warning restore CS0618 // Type or member is obsolete

            pMail.From = "ktwebpro@gmail.com";

            pMail.Subject = "Thông tin liên hệ từ website www.webxaula.com";

            pMail.Body = pNoiDung + "<br/><br/>";

            pMail.To = pNguoiNhan;


            pMail.BodyEncoding = System.Text.Encoding.UTF8;

#pragma warning disable CS0618 // Type or member is obsolete
            pMail.BodyFormat = MailFormat.Html;
#pragma warning restore CS0618 // Type or member is obsolete

            pMail.Fields["http://schemas.microsoft.com/cdo/configuration/smtsperver"] = "smtp.gmail.com";

            //dùng port 465 nếu lỗi thì đổi sang port 587;

            pMail.Fields["http://schemas.microsoft.com/cdo/configuration/smtpserverport"] = 465;

            pMail.Fields["http://schemas.microsoft.com/cdo/configuration/sendusing"] = 2;

            pMail.Fields["http://schemas.microsoft.com/cdo/configuration/smtpauthenticate"] = 1;

            pMail.Fields["http://schemas.microsoft.com/cdo/configuration/sendusername"] = "your email";

            pMail.Fields["http://schemas.microsoft.com/cdo/configuration/sendpassword"] = "your password";

            pMail.Fields["http://schemas.microsoft.com/cdo/configuration/smtpusessl"] = true;


#pragma warning disable CS0618 // Type or member is obsolete
            SmtpMail.SmtpServer = "smtp.gmail.com";
#pragma warning restore CS0618 // Type or member is obsolete

#pragma warning disable CS0618 // Type or member is obsolete
            SmtpMail.Send(pMail);
#pragma warning restore CS0618 // Type or member is obsolete

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            string pNoiDung = txtNoiDung.Text.Trim().Replace("", "").Replace("", "");
            string pDienThoai = txtDienThoai.Text.Trim().Replace("", "").Replace("", "");
            string pEmail = txtEmail.Text.Trim().Replace("", "").Replace("", "");
            string pHoten = txtHoTen.Text.Trim().Replace("", "").Replace("", "");
            string pNoiDungGui = "<b>Họ tên: </b>" + pHoten + "<br/><br/>" + "<b>Email: </b>" + pEmail + "<br/><br/>" + "<b>Điện thoại: </b>" + pDienThoai + "<br/><br/>" + "<br/><br/>" + "<b>Nội dung liên hệ: </b>" + pNoiDung;
            GuiMail(pNoiDungGui, "vhttham@gmail.com");


            lblThongBao.Text = "Bạn đã gửi thông tin liên hệ thành công.";
            txtHoTen.Text = "";
            txtEmail.Text = "";
            txtDienThoai.Text = "";
           
        }
    }
}