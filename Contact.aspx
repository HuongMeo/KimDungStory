<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Project3.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <body>
        <div class="wrap">
            <div class="header">
                <div class="logo">
                    <a href="index.html">
                        <img src="images/logo.png" alt="">
                    </a>
                </div>
            </div>
            <div class='ribbon'>
                <a class="active" href='index.html'>Home</a>
                <a href='about.html'>About</a>
                <a href='service.html'>Services</a>
                <a href='contact.html'>Contact</a>
            </div>
            <div class="clear"></div>
            <div class="main">
                <div class="content-bg about-w3ls">
                    <div class="section group">
                        <div class="col span_1_of_2">

                            <div class="company_address">
                                <h3>Information:</h3>
                                <p>17 Giải Phóng, Hà Nội</p>
                                <%--<p>22-56-2-9 Sit Amet, Lorem,</p>--%>
                                <p>Việt Nam</p>
                                <p>Phone:012345678</p>
                                <p>Fax: 012345678</p>
                                <p>Email: <span><a href="mailto:@example.com">vhttham@gmail.com</a></span></p>
                                <p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>
                            </div>
                        </div>
                        <div class="col span_2_of_4">
                            <div class="contact-form">
                                <h3>Contact Us</h3>
                                <form>
                                    <div>
                                        <span>
                                            <label>NAME</label></span>
                                        <span>
                                            <asp:TextBox ID="txtHoTen" runat="server"></asp:TextBox></span>
                                    </div>
                                    <div>
                                        <span>
                                            <label>E-MAIL</label></span>
                                        <span>
                                            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></span>
                                    </div>
                                    <div>
                                        <span>
                                            <label>MOBILE</label></span>
                                        <span>
                                            <asp:TextBox ID="txtDienThoai" runat="server"></asp:TextBox></span>
                                    </div>
                                    <div>
                                        <span>
                                            <label>COMMENT</label></span>
                                        <span>
                                            <asp:TextBox ID="txtNoiDung" runat="server" TextMode="MultiLine"></asp:TextBox></span>
                                    </div>
                                    <div style="height: auto; color: Red; font-style: italic;">

                                        <asp:Literal ID="lblThongBao" runat="server"></asp:Literal>

                                    </div>
                                    <div>
                                        <span>
                                            <asp:Button runat="server" Text="Send" OnClick="Unnamed1_Click" /></span>
                                    </div>
                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer">
                <div class="box1">
                    <h4>What We Do</h4>
                    <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. ions from the 1914 translation  below for those  by H. Rackham</p>
                    <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those The standard chunk of Lorem Ipsum used since the 1500s is reproduced</p>
                </div>
                <div class="box1">
                    <h4>Categories</h4>
                    <nav>
                        <ul>
                            <li><a href="">The standard chunk of Lorem Ipsum used since </a></li>
                            <li><a href="">Duis a augue ac libero euismod viverra sitth</a></li>
                            <li><a href="">Duis a augue ac libero euismod viverra sit </a></li>
                            <li><a href="">The standard chunk of Lorem Ipsum used since </a></li>
                            <li><a href="">Duis a augue ac libero euismod viverra sitth</a></li>
                            <li><a href="">Duis a augue ac libero euismod viverra sit </a></li>
                        </ul>
                    </nav>
                </div>
                <div class="box3">
                    <div class="f-grid">
                        <h2>Get In Touch</h2>
                        <div class="top-search-social-nav">
                            <ul>
                                <li class="active"><a href="#">
                                    <img src="images/facebook.png" title="Facebook" /></a></li>
                                <li><a href="#">
                                    <img src="images/twitter.png" title="Twitter" /></a></li>
                                <li><a href="#">
                                    <img src="images/gpluse.png" title="Googlepluse" /></a></li>
                                <li><a href="#">
                                    <img src="images/rss.png" title="Rss" /></a></li>
                                <div class="clear"></div>
                            </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
            <div class="footer1">
                <p class="link"><span>&copy; 2013 Decorator. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></span></p>
            </div>
        </div>
    </body>
</asp:Content>
