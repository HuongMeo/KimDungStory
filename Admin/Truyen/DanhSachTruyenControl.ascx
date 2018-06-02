<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DanhSachTruyenControl.ascx.cs" Inherits="Project3.Admin.DanhSachTruyenControl" %>
<%--<div style="text-align:center; font-family:Arial; font-size: 30px; border-collapse: separate; padding-top: 1em; " >DANH SÁCH CÁC TRUYỆN</div>
<br />--%>
<asp:Multiview ID="mul" runat="server" ActiveViewIndex="0">

    <asp:View ID="v1" runat="server">
        <form runat="server">
        <br />
        <div><b>DANH SÁCH TRUYỆN</b></div>
        <div>
        <asp:Repeater ID="rptDSTruyen" runat="server" OnItemCommand="rptDSTruyen_ItemCommand">
            <HeaderTemplate>
                <table cellspaceing="0" cellpadding="0" style="width:100%; ">
                    <tr class="rptHed" style="height: 40px;">
                        <td style="width:220px; text-align: center; font-size: 21px;">Hình ảnh</td>
                        <td style="width:220px; text-align: center;font-size: 21px;">Tên truyện</td>
                        <td style="width:780px; text-align:center;font-size: 21px;">Tóm tắt</td>
                        <td style="width:130px; text-align: center;font-size: 20px;">Số chương</td>
                        <td></td>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate>
                <tr class="rptItem" style="padding: 5px 0px 5px 0px;">
                    <td ><img src='/Image/<%#:Eval("hinhanh") %>' height="280px" width="220px" /></td>
                    <td style="text-align:center; /*font-size:18px*/"><asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" CommandArgument='<%#:Eval("truyenid") %>' CssClass="lnk"> <%#:Eval("tentruyen") %></asp:LinkButton></td>
                    <td style="text-align:center; /*font-size:15px*/"><%#:Eval("tomtat") %></td>
                    <td style="text-align:center; /*font-size:15px*/"><%#:Eval("sochuong") %></td>
                    <td style="text-align:center;/*font-size:16px*/"><asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" CommandArgument='<%#:Eval("truyenid") %>' OnLoad="MesgDelete" CssClass="lnk">Xóa</asp:LinkButton></td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="rptAlt" style="padding: 5px 0px 5px 0px;">
                    <td ><img src='/Image/<%#:Eval("hinhanh") %>' height="280px" width="220px" /></td>
                    <td style="text-align:center; /*font-size:18px*/"><asp:LinkButton ID="lnkUpdate" runat="server" CommandName="Update" CommandArgument='<%#:Eval("truyenid") %>' CssClass="lnk"> <%#:Eval("tentruyen") %></asp:LinkButton></td>
                    <td style="text-align:center; /*font-size:15px*/"><%#:Eval("tomtat") %></td>
                    <td style="text-align:center; /*font-size:15px*/"><%#:Eval("sochuong") %></td>
                    <td style="text-align:center;font-size:17px"><asp:LinkButton ID="lnkDelete" runat="server" CommandName="delete" CommandArgument='<%#:Eval("truyenid") %>' OnLoad="MesgDelete" CssClass="lnk">Xóa</asp:LinkButton></td>
                </tr>
            </AlternatingItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        </div>
        <br />
        <div style="font-size:17px;"><asp:LinkButton ID="lnkThemTruyen" runat="server" OnClick="lnkThemTruyen_Click" CssClass="lnk">[Thêm mới]</asp:LinkButton></div>
       </form>
    </asp:View>


    <asp:View ID="v2" runat="server">
        <form runat="server">
        <asp:HiddenField ID="hdTruyenID" runat="server" />
        <asp:HiddenField ID="hdInsert" runat="server" />
        <asp:HiddenField ID="hdImage" runat="server" />
            <br />
            <div><b>THÊM MỚI TRUYỆN</b></div>
            <table >
            <tr>
                <td style="text-align: center; font:bold" class="bordertd">Tên truyện</td>
                <td class="bordertd"></td>
                <td class="bordertd"><asp:TextBox ID="txtTenTruyen" runat="server" CssClass="text" style="width:600px"></asp:TextBox></td>     
            </tr>
            <tr>
                <td style="text-align: center; font:bold" class="bordertd" >Tóm tắt</td>
                <td class="bordertd"></td>
                <td class="bordertd"><asp:TextBox ID="txtTomTat" runat="server" TextMode="MultiLine" CssClass="text" style="width:600px" ></asp:TextBox></td>
            </tr>
            <tr>
                <td  style="text-align: center; font:bold" class="bordertd" >Số chương</td>
                <td class="bordertd"></td>
                <td class="bordertd"><asp:TextBox ID="txtSoChuong" runat="server" CssClass="text" style="width:600px" ></asp:TextBox></td>
            </tr>
            <tr>
                <td  style="text-align: center;" class="bordertd" >Ảnh truyện</td>
                <td class="bordertd"></td>
                <td class="bordertd"><asp:FileUpload ID="FileUpload1" runat="server" /></td>
            </tr>
            <tr>
                <td class="bordertd"></td>
                <td class="bordertd"></td>
                <td class="bordertd"><asp:Button id="btnCapNhat" runat="server" Text="Cập nhật" OnClick="btnCapNhat_Click"  CssClass="button"/></td>
            </tr>

        </table>
        </form>
        
    </asp:View>
</asp:Multiview>
