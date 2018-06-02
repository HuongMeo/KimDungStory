<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ChuongControl.ascx.cs" Inherits="Project3.User.Utilities.ChuongControl" %>
<%@ Register Src="~/User/Chuong/DSChuongControl.ascx" TagPrefix="uc1" TagName="DSChuongControl" %>
<%@ Register Src="~/User/Chuong/ThongTinTruyenControl.ascx" TagPrefix="uc3" TagName="ThongTinTruyenControl" %>
 
 <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Satisfy" />

<body>

<div style="height: 40px;"></div>

            <div class="categories">
                <h3 style="color: #ea4040;  font-family: Satisfy;
	                                        font-size: 35px;
	                                        font-style: normal;
	                                        font-variant: normal;
	                                        font-weight: 500;
	                                        line-height: 30px;">Mời bạn đón đọc bộ truyện : 

                </h3>
                <uc3:ThongTinTruyenControl runat="server" ID="ThongTinTruyenControl" />
            </div>
            <div class="clear"></div>
			<div class="header_bottom_left">				
				<div class="categories">
				  	<h3 style="color: /*#ea4040*/#dc2d21;  font-family: 'Times New Roman';
	                                            font-size: 35px;
	                                            font-style: normal;
	                                            font-variant: normal;
	                                            font-weight: 400;
	                                            line-height: 30px;">Mục Lục :</h3>
                  
                    <uc1:DSChuongControl runat="server" id="DSChuongControl" />
                    </div>					
	  	     </div>
			 <div class="header_bottom_right">	
                 <div class="categories">
                     <%--<uc2:TimKiemControl ID="TimKiemControl2" runat="server" />--%>
                 </div>
             </div>
		     <div class="clear"></div>
</body>
