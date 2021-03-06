﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myset.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
  <link href="CSS/cssc.css" rel="stylesheet" />
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/sweetalert-dev.js"></script>
    <link href="CSS/sweetalert.css" rel="stylesheet" />

        <style type="text/css">
        #HyperLink1{
             color: #00b4aa;
        }
        #Panel3 {
    height: 870px;
    background: rgba(0,0,0,0);
}
        #GG,#GG2,#GG3,#GG5,#GG6{
             background-color: Transparent; 
            border-style: none;    
            outline: none; 
            cursor:pointer;
            float: right;
            margin-right: 5%;
        }
        #Button1,#Button2,#Button3,#Button5,#Button6{
            background-color: Transparent; 
            border-style: none;    
            outline: none; 
            cursor:pointer;
            float: right;
            margin-right: 5%;
        }
        #cancel,#cancel2,#cancel3,#cancel5,#cancel6{
            background-color: Transparent; 
            border-style: none;    
            outline: none; 
            cursor:pointer;
            float: right;
            margin-right: 5%;
        }
        #Name,#Sex{
            margin-left:9%;
        } 
        #Tel,#Mail,#Home{
            margin-left:38px;
        }
    </style>

    
</head>
<body style="height: 84px">
    <form id="form1" runat="server">
       <canvas id="triangle-lost-in-space" resize="true"></canvas>
       <div>
           <br /><br />
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Merchant/index.aspx"  font-underline="false" ForeColor="white"   style="margin-left: 5%" >首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Merchant/management.aspx" font-underline="false"  style="margin-left: 5%" ForeColor="white" >职位管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Merchant/Resume.aspx" font-underline="false" ForeColor="white"  style="margin-left: 5%">简历管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="white"  font-underline="false" NavigateUrl="~/Merchant/mynews.aspx"  style="margin-left: 5%">消息</asp:HyperLink>
                    <ul id="first">
			        <li>			
				<span></span>
                        <asp:Panel ID="Panel2" runat="server" >
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Merchant/image/账号.png" ImageAlign="Middle" Height="39px" Width="36px" />
                    <asp:Label ID="Label6" runat="server" ForeColor="white" Text="66666666"></asp:Label>
                   <img src="image/图标%2018.svg" width="30px" height="30px" class="JT"/>
                      </asp:Panel>
			   <ul id="second"><br />
                   <asp:HyperLink ID="HyperLink11" NavigateUrl="~/Merchant/myset.aspx" ForeColor="white" font-underline="false"  runat="server">基本信息</asp:HyperLink><br /><br />
			   	<asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Merchant/mygs.aspx" ForeColor="white" font-underline="false">我的公司</asp:HyperLink><br /><br />
                   <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Merchant/setpass.aspx" ForeColor="white" font-underline="false">修改密码</asp:HyperLink><br /><br />
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
                <asp:HyperLink ID="HyperLink1" font-underline="false" NavigateUrl="~/Merchant/myset.aspx" runat="server">个人信息</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" ForeColor="Black"  font-underline="false" runat="server" NavigateUrl="~/Merchant/mygs.aspx">我的公司</asp:HyperLink>
        </asp:Panel>
           <asp:Panel ID="Panel5" runat="server" Height="200px" Width="200px" BackColor="white">
                <br />
                <br />
                <asp:HyperLink ID="HyperLink3" ForeColor="Black" font-underline="false" runat="server" NavigateUrl="~/Merchant/setpass.aspx">修改密码</asp:HyperLink>
                <br />
                
                <br />
                <asp:HyperLink ID="HyperLink5" ForeColor="Black" font-underline="false" runat="server" NavigateUrl="~/Merchant/mynews.aspx">消息通知</asp:HyperLink>
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
                <asp:Label ID="Label10" runat="server" Text="20200312" ForeColor="#00b4aa" Font-Size="17px"></asp:Label>
                <hr style=" color:#e5e5e5" />
               
                <asp:Label ID="Label11" runat="server" Text="姓名" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label12" runat="server" Text="" ForeColor="#00b4aa" Font-Size="17px"></asp:Label>
                <asp:TextBox ID="Name" runat="server" MaxLength="6" Placeholder="字符长度不超过6" Visible="False"></asp:TextBox>
               <asp:Button ID="GG" runat="server" Font-Size="17px" ForeColor="#00b4aa" Text="更改" OnClick="GG_Click" />
                <asp:Button ID="cancel" Font-Size="17px" ForeColor="#00b4aa" runat="server" Text="取消" OnClick="Cancel_Click" Visible="False" />
                <asp:Button ID="Button1" Font-Size="17px" ForeColor="#00b4aa" runat="server" Text="保存" OnClick="Button1_Click" Visible="False" />
            
                
                <hr style=" color:#e5e5e5" />
                 <asp:Label ID="Label14" runat="server" Text="性别" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label15" runat="server" Text="男" ForeColor="#00b4aa" Font-Size="17px"></asp:Label>
                <asp:TextBox ID="Sex" runat="server" MaxLength="6" Placeholder="字符长度不超过12" Visible="False"></asp:TextBox>
                <asp:Button ID="GG2" runat="server" Font-Size="17px" ForeColor="#00b4aa" Text="更改" OnClick="GG2_Click" />
                <asp:Button ID="cancel2" Font-Size="17px" ForeColor="#00b4aa" runat="server" Text="取消" OnClick="Cancel2_Click" Visible="False" />
                <asp:Button ID="Button2" Font-Size="17px" ForeColor="#00b4aa" runat="server" Text="保存" OnClick="Button2_Click" Visible="False" />
                 
                
                <hr style=" color:#e5e5e5" />
                 <asp:Label ID="Label17" runat="server" Text="电话号码" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label18" runat="server" Text="18582409158" ForeColor="#00b4aa" Font-Size="17px"></asp:Label>
                <asp:TextBox ID="Tel" runat="server" MaxLength="11" Placeholder="号码长度不超过11" Visible="False"></asp:TextBox>
                <asp:Button ID="GG3" runat="server" Font-Size="17px" ForeColor="#00b4aa" Text="更改" OnClick="GG3_Click" />
                <asp:Button ID="cancel3" Font-Size="17px" ForeColor="#00b4aa" runat="server" Text="取消" OnClick="Cancel3_Click" Visible="False" />
                <asp:Button ID="Button3" Font-Size="17px" ForeColor="#00b4aa" runat="server" Text="保存" OnClick="Button3_Click" Visible="False" />
                
                
                <hr style=" color:#e5e5e5" />
                 <asp:Label ID="Label23" runat="server" Text="电子邮箱" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label24" runat="server" Text="787406408@qq.com" ForeColor="#00b4aa" Font-Size="17px"></asp:Label>
                <asp:TextBox ID="Mail" runat="server" MaxLength="25" Placeholder="字符长度不超过50" Visible="False"></asp:TextBox>
                <asp:Button ID="GG5" runat="server" Font-Size="17px" ForeColor="#00b4aa" Text="更改" OnClick="GG5_Click" />
                <asp:Button ID="cancel5" Font-Size="17px" ForeColor="#00b4aa" runat="server" Text="取消" OnClick="Cancel5_Click" Visible="False" />
                <asp:Button ID="Button5" Font-Size="17px" ForeColor="#00b4aa" runat="server" Text="保存" OnClick="Button5_Click" Visible="False"  />
                
                
                <hr style=" color:#e5e5e5" />
                  <asp:Label ID="Label26" runat="server" Text="店铺地址" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label27" runat="server" Text="四川工程职业技术学院工农村" ForeColor="#00b4aa" Font-Size="17px"></asp:Label>
                <asp:TextBox ID="Home" runat="server" MaxLength="25" Placeholder="字符长度不超过50" Visible="False"></asp:TextBox>
                <asp:Button ID="GG6" runat="server" Font-Size="17px" ForeColor="#00b4aa" Text="更改" OnClick="GG6_Click" />
                 <asp:Button ID="cancel6" Font-Size="17px" ForeColor="#00b4aa" runat="server" Text="取消" OnClick="Cancel6_Click" Visible="False" />
                <asp:Button ID="Button6" Font-Size="17px" ForeColor="#00b4aa" runat="server" Text="保存" OnClick="Button6_Click" Visible="False"  />
               
                
                <hr style=" color:#e5e5e5" />
                  <asp:Label ID="Label29" runat="server" Text="登录时间" Font-Size="17px"></asp:Label>
                <asp:Label ID="Label30" runat="server" Text="NULL" ForeColor="#00b4aa" Font-Size="17px"></asp:Label>
               
            </asp:Panel>
        </asp:Panel>
    </form>
    <script src="js/jquery-3.4.1.min.js"></script>
	  
	  <script src="js/index.js"></script>
	  <script>
          $(function () {
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
