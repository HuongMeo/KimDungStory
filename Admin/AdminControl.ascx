<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminControl.ascx.cs" Inherits="Project3.Admin.AdminControl" %>
<%@ Register Src="Menu.ascx" TagName="Menu" TagPrefix="uc1" %>

<style type="text/css">
    .auto-style1 {
        width: 95%;
    }
</style>

<table style="width:100%">
    
    <tr >
        <td class="auto-style1">Xin chào,
    <asp:Label ForeColor="Red" ID="lbtaikhoan" runat="server"></asp:Label>
            . Bạn vừa đăng nhập thành công vào hệ thống.
        </td>
        <td>
             <a href="/" >[Thoát]</a>
        </td>
    
    </tr>
   
</table>
<p class="banner">TRUYỆN KIM DUNG</p>

<table cellspacing="0" cellpadding="0" style="width: 100%;">
    <tr>
        <td style="width: 200px;font-size: 23px;">
            <uc1:Menu ID="Menu1" runat="server" />
        </td>
        <td style="width: 10px">&nbsp</td>
        <td>
            <asp:PlaceHolder ID="plLoad" runat="server"></asp:PlaceHolder>
        </td>
    </tr>
</table>
 
<p class="footer">Copyright (c)2018 VHT</p>
