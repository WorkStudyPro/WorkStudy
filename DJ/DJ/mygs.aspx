<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mygs.aspx.cs" Inherits="mygs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="sjxx.css" rel="stylesheet" />
    <style type="text/css">
        #HyperLink2{
             color: #00b4aa;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/image/图片 3.png" Width="315px" ImageAlign="Middle" />
                <asp:Label ID="Label1" runat="server" Text="首页" style="margin-left: 5%"></asp:Label>
                <asp:Label ID="Label2" runat="server" Text="职位管理" style="margin-left: 5%"></asp:Label>
                <asp:Label ID="Label3" runat="server" Text="简历管理" style="margin-left: 5%"></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="消息" style="margin-left: 5%"></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="招聘" style="margin-left: 5%"></asp:Label>
                <asp:Panel ID="Panel2" runat="server" Height="38px" style="margin-left: 5%" Width="196px" >
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/账号.png" ImageAlign="Middle" Height="49px" Width="36px" />
                    <asp:Label ID="Label6" runat="server" Text="18582409158"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="&gt;" Font-Bold="True" Font-Size="Larger"></asp:Label>
                </asp:Panel>
            </asp:Panel>
        </div>
        
        <asp:Panel ID="Panel3" runat="server" BackColor="#F0F0F0" Height="870px">
            <hr style=" color:#e5e5e5" />
            <asp:Panel ID="Panel4" runat="server" Height="200px" Width="200px" BackColor="white">
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1"  runat="server">个人信息</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server">我的公司</asp:HyperLink>
        </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" Height="200px" Width="200px" BackColor="white">
                <br />
                <asp:HyperLink ID="HyperLink3" runat="server">修改密码</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink4" runat="server">修改头像</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink5" runat="server">消息通知</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink6" runat="server">退出登录</asp:HyperLink>
        </asp:Panel>
            <asp:Panel ID="Panel6" runat="server" Height="500px" Width="800px" BackColor="white">
                <br />
                <asp:Label ID="Label8" runat="server" Text="我的公司" Font-Size="25px" ></asp:Label>
                <br />
                <br />
                <br />
                <br />
               
        </asp:Panel>
            </asp:Panel>
    </form>
</body>
</html>
