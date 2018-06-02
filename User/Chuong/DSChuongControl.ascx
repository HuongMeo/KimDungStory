<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DSChuongControl.ascx.cs" Inherits="Project3.User.Chuong.DSChuongControl" %>
<body>
    <asp:TextBox ID="txtSearch" runat="server" OnTextChanged="txtSearch_TextChanged"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="btnSearch_Click" />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <asp:Repeater ID="rptDSChuong" runat="server">
        <HeaderTemplate>
            <table>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <%--<td style="text-align: center"><%#:Eval("tentruyen") %> </td>--%>
                <td><a href="?f=truyen&fs=detail&id=<%#:Eval("truyenid")%>&c=mucluc&cs=detail&chuongid=<%#:Eval("chuongid")%>" class="linkchuong"><%#:Eval("tenchuong")%></a></td>

            </tr>
            <tr>
                <td></td>
            </tr>
        </ItemTemplate>
        <FooterTemplate>
            </table>
        </FooterTemplate>
    </asp:Repeater>
</body>
