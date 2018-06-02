<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="NDChuongControl.ascx.cs" Inherits="Project3.User.Chuong.NDChuongControl" %>
<div id="BgrColor" runat="server">
<style type="text/css">
    .auto-style1 {
        height: 45px;
       
    }
</style>
    

<div >
    <span class="tentruyen" style="float: left;"><asp:label ID="lttentruyen" runat="server"></asp:label></span>
    <span style="float:right;">
        <asp:DropDownList ID="drpColorText" runat="server" OnSelectedIndexChanged="drpColorText_SelectedIndexChanged"  autopostback="true">
            <asp:ListItem Value="GreenYellow">GreenYellow</asp:ListItem>
            <asp:ListItem Value="Red">Red</asp:ListItem>
            <asp:ListItem Value="Green">Green</asp:ListItem>
            <asp:ListItem Value="Azure">Azure</asp:ListItem>
            <asp:ListItem Value="Chocolate">Chocolate</asp:ListItem>
            <asp:ListItem Value="DarkOrange">DarkOrange</asp:ListItem>
            <asp:ListItem Value="Pink">Pink</asp:ListItem>
            <asp:ListItem Value="White">White</asp:ListItem>
            <asp:ListItem Value="Yellow">Yellow</asp:ListItem>
            <asp:ListItem Value="Orange">orange</asp:ListItem>
            <asp:ListItem Value="Aquamarine">Aquamarine</asp:ListItem>
            <asp:ListItem Value="Brown">Brown</asp:ListItem>
            <asp:ListItem Value="Coral">Coral</asp:ListItem>
            <asp:ListItem Value="GoldenRod">GoldenRod</asp:ListItem>
            <asp:ListItem Value="LightSalmon">LightSalmon</asp:ListItem>
            <asp:ListItem Value="Tomato">Tomato</asp:ListItem>
            <asp:ListItem Value="Crimson">Crimson</asp:ListItem>
            <asp:ListItem Value="Black">Black</asp:ListItem>
        </asp:DropDownList>
    </span>
    <span style="float:right;">
        <asp:DropDownList ID="drpColorBgr" runat="server" OnSelectedIndexChanged="drpColorBgr_SelectedIndexChanged"  autopostback="true">
            <asp:ListItem Value="LemonChiffon">LemonChiffon</asp:ListItem>
            <asp:ListItem Value="LavenderBlush">LavenderBlush</asp:ListItem>
            <asp:ListItem Value="LightYellow">LightYellow</asp:ListItem>
            <asp:ListItem Value="PaleTurquoise">PaleTurquoise</asp:ListItem>
            <asp:ListItem Value="Snow">Snow</asp:ListItem>
            <asp:ListItem Value="WhiteSmoke">WhiteSmoke</asp:ListItem>
            <asp:ListItem Value="Sienna">Sienna</asp:ListItem>
            <asp:ListItem Value="SlateGrey">SlateGrey</asp:ListItem>
            
        </asp:DropDownList>
    </span>
</div>
<div class="auto-style1" style="clear:both"></div>
<%--<form runat="server">--%>
    <asp:Button ID="btnCheckCT" Text="Kiểm tra chính tả" runat="server" OnClick="btnCheckCT_Click"/>
<%--</form>--%>
<div class="tenchuong" style="clear:both"><asp:label ID="ltTenChuong" runat="server"></asp:label>
    <br />
    <br />
</div>
<div class="ndchuong"><asp:label ID="ltNoiDung" runat="server"></asp:label></div>

</div>

