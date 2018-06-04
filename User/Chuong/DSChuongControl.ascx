<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DSChuongControl.ascx.cs" Inherits="Project3.User.Chuong.DSChuongControl" %>
<body>
        <asp:TextBox ID="txtSearch" runat="server" Height="18px" Width="205px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Search" OnClick="Button1_Click"  />
    <asp:Label ID="lblMessage" runat="server"></asp:Label>

        <br />
        <br />
        <h3 style="color: /*#ea4040*/#dc2d21;  font-family: 'Times New Roman';
	                                            font-size: 35px;
	                                            font-style: normal;
	                                            font-variant: normal;
	                                            font-weight: 400;
	                                            line-height: 30px;">Mục Lục :</h3>

        <br />
        <br />
    
    <asp:Repeater ID="rptDSChuong" runat="server">
        <HeaderTemplate>
            <table>
        </HeaderTemplate>
        <ItemTemplate>
            <tr>
                <%--<td style="text-align: center"><%#:Eval("tentruyen") %> </td>--%>
                <td><a href="?f=truyen&fs=detail&id=<%#:Eval("truyenid")%>&c=mucluc&cs=detail&chuongid=<%#:Eval("chuongid")%>&search=-1" class="linkchuong"><%#:Eval("tenchuong")%></a></td>

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
