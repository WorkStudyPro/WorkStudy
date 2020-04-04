<%@ Page Language="C#" AutoEventWireup="true" CodeFile="management.aspx.cs" Inherits="management" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="sjxx.css" rel="stylesheet" />
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

        </style>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/image/图片 3.png" Width="315px" ImageAlign="Middle" />
                
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/index.aspx"  font-underline="false" ForeColor="Black"  style="margin-left: 5%" >首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/management.aspx" font-underline="false"  style="margin-left: 5%" ForeColor="#00b4aa">职位管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink9" runat="server"  style="margin-left: 5%">简历管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="Black"  font-underline="false" NavigateUrl="~/mynews.aspx"  style="margin-left: 5%">消息</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink11" runat="server"  style="margin-left: 5%">招聘</asp:HyperLink>
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
            <asp:HyperLink ID="HyperLinks" runat="server" ForeColor="#00b4aa">招聘中</asp:HyperLink>
            <asp:HyperLink ID="HyperLinkss" runat="server" ForeColor="Black" NavigateUrl="~/management2.aspx" font-underline="false">已结束</asp:HyperLink>
            <asp:HyperLink ID="HyperLinksss" runat="server" ForeColor="Black" NavigateUrl="~/management3.aspx" font-underline="false" >审核中</asp:HyperLink>
            <asp:HyperLink ID="HyperLinkssss" runat="server" ForeColor="Black" NavigateUrl="~/management4.aspx" font-underline="false">审核驳回</asp:HyperLink>
             <asp:Button ID="Button发布兼职" runat="server" Text="发布兼职"  />
            <hr style="width:860px" />
            <br />
            <%--中间菜单--%>
            <div id="divs">
             <asp:Image ID="Image发布兼职" runat="server" ImageUrl="~/image/发布兼职logo.png" />        
            </div>
          </div>
    </form>
</body>
</html>
