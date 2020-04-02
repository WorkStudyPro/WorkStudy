<%@ Page Language="C#" AutoEventWireup="true" CodeFile="myset.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="sjxx.css" />
 <style type="text/css">
        #HyperLink1{
             color: #00b4aa;
        }
         
    </style>
</head>
<body style="height: 84px">
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/image/图片 3.png" Width="315px" ImageAlign="Middle" />
                
                <asp:HyperLink ID="HyperLink7" runat="server"   style="margin-left: 5%">首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server"  style="margin-left: 5%">职位管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink9" runat="server"  style="margin-left: 5%">简历管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="Black" font-underline="false" NavigateUrl="~/mynews.aspx"  style="margin-left: 5%">消息</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink11" runat="server"  style="margin-left: 5%">招聘</asp:HyperLink>
                <asp:Panel ID="Panel2" runat="server" Height="38px" style="margin-left: 5%" Width="196px" >
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/账号.png" ImageAlign="Middle" Height="49px" Width="36px" />
                    <asp:Label ID="Label6" runat="server" Text="18582409158"></asp:Label>
                    &nbsp;&nbsp;
                <asp:Image ID="Image4" runat="server" Height="34px" ImageAlign="Middle" ImageUrl="~/image/》.png" Width="39px" />
                </asp:Panel>
            </asp:Panel>
        </div>
        
        <asp:Panel ID="Panel3" runat="server" BackColor="#F0F0F0" Height="870px">
            <hr style=" color:#e5e5e5" />
            <asp:Panel ID="Panel4" runat="server" Height="200px" Width="200px" BackColor="white">
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" font-underline="false" runat="server">个人信息</asp:HyperLink>
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
</body>
</html>
