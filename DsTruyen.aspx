<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DsTruyen.aspx.cs" Inherits="Project3.DsTruyen" %>

<%@ Register Src="~/User/TruyenDoc/TruyenControl.ascx" TagPrefix="uc1" TagName="TruyenControl" %>




<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <%--<form id="form1" runat="server">--%>
    <div style="height: 20px"></div>
    <uc1:TruyenControl runat="server" ID="TruyenControl" />    
    <%--<asp:Repeater ID="rptDSTruyen" runat="server" >
            <HeaderTemplate>
                <table cellspaceing="0" cellpadding="0" style="width:100%; ">
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td colspan="3"><a href='?f=truyen&fs=detail&id=<%#:Eval("truyenid") %>&fd=mucluc' class="title"><%#:Eval("tentruyen") %></a></td>
                    
                </tr>
                <tr  style="padding: 5px 0px 5px 0px;">
                    <td style="vertical-align:top"><img src='/Image/<%#:Eval("hinhanh") %>' height="280px" width="220px" /></td>
                    <td style="width:15px;"></td>
                    <td style="vertical-align:top"><%#:Eval("tomtat") %></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </form>--%>
</asp:Content>
