<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DSkqTimKiem.ascx.cs" Inherits="Project3.Search.DSkqTimKiem" %>

    <%--<br/>
    <div style="float:right"></div>
        <asp:Label ID="lblName" runat="server" Text="Nhập nội dung:"></asp:Label>
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <br />
    <br />--%>
    <asp:Repeater ID="rptDSChuong" runat="server" >
            <HeaderTemplate>
                <table cellspaceing="0" cellpadding="0" style="width:100%; ">
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td style="width: 19%"><a href='?f=kq&fs=detail&id=<%#:Eval("truyenid") %>' style="font-family:Century; font-size: 18px; color: #FFA500"><%#:Eval("tentruyen") %></a></td>
                
                    <td style="width: 1%;"></td>
               
                    <td><a href='?f=kq&fs=detail&id=<%#:Eval("truyenid")%>&cs=detail&chuongid=<%#:Eval("chuongid") %>' class="linkchuong"><%#:Eval("tenchuong")%></a></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
    </asp:Repeater>