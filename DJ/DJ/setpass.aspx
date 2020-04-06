<%@ Page Language="C#" AutoEventWireup="true" CodeFile="setpass.aspx.cs" Inherits="setpass" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link  href="CSS/sjxx.css" rel="stylesheet" />
     <style type="text/css">
        #HyperLink3{
             color: #00b4aa;
        }
        #TextBox1{
            background:transparent;border:1px solid #e5e5e5;
            margin-left:5%;
        }
         #TextBox2{
            background:transparent;border:1px solid #e5e5e5;
            margin-left:5%;
        }
          #TextBox3{
            background:transparent;border:1px solid #e5e5e5;
            margin-left:5%;
        }
          #Button1{
              background-color:#00b4aa;
     font-size:12pt;
     border: 0px #93bee2 solid;
     border-bottom: #93bee2 1px solid;
     border-left: #93bee2 1px solid;
     border-right: #93bee2 1px solid;
     border-top: #93bee2 1px solid;
    border-radius:5px;/*圆角按钮*/
    margin-left:5%;

          }
          *{list-style:none;}
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
                
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/index.aspx"  font-underline="false" ForeColor="Black"   style="margin-left: 5%" >首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/management.aspx" font-underline="false"  style="margin-left: 5%" ForeColor="Black" >职位管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Resume.aspx" font-underline="false" ForeColor="Black"  style="margin-left: 5%">简历管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="Black"  font-underline="false" NavigateUrl="~/mynews.aspx"  style="margin-left: 5%">消息</asp:HyperLink>
              
                
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
        
        <asp:Panel ID="Panel3" runat="server" BackColor="#F0F0F0" Height="870px">
            <hr style=" color:#e5e5e5" />
            <asp:Panel ID="Panel4" runat="server" Height="190px" Width="200px" BackColor="white">
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" ForeColor="Black" font-underline="false" NavigateUrl="~/myset.aspx"  runat="server">个人信息</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" ForeColor="Black" font-underline="false" NavigateUrl="~/mygs.aspx" runat="server">我的公司</asp:HyperLink>
        </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" Height="200px" Width="200px" BackColor="white">
                <br />
                <asp:HyperLink ID="HyperLink3" font-underline="false" NavigateUrl="~/setpass.aspx" runat="server">修改密码</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink4" ForeColor="Black" font-underline="false" NavigateUrl="~/myphoto.aspx" runat="server">修改头像</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink5" ForeColor="Black" font-underline="false" NavigateUrl="~/mynews.aspx" runat="server">消息通知</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink6" ForeColor="Black" font-underline="false" NavigateUrl="~/login.aspx" runat="server">退出登录</asp:HyperLink>
        </asp:Panel>
            <asp:Panel ID="Panel6" runat="server" Height="500px" Width="800px" BackColor="white">
                <br />
                <asp:Label ID="Label8" runat="server" Text="修改密码" Font-Size="25px" ></asp:Label>
                <br />
                <br />
               
                <hr />
                <br />
                
                &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*原密码"></asp:Label>
                
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Height="30px" Width="180px" Font-Size="Medium"></asp:TextBox>

                 <br />
                 <br />
                &nbsp;&nbsp;<asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*新密码"></asp:Label>
                
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Height="30px" Width="180px" Font-Size="Medium"></asp:TextBox>

                 <br />
                 <br />
                &nbsp;&nbsp;<asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*再次输入新密码"></asp:Label>
                
                <br />
                <asp:TextBox ID="TextBox3" runat="server" Height="30px" Width="180px" Font-Size="Medium"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button1" ForeColor=" white" runat="server" Text="确认修改" Height="30px" Width="100px" />
        </asp:Panel>
            </asp:Panel>
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
