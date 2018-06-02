<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ThongTinTruyenControl.ascx.cs" Inherits="Project3.User.Chuong.ThongTinTruyenControl" %>
<div style="height: 20px"></div>
<asp:Repeater ID="rptThongTinTruyen" runat="server">
    <HeaderTemplate>
        <table>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td colspan="3"  style="font-weight:bold; font-size:30px; color:white" ><%#:Eval("tentruyen") %></td>
        </tr>
        <tr style="height: 8px;"></tr>
        <tr>
           <td style="vertical-align:top; width:25%"><img src='/Image/<%#:Eval("hinhanh") %>' id="image"/></td>
            <td></td>
            <td style="vertical-align:top; width:70%" id="tomtat"><%#:Eval("tomtat") %></td>
        </tr>
    </ItemTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>