<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DsTruyenControl.ascx.cs" Inherits="Project3.User.TruyenDoc.DsTruyenControl" %>

<asp:Repeater ID="rptDSTruyen" runat="server" >
            <HeaderTemplate>
                <table cellspaceing="0" cellpadding="0" style="width:100%; ">
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td colspan="3"><a href='?f=truyen&fs=detail&id=<%#:Eval("truyenid") %>&fd=mucluc' class="title"><%#:Eval("tentruyen") %></a></td>
                </tr>
                <tr style="height: 10px;"></tr>
                <tr  style="padding: 8px 0px 25px 0px;">
                    <td style="vertical-align:top; width:25%;"><img src='/Image/<%#:Eval("hinhanh") %>' width: "300px" height="400px"  /></td>
                    <td style="width:3%;"></td>
                    <td style="vertical-align:top"><%#:Eval("tomtat") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
</asp:Repeater>

<div  style="text-align:center; padding: 10px 0px 10px 0px; font-size: 20px">
    <span class="pading"><asp:hyperlink id="lnkPre" runat="server" Font-Bold="True" Font-Overline="False" ForeColor="#FF6600"> << Pre</asp:hyperlink>
    </span>--- <asp:label id="Label1" runat="server" text="Label" BackColor="White" ForeColor="Black"> </asp:label> --- <span><asp:hyperlink id="lnkNext" runat="server" Font-Bold="True" ForeColor="#FF6600">Next >></asp:hyperlink></span>
</div>