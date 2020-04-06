<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Job.aspx.cs" Inherits="Job" %>

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
            background-color:white;
            border-radius:5px;
        }
      
        #divv{
           height:870px;
            background-color:#F0F0F0;
            
        }    
        #Label发布职位{
          margin-left: 46%;
    font-size: 25px;
        }
        #divss{
            background-color:white;
            width:580px;
            margin-left:160px;
            height:600px;
        }
        #L1{
            margin-top:20px;
        }
        #L2{
            margin-left:21px;
        }
         #L3{
            margin-left:21px;
        }
          #L4{
            margin-left:21px;
        }
           #L5{
            margin-left:21px;
        }
           #L6{
            margin-left:21px;
        }
           #L7{
            margin-left:21px;
        }
           #box1{
               background:transparent;border:1px solid #e5e5e5;
           }
           #box2{
               background:transparent;border:1px solid #e5e5e5;
           }
           #box3{
               background:transparent;border:1px solid #e5e5e5;
           }
           #box4{
               background:transparent;border:1px solid #e5e5e5;
           }
           #box5{
               background:transparent;border:1px solid #e5e5e5;
           }
           #box6{
                background:transparent;border:1px solid #e5e5e5;
           }
            #Button发布兼职{
      width: 132px;
    height: 40px;
    line-height: 40px;
    margin-left: 35%;
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
                
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/index.aspx"  font-underline="false" ForeColor="Black"  style="margin-left: 5%" >首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/management.aspx" font-underline="false"  style="margin-left: 5%" ForeColor="#00b4aa">职位管理</asp:HyperLink>
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
        <div id="divv">
            <hr />
            <br />
            
            <asp:Label ID="Label发布职位" runat="server" Text="发布职位"></asp:Label>
            
            <hr style="width:860px" />
            <br />
            <%--中间菜单--%>
            <div id="divs">
                <br />
                <br />
                <div id="divss">
                <div id="信息" style="width:580px; height:20px;">
            <div id="竖线" style="float:left;width: 5px;height: 25px; background:#1ecdb9;"></div>
            &nbsp;&nbsp; <asp:Label ID="L1" runat="server" Text="基本信息"></asp:Label>
                    </div>
                    <br /><br />
                <asp:Label ID="L2" runat="server" Text="岗位名称" ></asp:Label>
           &nbsp;&nbsp;   &nbsp;&nbsp;  <asp:TextBox ID="box1" runat="server" Height="40px" Width="450px"></asp:TextBox>

                    <br /><br />
                <asp:Label ID="L3" runat="server" Text="岗位介绍" ></asp:Label>
           &nbsp;&nbsp;   &nbsp;&nbsp;  <asp:TextBox ID="box2" runat="server"  Height="150px" Width="450px"></asp:TextBox>

                    <br /><br />
                <asp:Label ID="L4" runat="server" Text="工作时间" ></asp:Label>
           &nbsp;&nbsp;   &nbsp;&nbsp;  <asp:TextBox ID="box3" runat="server" Height="40px" Width="450px"></asp:TextBox>

                    <br /><br />
                <asp:Label ID="L5" runat="server" Text="需求人数" ></asp:Label>
           &nbsp;&nbsp;   &nbsp;&nbsp;  <asp:TextBox ID="box4" runat="server" Height="40px" Width="450px"></asp:TextBox>
                    

                <br /><br />
                <asp:Label ID="L6" runat="server" Text="工资详情" ></asp:Label>
           &nbsp;&nbsp;   &nbsp;&nbsp;  <asp:TextBox ID="box5" runat="server" Height="40px" Width="450px"></asp:TextBox>
                    

            <br /><br />
                <asp:Label ID="L7" runat="server" Text="工作地点" ></asp:Label>
           &nbsp;&nbsp;   &nbsp;&nbsp;  <asp:TextBox ID="box6" runat="server" Height="40px" Width="450px"></asp:TextBox>
                   <br /><br /> <asp:Button ID="Button发布兼职" runat="server" Text="发布兼职"  />
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
