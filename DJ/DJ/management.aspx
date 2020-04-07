<%@ Page Language="C#" AutoEventWireup="true" CodeFile="management.aspx.cs" Inherits="management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="CSS/sjxx.css" rel="stylesheet" />
    <style type="text/css">

        #divs{
            width:900px;
            height:680px;
            margin-left:26%;
            background: white;
            border-radius:5px;
        }
      
        #divv{
           height: 870px;
    background: rgba(0,0,0,0);
           
        }

        #HyperLinks{
            margin-left:28%;
        }
         #HyperLinkss{
            margin-left:2%;
        }
          #HyperLinksss{
            margin-left:2%;
        }
           #HyperLinkssss{
            margin-left:2%;
        }
         #Image发布兼职{
                 margin-left: 41%;
    margin-top: 32%;
    margin-bottom: 6%;
         }
         #Button发布兼职{
      width: 132px;
    height: 40px;
    line-height: 40px;
    margin-left: 20%;
    background-color: #1ecdb9;
    border-radius: 6px;
    color: #fff;
    cursor: pointer;
         }
         *{
             list-style:none;
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
            canvas {
            width: 100%;
            height: 100%;
           position:absolute;
           z-index:-1;
        }
            body{
            margin:0;
	overflow: hidden;
        }
        </style>
</head>
<body>
   <form id="form1" runat="server">
       <canvas id="triangle-lost-in-space" resize="true"></canvas>
       <div>
           <br /><br />
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/index.aspx"  font-underline="false"  ForeColor="white"   style="margin-left: 5%" >首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/management.aspx" font-underline="false" ForeColor="#00b4aa"  style="margin-left: 5%"  >职位管理</asp:HyperLink>
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
        <div id="divv">
            
            
            <br />
            <asp:HyperLink ID="HyperLinks" runat="server" ForeColor="#00b4aa">招聘中</asp:HyperLink>
            <asp:HyperLink ID="HyperLinkss" runat="server" ForeColor="white" NavigateUrl="~/management2.aspx" font-underline="false">已结束</asp:HyperLink>
            <asp:HyperLink ID="HyperLinksss" runat="server" ForeColor="white" NavigateUrl="~/management3.aspx" font-underline="false" >审核中</asp:HyperLink>
            <asp:HyperLink ID="HyperLinkssss" runat="server" ForeColor="white" NavigateUrl="~/management4.aspx" font-underline="false">审核驳回</asp:HyperLink>
             <asp:Button ID="Button发布兼职" runat="server" Text="发布兼职" OnClick="Button发布兼职_Click"  />
            <hr style="width:860px" />
            <br />
            <%--中间菜单--%>
            <div id="divs">
             <asp:Image ID="Image发布兼职" runat="server" ImageUrl="~/image/发布兼职logo.png" />        
            </div>
          </div>
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
