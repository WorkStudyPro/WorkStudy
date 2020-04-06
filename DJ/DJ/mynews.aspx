<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mynews.aspx.cs" Inherits="mynews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <link href="CSS/sjxx.css" rel="stylesheet" />
    <style type="text/css">
        #div0{
            width:1200px;
            height:700px;
            margin-left:20%;
            background-color:white;
        }
        #div1{
            width:400px;
            height:700px;
            border-right:solid 1px #93bee2
        }
        #divv{
           height:870px;
            background-color:#F0F0F0;
           
        }
        #Image3{
            margin-left: 10%;
    margin-top: -2%;
        }
        #Image0{
   margin-top: -3%;
    margin-left: 30%;
        }
        *{
            list-style:none;
        }
         #second {
    color: black;
    display: none;
    margin-left: 87%;
    z-index: 999;
    position:relative;
    width: 130px;
    background: #fff;
    overflow-y: scroll;
    box-shadow: -5px 0 10px rgba(0,0,0,.1), 0 0 0 rgba(0,0,0,.1), 0 5px 10px rgba(0,0,0,.1), 5px 0 10px rgba(0,0,0,.1);
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/image/图片 3.png" Width="315px" ImageAlign="Middle" />
                
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/index.aspx"  font-underline="false"  ForeColor="Black"   style="margin-left: 5%" >首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/management.aspx" font-underline="false"  style="margin-left: 5%" ForeColor="Black" >职位管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Resume.aspx" font-underline="false" ForeColor="Black"  style="margin-left: 5%">简历管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink10" runat="server"   font-underline="false" ForeColor="#00b4aa" NavigateUrl="~/mynews.aspx"  style="margin-left: 5%">消息</asp:HyperLink>
              
                
                    <ul id="first">
			        <li>			
				<span></span>
                        <asp:Panel ID="Panel2" runat="server" >
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/账号.png" ImageAlign="Middle" Height="49px" Width="36px" />
                    <asp:Label ID="Label6" runat="server" Text="18582409158"></asp:Label>
                    &nbsp;&nbsp;
                <asp:Image ID="Imagee" runat="server" Height="34px" ImageAlign="Middle" ImageUrl="~/image/》.png" Width="39px" />
                      </asp:Panel>
			   <ul id="second"><br />
                   <asp:HyperLink ID="HyperLink11" NavigateUrl="~/myset.aspx" ForeColor="Black" font-underline="false"  runat="server">基本信息</asp:HyperLink><br /><br />
			   	<asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/mygs.aspx" ForeColor="Black" font-underline="false">我的公司</asp:HyperLink><br /><br />
                   <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/setpass.aspx" ForeColor="Black" font-underline="false">修改密码</asp:HyperLink><br /><br />
                   <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/login.aspx" ForeColor="Black" font-underline="false">退出</asp:HyperLink><br /><br />
              </ul>
			 </li>
                        </ul>
                </asp:Panel>
            
        </div>

        <div id="divv">
            <hr />
            <br />
            <br />
            <br />
            
        <div id="div0">
            <div id="div1">
                <br />
                <asp:Image ID="Image3" runat="server" ImageUrl="~/image/通知logo.png" Height="51px" Width="58px" ImageAlign="Middle" />
                
                <asp:Label ID="Label8" runat="server" Text="系统通知" Font-Size="17px"></asp:Label>
                <asp:Image ID="Image0" runat="server" Height="34px" ImageAlign="Middle" ImageUrl="~/image/》.png" Width="39px" />
            </div>
            
        </div>
          </div>

    </form>
    <script src="js/jquery-3.4.1.min.js"></script>
	  
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
</body>
</html>
