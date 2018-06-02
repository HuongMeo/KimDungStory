<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Project3.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="content-bg">
        <div class="grid-list-main">
            <div class="grid-list-btm">
                <h4>Tác giả KIM DUNG</h4>
                <p class="para-tp">Kim Dung (sinh ngày 6 tháng 2 năm 1924) là một trong những nhà văn ảnh hưởng nhất của văn học Trung Quốc hiện đại. Ông còn là người đồng sáng lập của nhật báo Hồng Kông Minh Báo, ra đời năm 1959 và là tổng biên tập đầu tiên của tờ báo này.</p>
                <p class="para-tp">Từ năm 1955 đến 1972 ông đã viết tổng cộng 15 cuốn tiểu thuyết. Sự nổi tiếng của những bộ truyện đó khiến ông được coi là người viết tiểu thuyết võ hiệp thành công nhất. 300 triệu bản in (chưa tính một lượng rất lớn những bản lậu) đã đến tay độc giả của Trung Hoa đại lục, Hồng Kông, Đài Loan, châu Á và đã được dịch ra các thứ tiếng Việt, Hàn, Nhật, Thái, Anh, Pháp, Indonesia. Tác phẩm của ông đã được chuyển thể thành phim truyền hình, trò chơi điện tử.</p>
                <p class="para-tp">Tên ông được đặt cho tiểu hành tinh 10930 Jinyong (1998 CR2), là tiểu hành tinh được tìm ra trùng với ngày sinh âm lịch của ông (6 tháng 2).[2] Tháng 2 năm 2006, ông được độc giả bầu là nhà văn được yêu thích nhất Trung Quốc. Ông là người rất yêu thiên nhiên yêu động vật, đặc biệt ông có nuôi một con chó Trùng Khánh rất quý</p>
                <div class="readmore">
                        <asp:button runat="server" Cssclass="btn btn-2 btn-2f" Text="Readmore" OnClick="Unnamed1_Click"></asp:button>
                </div>
            </div>
            <div class="grid-list-pic">
                <img src="Temp/images/tacgia.jpg" alt="">
            </div>
            <div class="clear"></div>
        </div>

        <div class="content">
            <div class="text1">
                <h2>My website</h2>
            </div>
            <div class="banner">
                <img src="Temp/images/Chu_Ba_Thong.jpg" alt="" <%--class="auto-style3"--%>>
            </div>
            <div class="text-para">
            <p >Chào mừng các bạn đến với trang web đọc truyện online của chúng tôi. Chúng tôi hi vọng được chia sẻ cùng các bạn niềm đam mê và sở thích đọc truyện kiếm hiệp của Kim Dung. Trang web luôn cập nhập đầy đủ nội dung từng chương truyện, dưới đây là số truyện hiện có, mời các bạn đón đọc. </p>
            </div>
                <div class="text-para">
                <p>1. Thư kiếm ân cừu lục</p>
                <p>2. Bích huyết kiếm</p>
                <p>3. Xạ điêu anh hùng truyện</p>
                <p>4. Thần điêu hiệp lữ<p>5. Tuyết sơn phi hồ</p>
                <p>6. Bạch mã khiếu tây phong</p>
                <p>7. Uyên Ương đao</p>
                <p>8. Ỷ thiên Đồ long kí</p>
                <p>9. Liên thành quyết</p>
                <p>10. Hiệp khách hành</p>
                <p>11. Tiếu ngạo giang hồ</p>
                <p>12. Lộc Đỉnh kí</p>
                <p>13. Việt nữ kiếm</p>

                <%--<p>Lorem ipsum dolor sit amet,<span>consectetur adipisicing</span>labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. <span>ipsum dolor sit amet,</span> consectetur adipisicing elit, sed do eiusmod tempor incididunt labore dolore magna aliqua.</p>--%>
            </div>
            <br />
            <div class="readmore">
                <asp:button runat="server" Cssclass="btn btn-2 btn-2f" Text="Readmore" OnClick="Unnamed2_Click" ></asp:button>
            </div>
        </div>
        <%--<div class="sidebar">
		<div class="text1">
			<h2>Categories</h2>
		</div>
		<div class="text1-nav">
		<ul>
			<li><a href="">The standard chunk of Lorem Ipsum used</a></li>
			<li><a href="">Duis a augue ac libero euismod viverra sitth</a></li>
			<li><a href="">The standard chunk of Lorem Ipsum used </a></li>
			<li><a href="">Duis a augue ac libero euismod viverra sitth</a></li>
			<li><a href="">The standard chunk of Lorem Ipsum used </a></li>
			<li><a href="">Duis a augue ac libero euismod viverra sitth</a></li>
			<li><a href="">The standard chunk of Lorem Ipsum used </a></li>
			<li><a href="">Duis a augue ac libero euismod viverra sitth</a></li>
			<li><a href="">The standard chunk of Lorem Ipsum used </a></li>
			<li><a href="">Duis a augue ac libero euismod viverra sitth</a></li>
			<li><a href="">The standard chunk of Lorem Ipsum used </a></li>
	    </ul>
	</div>
	</div>--%>
        <div class="clear"></div>
    </div>
</asp:Content>
