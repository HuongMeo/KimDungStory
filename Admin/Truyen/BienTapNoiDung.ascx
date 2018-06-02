
<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="BienTapNoiDung.ascx.cs" Inherits="Project3.Admin.Truyen.TomTatTruyenControl" %>
<%@ Register Assembly="FreeTextBox" Namespace="FreeTextBoxControls" TagPrefix="FTB" %>


<form runat="server">
    <asp:MultiView ID="mul" runat="server" ActiveViewIndex="0">

    <%--VIEW 0 : HIỂN THỊ DANH SÁCH CÁC TRUYỆN--%>
   <asp:View ID="v0" runat="server">
       <asp:Repeater ID="rptDsTruyen1" runat="server" OnItemCommand="rptDsTruyen1_ItemCommand">
           <HeaderTemplate>
                <table cellspaceing="0" cellpadding="0" style="width:100%; align-content:center; ">
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="rptItem" style="padding: 5px 0px 5px 0px;">
                    <td style="text-align:center; font-size:30px;"><asp:LinkButton OnClick="lnkSelect_Click" ID="lnkselect" runat="server" CommandName="select" CommandArgument='<%#:Eval("truyenid") %>' CssClass="lnk" > <%#:Eval("tentruyen") %></asp:LinkButton></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
       </asp:Repeater>
       <asp:HiddenField ID="hdTruyenId" runat="server"/>
   </asp:View>


    <%--VIEW 1: HIỂN THỊ DANH SÁCH TOÀN BỘ CÁC CHƯƠNG THUỘC CÁC TRUYỆN--%>
    <asp:View ID="v1" runat="server">
        <div style="font-size: 37px; font-family:cursive; text-align:left;"><asp:Label runat="server" ID="lbTenTruyen"></asp:Label></div>
        <br />
        <asp:Repeater ID="rptDsChuong" runat="server" OnItemCommand="rptDsChuong_ItemCommand">
            <HeaderTemplate>
                <table cellspaceing="0" cellpadding="0" style="width:100%"; >
                    <tr class="rptHed" style="height: 40px;">
                        <th style="width:65%; text-align:center; font-size: 20px;">Tên chương</th>
                        <th style="width:45%; text-align:center; font-size: 20px;">Biên tập nội dung</th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate >
                <tr class="rptItem" style="padding: 5px 0px 5px 0px;">
                    <td ><%#:Eval("tenchuong") %></td>
                    <td style="text-align:center;"><asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" CommandArgument='<%#:Eval("chuongid") %>' CssClass="lnk">Cập nhật</asp:LinkButton>&nbsp;|&nbsp<asp:LinkButton ID="LinkUpdate" runat="server" OnLoad="MesgDelete" CommandName="delete" CommandArgument='<%#:Eval("chuongid") %>' CssClass="lnk">Xóa</asp:LinkButton></td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="rptItem" style="padding: 5px 0px 5px 0px;">
                    <td ><%#:Eval("tenchuong") %></td>
                    <td style="text-align:center;"><asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" CommandArgument='<%#:Eval("chuongid") %>' CssClass="lnk">Cập nhật</asp:LinkButton>&nbsp;|&nbsp<asp:LinkButton ID="LinkUpdate" runat="server" OnLoad="MesgDelete" CommandName="delete" CommandArgument='<%#:Eval("chuongid") %>' CssClass="lnk">Xóa</asp:LinkButton></td>
                </tr>
            </AlternatingItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
            <asp:HiddenField ID="hdInsert" runat="server" />
            <asp:HiddenField ID="hdChuongid" runat="server"/>
        <div><asp:LinkButton ID="lnkUpdate" runat="server" OnClick="lnkUpdate_Click"  CssClass="lnk">[Thêm mới]</asp:LinkButton></div>
    </asp:View>


   <%-- VIEW 2: THÊM MỚI CHƯƠNG TRYỆN--%>
    <asp:View ID="v2" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="borderid" style="text-align: center; font:bold">Tên truyện</td>
                <td class="borderid" style="width:10px;"></td>
                <td class="borderid"><asp:dropDownList ID="drpDsTruyen" runat="server"   ></asp:dropDownList></td>
            </tr>
            <tr>
                <td class="borderid" style="text-align: center; font:bold">Tên chương</td>
                <td class="borderid"></td>
                <td class="borderid"><asp:TextBox ID="txtTenChuong" runat="server" style="width: 600px;" CssClass="text"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="borderid" style="text-align: center; font:bold">Nội dung</td>
                <td class="borderid"></td>
                <td class="borderid"><FTB:FreeTextBox ID="ftbNdTruyen" runat="server" ></FTB:FreeTextBox></td>
            </tr>
            <tr>
                <td class="borderid"></td>
                <td class="borderid"></td>
                <td class="borderid"><asp:Button ID="btnCapNhat" runat="server" Text="Thêm Mới" OnClick="btnCapNhat_Click" CssClass="button"/></td>
            </tr>
        </table>
    </asp:View>


    <%--VIEW 3: CẬP NHẬT NỘI DUNG TRUYỆN--%>
    <asp:View ID="v3" runat="server">
        <table style="width:100%;">
            <tr>
                <td class="borderid" style="text-align: center; font:bold">Tên truyện</td>
                <td class="borderid" style="width:10px;"></td>
                <td class="borderid"><asp:TextBox ID="txtTenTruyen_update" runat="server" style="width: 600px;" CssClass="text" ReadOnly="true"></asp:TextBox> </td>
            </tr>
            <tr>
                <td class="borderid" style="text-align: center; font:bold">Tên chương</td>
                <td class="borderid"></td>
                <td class="borderid"><asp:TextBox ID="txtTenChuong_update" runat="server" style="width: 600px;" CssClass="text"></asp:TextBox></td>
            </tr>
            <tr>
                <td class="borderid" style="text-align: center; font:bold">Nội dung</td>
                <td class="borderid"></td>
                <td class="borderid"><FTB:FreeTextBox ID="ftbNd_update" runat="server" ></FTB:FreeTextBox></td>
            </tr>
            <tr>
                <td class="borderid"></td>
                <td class="borderid"></td>
                <td class="borderid"><asp:Button ID="btnCapNhat2" runat="server" Text="Cập nhật" OnClick="btnCapNhat_Click" CssClass="button"/></td>
            </tr>
        </table>
    </asp:View>
</asp:MultiView>
</form>

