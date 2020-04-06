<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     
    <link href="CSS/sjxx.css" rel="stylesheet" />
    <style type="text/css">
        #div0{
            width:900px;
            height:140px;
            margin-left:20%;
            background-color:white;
            border-radius:5px;
        }
        #divs{
            width:900px;
            height:400px;
            margin-left:20%;
            background-color:white;
            border-radius:5px;
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

        #ImageButton1 {
            margin-top: 12%;
            margin-left: 22%;
        }
        #ImageButton2 {
            margin-top: 12%;
            margin-left: 22%;
        }
     #ImageButton3{
            margin-top: 12%;
    margin-left: 22%;
        }
         #div1{
           width:30%;
           height:140px;
          margin-left: 2%;
           float:left;
        }
        #div2{
                margin-left: 60%;
    margin-top: -23%;
        }
        #div3{
           width:30%;
           height:140px;
          float:left;
          margin-left: 4%;

        }
        #div4{
                margin-left: 60%;
    margin-top: -23%;
        }
        #div5{
           width:30%;
           height:140px;
          
             float:left;
             margin-left: 2%;

        }
        #div6{
                margin-left: 60%;
    margin-top: -23%;
        }
        #Label8{
            float:left;
            font-size:25px;
        }
        #HyperLinks{
            margin-left:21%;
        }
         #HyperLinkss{
            margin-left:2%;
        }
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
         #right{
             background-color:white;
             width:245px;
             height:260px;
             margin-left: 75%;
    margin-top: -32%;
         }
         #Button发布兼职2{
             display: block;
    width: 200px;
    height: 48px;
    line-height: 48px;
    text-align: center;
    border-radius: 6px;
    border: 1px solid #1ecdb9;
    font-size: 14px;
    color: #1ecdb9;
    margin-bottom: 25px;
    cursor: pointer;
    background-color:white;
    margin-left: 9%;
         }
         #Button我的信息{
             display: block;
    width: 200px;
    height: 48px;
    line-height: 48px;
    text-align: center;
    border-radius: 6px;
    border: 1px solid #1ecdb9;
    font-size: 14px;
    color: #1ecdb9;
    margin-bottom: 8px;
    cursor: pointer;
    background-color:white;
    margin-left: 9%;
         }
         #Labelmy{
                margin-left: 32%;
    font-size: larger;
    
         }
         #Labelid{margin-left: 22%;
    font-size: larger;

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
                
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/index.aspx"  font-underline="false" ForeColor="#00b4aa"   style="margin-left: 5%" >首页</asp:HyperLink>
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
        <div id="divv">
            <hr />
            <br />
            <br />
            <br />
            
        <div id="div0">
            <div id="div1">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/新报名.png" ImageAlign="Middle" OnClick="ImageButton1_Click" />
                <div id="div2">
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="0" Font-Bold="true" Font-Size="25px"></asp:Label>    
               <br /> 
                    <asp:Label ID="Label2" runat="server" Text="新报名"></asp:Label>   
                    </div>
            </div>
            <div id="竖线" style="float:left;margin-top: 30px;width: 1px;height: 80px; background: darkgray;"></div> 
            <div id="div3">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/在招职位.png" ImageAlign="Middle" OnClick="ImageButton2_Click" />
                <div id="div4">
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="0" Font-Bold="true" Font-Size="25px"></asp:Label>    
               <br /> 
                    <asp:Label ID="Label4" runat="server" Text="在招职位"></asp:Label>   
                    </div>
            </div>
            <div id="shuxian" style="float:left;margin-top: 30px;width: 1px;height: 80px; background: darkgray;"></div> 
            <div id="div5">
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/未读消息.png" ImageAlign="Middle" OnClick="ImageButton3_Click" />
                <div id="div6">
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="0" Font-Bold="true" Font-Size="25px"></asp:Label>    
               <br /> 
                    <asp:Label ID="Label7" runat="server" Text="未读消息"></asp:Label>   
                    </div>
            </div>
        </div>
            <br />
            <br />
            
            <asp:HyperLink ID="HyperLinks" runat="server" ForeColor="#00b4aa">新报名</asp:HyperLink>
            <asp:HyperLink ID="HyperLinkss" runat="server" ForeColor="Black" NavigateUrl="~/index-1.aspx" font-underline="false">在招兼职</asp:HyperLink>
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
                <asp:Label ID="Labelmy" runat="server" ForeColor="#1ecdb9" Text="当前账户：" ></asp:Label>
                <br />
                <asp:Label ID="Labelid" runat="server" Text="18582409158"></asp:Label>
                 <br />
                 <br />
                <asp:Button ID="Button发布兼职2"  runat="server" Text="发布兼职" OnClick="Button发布兼职2_Click" />
                 <asp:Button ID="Button我的信息" runat="server" Text="我的信息" OnClick="Button我的信息_Click" />

            </div>
          </div>

    </form>
     <script src="js/jquery-3.4.1.min.js"></script>
	  
	  <script>
	  	$(function(){
	  		//监听事件
	  		$("#first>li").click(function(){
				
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
