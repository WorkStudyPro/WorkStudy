<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resume2.aspx.cs" Inherits="Resume2" %>

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
  
         #Image发布兼职{
                 margin-left: 41%;
    margin-top: 32%;
    margin-bottom: 6%;
         }
      

        </style>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/image/图片 3.png" Width="315px" ImageAlign="Middle" />
                
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/index.aspx"  font-underline="false" ForeColor="Black"  style="margin-left: 5%" >首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/management.aspx" font-underline="false" ForeColor="Black"  style="margin-left: 5%" >职位管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Resume.aspx" font-underline="false" ForeColor="#00b4aa"  style="margin-left: 5%">简历管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="Black"  font-underline="false" NavigateUrl="~/mynews.aspx"  style="margin-left: 5%">消息</asp:HyperLink>
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
            <asp:HyperLink ID="HyperLinks" runat="server" ForeColor="Black" font-underline="false" NavigateUrl="~/Resume.aspx" >待录取</asp:HyperLink>
            <asp:HyperLink ID="HyperLinkss" runat="server"  ForeColor="#00b4aa" NavigateUrl="~/Resume2.aspx" font-underline="false">已完成</asp:HyperLink>
            <hr style="width:860px" />
            <br />
            <%--中间菜单--%>
            <div id="divs">
             <asp:Image ID="Image发布兼职" runat="server" ImageUrl="~/image/发布兼职logo.png" />        
            </div>
          </div>
    </form></body>
</html>
