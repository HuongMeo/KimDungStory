<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DsTruyen.aspx.cs" Inherits="Project3.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<%--<asp:Multiview ID="mul" runat="server" ActiveViewIndex="0">--%>

    <%--<asp:View ID="v1" runat="server">
        <form runat="server">--%>
    <div style="height:30px"></div>
          <asp:Repeater ID="rptDSTruyen" runat="server"  >
            <HeaderTemplate >
                        <table cellspaceing="0" cellpadding="0" style="width:100%; ">
            </HeaderTemplate>
                    <ItemTemplate>
                        <tr  style=" padding-top:15px;">
                            <td colspan="3" ><a href='?f=truyen&id=<%#:Eval("truyenid") %>' class="title" style="font-size: 25px;"><%#:Eval("tentruyen") %></a></td>
                            <%--<td colspan="3"><asp:LinkButton ID="lnkUpdate" runat="server" OnClick="xemDsChuong" CommandName="DsChuong" CommandArgument='<%#:Eval("truyenid") %>' class="title" style="font-size: 25px;"> <%#:Eval("tentruyen") %></asp:LinkButton></td>--%>
                        </tr>
                        <tr  style=" padding-top:10px;">
                            <td style="vertical-align: top; "><img src='/Image/<%#:Eval("hinhanh") %>' style="padding: 8px 0px 8px 0px; max-width: 250px;"   /></td>
                            <td style="width: 3%"></td>
                            <td style="vertical-align:top ; padding: 8px 0px 8px 0px;"><%#:Eval("tomtat") %></td>
                        </tr>
                        <tr style="height: 20px;"></tr>
                    </ItemTemplate>
           
                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
            </asp:Repeater>
            <%--</form>
        </asp:View>

    <asp:View ID="v2" runat="server">
        <form runat="server">
        <asp:HiddenField ID="hdTruyenID" runat="server" />
        <asp:HiddenField ID="hdHtDsChuong" runat="server" />
           <asp:Repeater ID="dsChuong" runat="server" >
            <HeaderTemplate>
                <table cellspaceing="0" cellpadding="0" style="width:100%"; >
                    <tr class="rptHed" style="height: 40px;">
                        <th style="width:65%; text-align:center; font-size: 20px;"><%#:Eval("tentruyen") %></th>
                    </tr>
            </HeaderTemplate>
            <ItemTemplate >
                <tr class="rptItem" style="padding: 5px 0px 5px 0px;">
                    <td ><%#:Eval("tenchuong") %></td>
                </tr>
            </ItemTemplate>
            <AlternatingItemTemplate>
                <tr class="rptItem" style="padding: 5px 0px 5px 0px;">
                    <td ><%#:Eval("tenchuong") %></td>
                </tr>
            </AlternatingItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        </form>
        
    </asp:View>

    </asp:Multiview>--%>
</asp:Content>
