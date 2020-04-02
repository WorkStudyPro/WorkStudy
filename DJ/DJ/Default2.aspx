<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Panel2{
            margin-top:18px;
                float:right;
        }
        #Image2{
            margin-top:-7%;
        }
        #Panel4{
            margin-left: 20%;
    margin-top: 10%;
        }
    </style>
</head>
<body style="height: 84px">
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
        
        <asp:Panel ID="Panel3" runat="server" BackColor="#e5e5e5" Height="897px">
            <hr style="background-color: #00FFFF" />
            <asp:Panel ID="Panel4" runat="server" Height="200px" Width="200px" BackColor="#79D62E">
                <asp:Label ID="Label8" runat="server" Text="个人信息"></asp:Label>
                <asp:Label ID="Label9" runat="server" Text="我的公司"></asp:Label>
        </asp:Panel>
        </asp:Panel>
    </form>
</body>
</html>
