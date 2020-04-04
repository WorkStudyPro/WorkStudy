<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mynews.aspx.cs" Inherits="mynews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="sjxx.css" rel="stylesheet" />
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
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div>
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/image/图片 3.png" Width="315px" ImageAlign="Middle" />
                
                <asp:HyperLink ID="HyperLink7" runat="server" ForeColor="Black" font-underline="false" NavigateUrl="~/index.aspx"  style="margin-left: 5%">首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server" ForeColor="Black" font-underline="false" NavigateUrl="~/management.aspx"  style="margin-left: 5%">职位管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Resume.aspx" font-underline="false" ForeColor="Black"  style="margin-left: 5%">简历管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="#00b4aa" font-underline="false" NavigateUrl="~/mynews.aspx"  style="margin-left: 5%">消息</asp:HyperLink>
                <asp:Panel ID="Panel2" runat="server" Height="38px" style="margin-left: 5%" Width="196px" >
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/image/账号.png" ImageAlign="Middle" Height="49px" Width="36px" />
                    <asp:Label ID="Label6" runat="server" Text="18582409158"></asp:Label>
                    &nbsp;&nbsp;
                <asp:Image ID="Image4" runat="server" Height="34px" ImageAlign="Middle" ImageUrl="~/image/》.png" Width="39px" />
                </asp:Panel>
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
</body>
</html>
