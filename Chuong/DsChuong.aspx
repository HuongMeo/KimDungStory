<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DsChuong.aspx.cs" Inherits="Project3.WebForm2" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div style="height: 50px;"></div>
    <%--<asp:Repeater ID="rptDsChuong" runat="server">
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
    </asp:Repeater>--%>
    <div style="float:left;"><asp:Literal ID="tentruyen" runat="server"></asp:Literal></div>
   <div style="float:left;"><asp:Literal ID="tenchuong" runat="server"></asp:Literal></div>
   abhdfhsidfjs
</asp:Content>
