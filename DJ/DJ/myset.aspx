﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myset.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <link href="CSS/sjxx.css" rel="stylesheet" />
 <style type="text/css">
        #HyperLink1{
             color: #00b4aa;
        }
         *{
             list-style:none;
         }
          body{
            margin:0;
	overflow: hidden;
        }
          #second {
    color: black;
    display: none;
    margin-left: 87%;
    position:relative;
    z-index: 999;
    width: 130px;
    background: rgba(0,0,0,0.3);
    overflow-y: scroll;
    box-shadow: -5px 0 10px rgba(0,0,0,.1), 0 0 0 rgba(0,0,0,.1), 0 5px 10px rgba(0,0,0,.1), 5px 0 10px rgba(0,0,0,.1);
}
        #Panel3 {
    height: 870px;
    background-color: rgba(0,0,0,0);
}
        canvas {
            width: 100%;
            height: 100%;
           position:absolute;
           z-index:-1;
        }
    </style>
</head>
<body style="height: 84px">
    <form id="form1" runat="server">
       <canvas id="triangle-lost-in-space" resize="true"></canvas>
       <div>
           <br /><br />
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/index.aspx"  font-underline="false" ForeColor="white"   style="margin-left: 5%" >首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/management.aspx" font-underline="false"  style="margin-left: 5%" ForeColor="white" >职位管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Resume.aspx" font-underline="false" ForeColor="white"  style="margin-left: 5%">简历管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="white"  font-underline="false" NavigateUrl="~/mynews.aspx"  style="margin-left: 5%">消息</asp:HyperLink>
                    <ul id="first">
			        <li>			
				<span></span>
                        <asp:Panel ID="Panel2" runat="server" >
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/账号.png" ImageAlign="Middle" Height="49px" Width="36px" />
                    <asp:Label ID="Label6" runat="server" ForeColor="white" Text="18582409158"></asp:Label>
                    &nbsp;&nbsp;
                            <asp:Label ID="kong" runat="server" Text=">"></asp:Label>
                      </asp:Panel>
			   <ul id="second"><br />
                   <asp:HyperLink ID="HyperLink11" NavigateUrl="~/myset.aspx" ForeColor="white" font-underline="false"  runat="server">基本信息</asp:HyperLink><br /><br />
			   	<asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/mygs.aspx" ForeColor="white" font-underline="false">我的公司</asp:HyperLink><br /><br />
                   <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/setpass.aspx" ForeColor="white" font-underline="false">修改密码</asp:HyperLink><br /><br />
                   <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/login.aspx" ForeColor="white" font-underline="false">退出</asp:HyperLink><br /><br />
              </ul>
			 </li>
                        </ul>
                </asp:Panel>
        </div>
            <hr style="border:0;height:1px;background-color:aquamarine;"/>
        
        <asp:Panel ID="Panel3" runat="server">
            
            <asp:Panel ID="Panel4" runat="server" Height="190px" Width="200px" BackColor="white">
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" font-underline="false" NavigateUrl="~/myset.aspx" runat="server">个人信息</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" ForeColor="Black"  font-underline="false" runat="server" NavigateUrl="~/mygs.aspx">我的公司</asp:HyperLink>
        </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" Height="200px" Width="200px" BackColor="white">
                <br />
                <asp:HyperLink ID="HyperLink3" ForeColor="Black" font-underline="false" runat="server" NavigateUrl="~/setpass.aspx">修改密码</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink4" ForeColor="Black" font-underline="false" runat="server" NavigateUrl="~/myphoto.aspx">修改头像</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink5" ForeColor="Black" font-underline="false" runat="server" NavigateUrl="~/mynews.aspx">消息通知</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink6" ForeColor="Black" font-underline="false" runat="server" NavigateUrl="~/login.aspx">退出登录</asp:HyperLink>
        </asp:Panel>
            <asp:Panel ID="Panel6" runat="server" Height="500px" Width="800px" BackColor="white">
                <br />
                <asp:Label ID="Label8" runat="server" Text="基本信息" Font-Size="25px" ></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="商家工号" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label10" runat="server" Text="20200312" Font-Size="17px"></asp:Label>
                <hr style=" color:#e5e5e5" />
               
                <asp:Label ID="Label11" runat="server" Text="姓名" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label12" runat="server" Text="王玺" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label13" runat="server" Text="更改"  Font-Size="17px" ForeColor="#00b4aa"></asp:Label>
            <hr style=" color:#e5e5e5" />
                 <asp:Label ID="Label14" runat="server" Text="性别" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label15" runat="server" Text="男" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label16" runat="server" Text="更改"  Font-Size="17px" ForeColor="#00b4aa"></asp:Label>
            <hr style=" color:#e5e5e5" />
                 <asp:Label ID="Label17" runat="server" Text="电话号码" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label18" runat="server" Text="18582409158" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label19" runat="server" Text="更改"  Font-Size="17px" ForeColor="#00b4aa"></asp:Label>
            <hr style=" color:#e5e5e5" />
                 <asp:Label ID="Label20" runat="server" Text="微信号" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label21" runat="server" Text="cici2020" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label22" runat="server" Text="更改"  Font-Size="17px" ForeColor="#00b4aa"></asp:Label>
            <hr style=" color:#e5e5e5" />
                 <asp:Label ID="Label23" runat="server" Text="电子邮箱" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label24" runat="server" Text="787406408@qq.com" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label25" runat="server" Text="更改"  Font-Size="17px" ForeColor="#00b4aa"></asp:Label>
            <hr style=" color:#e5e5e5" />
                  <asp:Label ID="Label26" runat="server" Text="店铺地址" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label27" runat="server" Text="四川工程职业技术学院工农村" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label28" runat="server" Text="更改"  Font-Size="17px" ForeColor="#00b4aa"></asp:Label>
            <hr style=" color:#e5e5e5" />
                 
                  <asp:Label ID="Label29" runat="server" Text="上次登录" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label30" runat="server" Text="2020年4月2日12:56:38" ForeColor="#00b4aa" Font-Size="17px"></asp:Label>
               
            </asp:Panel>
        </asp:Panel>
    </form>
    <script src="js/jquery-3.4.1.min.js"></script>
	  
	  <script src="js/index.js"></script>
	  <script>
          $(function () {
              //监听事件
              $("#first>li").click(function () {

                  $(this).children("ul").slideToggle();
                  $(this).children("span1").toggleClass("current");

                  //排他
                  $(this).siblings().children("ul").slideUp();
                  $(this).siblings().children("span1").removeClass("current");
                  //end()回到当前节点的上级节点

                  // $(this).children("ul").slideToggle().end().siblings().children("ul").slideUp();

                  // $(this).children("span").toggleClass("current").end().siblings().children("span").removeClass("current");

              })

          })
		  </script>
     
    

    <script src="js/paper-full.min.js"></script>
    <script src="js/fly.js"></script>
</body>
</html>
