<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dangnhap.aspx.cs" Inherits="Project3.Admin.Log_in_out.dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="text-align: left">
    <form id="form1" runat="server">
       <div style="text-align: center">
    
        ĐĂNG NHẬP HỆ THỐNG<br />
        <br />
        Tài khoản :
        <asp:TextBox ID="txttaikhoan" runat="server"></asp:TextBox>
        <br />
        &nbsp;Mật khẩu :
        <asp:TextBox ID="txtmatkhau" runat="server" TextMode="Password"></asp:TextBox>
        <br />
        <asp:Button ID="btndangnhap" runat="server" onclick="btndangnhap_Click" 
            Text="ĐĂNG NHẬP" />
    
    </div>
    </form>
</body>
</html>
