<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="Project3.TimKiem" %>

<asp:Content runat="server" ContentPlaceHolderID="MainContent">
    <div style="height: 20px;"></div>
        <asp:Label ID="lblName" runat="server" Text="Nhập nội dung:"></asp:Label>
        <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <asp:Label ID="lblMessage" runat="server"></asp:Label>
        <br />
        <br />

        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView> 
</asp:Content>