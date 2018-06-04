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
        <br />
        <br />
        <h3 style="color: /*#ea4040*/#dc2d21;  font-family: 'Times New Roman';
	                                            font-size: 35px;
	                                            font-style: normal;
	                                            font-variant: normal;
	                                            font-weight: 400;
	                                            line-height: 30px;">Kết quả tìm kiếm :</h3>

        <br />
        <br />
    <asp:Repeater ID="rptDSChuong" runat="server" >
            <HeaderTemplate>
                <table cellspaceing="0" cellpadding="0" style="width:100%; ">
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><a href='?f=truyen&fs=detail&id=<%#:Eval("truyenId") %>&c=mucluc&cs=detail&chuongid=<%#:Eval("chuongId")%>&search=<%#:Eval("id") %>' style="font-family:Century; font-size: 18px; color: #FFA500"><%#:Eval("tenChuong") %></a></td>    
                </tr>
                <tr>
                     <td><%#:Eval("content") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
    </asp:Repeater>
