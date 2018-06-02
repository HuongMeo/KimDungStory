<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project3.WebForm1" %>

<%@ Register Src="~/Search/TimKiemControl.ascx" TagPrefix="uc1" TagName="TimKiemControl" %>




<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   


    <uc1:TimKiemControl runat="server" ID="TimKiemControl" />
    
</asp:Content>
