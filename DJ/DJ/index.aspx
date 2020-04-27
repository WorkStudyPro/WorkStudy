﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <link href="CSS/cssc.css" rel="stylesheet" />
    <link href="CSS/index.css" rel="stylesheet" />
    <style type="text/css">
         #Image发布兼职{
            margin-left: 41%;
            margin-top: 11%;
            margin-bottom: 6%;
         }
         #Button发布兼职{
            width: 132px;
            height: 40px;
            line-height: 40px;
            margin-left: -17%;
            background-color: #1ecdb9;
            border-radius: 6px;
            color: #fff;
            cursor: pointer;
         }
        
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <canvas id="triangle-lost-in-space" resize="true"></canvas>
         <div> <br /><br />
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/index.aspx"  font-underline="false" ForeColor="#00b4aa"   style="margin-left: 5%" >首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/management.aspx" font-underline="false"  style="margin-left: 5%" ForeColor="white" >职位管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Resume.aspx" font-underline="false" ForeColor="white"  style="margin-left: 5%">简历管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="white"  font-underline="false" NavigateUrl="~/mynews.aspx"  style="margin-left: 5%">消息</asp:HyperLink>
                    <ul id="first">
			        <li>			
				<span></span>
                        <asp:Panel ID="Panel2" runat="server" >
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/账号.png" ImageAlign="Middle" Height="39px" Width="36px" />
                    <asp:Label ID="Label6" runat="server" ForeColor="white" Text="66666666"></asp:Label>
                     <img src="image/图标%2018.svg" width="30px" height="30px" class="JT"/>
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
        <div id="divv">
           <hr style="border:0;height:1px;background-color:aquamarine;"/>
            <br />
            <br />
            <br />
            
        <div id="div0">
            <div id="div1">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/新报名1.png" ImageAlign="Middle" OnClick="ImageButton1_Click" />
                <div id="div2">
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" ForeColor="white" runat="server" Text="0" Font-Bold="true" Font-Size="25px"></asp:Label>    
               <br /> 
                    <asp:Label ID="Label2" ForeColor="white" runat="server" Text="新报名"></asp:Label>   
                    </div>
            </div>
            <div id="竖线" style="float:left;margin-top: 30px;width: 1px;height: 80px; background: darkgray;"></div> 
            <div id="div3">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/在招职位1.png" ImageAlign="Middle" OnClick="ImageButton2_Click" />
                <div id="div4">
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" ForeColor="white" runat="server" Text="0" Font-Bold="true" Font-Size="25px"></asp:Label>    
               <br /> 
                    <asp:Label ID="Label4" runat="server" ForeColor="white" Text="在招职位"></asp:Label>   
                    </div>
            </div>
            <div id="shuxian" style="float:left;margin-top: 30px;width: 1px;height: 80px; background: darkgray;"></div> 
            <div id="div5">
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/未读消息1.png" ImageAlign="Middle" OnClick="ImageButton3_Click" />
                <div id="div6">
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" ForeColor="white" runat="server" Text="0" Font-Bold="true" Font-Size="25px"></asp:Label>    
               <br /> 
                    <asp:Label ID="Label7" runat="server" ForeColor="white" Text="未读消息"></asp:Label>   
                    </div>
            </div>
        </div>
            <br />
            <br />
            
            <asp:HyperLink ID="HyperLinks" runat="server" ForeColor="#00b4aa">新报名</asp:HyperLink>
            <asp:HyperLink ID="HyperLinkss" runat="server" ForeColor="white" NavigateUrl="~/index-1.aspx" font-underline="false">在招兼职</asp:HyperLink>
            <br />
            <br />
            <%--中间菜单--%>
            <div id="divs">
               <asp:Image ID="Image发布兼职" runat="server" ImageUrl="~/image/发布兼职logo.png" />
                <asp:Button ID="Button发布兼职" runat="server" Text="发布兼职" OnClick="Button发布兼职_Click"  />
            </div>
            <%--右边菜单--%>
             <div id="right">
                
                 <br />
                <asp:Label ID="Labelmy" runat="server" ForeColor="#1ecdb9" Text="ID：" ></asp:Label>
                
                <asp:Label ID="Labelid" runat="server" ForeColor="white" Text="66666666"></asp:Label>
                 <br />
                 <br />
                <asp:Button ID="Button发布兼职2" runat="server" Text="发布兼职" OnClick="Button发布兼职2_Click" />
                 <asp:Button ID="Button我的信息" runat="server" Text="我的信息" OnClick="Button我的信息_Click" />

            </div>
          </div>

    </form>
     <script src="js/jquery-3.4.1.min.js"></script>
	  <script>
	  	$(function(){
	  		//监听事件
                var isTrue = false;
                $("#first>li").click(function () {
                    if (isTrue) {
                        $(this).find(".JT").css("transform", "rotate(0deg)");
                        isTrue = false;
                    }
                    else {
                        $(this).find(".JT").css("transform", "rotate(90deg)");
                        isTrue = true;
                    }
                    $(this).children("ul").slideToggle();
                    $(this).children("span1").toggleClass("current");
                })
                        //排他
                        $(this).siblings().children("ul").slideUp();
                        $(this).siblings().children("span1").removeClass("current");
				//end()回到当前节点的上级节点
				
				// $(this).children("ul").slideToggle().end().siblings().children("ul").slideUp();
				
				// $(this).children("span").toggleClass("current").end().siblings().children("span").removeClass("current");
			})
  		
			
		  </script>
    <script src="js/paper-full.min.js"></script>
    <script src="js/fly.js"></script>
</body>
</html>
