<%@ Page Language="C#" AutoEventWireup="true" CodeFile="management.aspx.cs" Inherits="management" %>

<%@ Register Src="~/work.ascx" TagPrefix="uc1" TagName="work" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="CSS/cssc.css" rel="stylesheet" />
    <link href="CSS/management.css" rel="stylesheet" />
    <link href="CSS/work.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <canvas id="triangle-lost-in-space" resize="true"></canvas>
        <div>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/index.aspx" Font-Underline="false" ForeColor="white" Style="margin-left: 5%">首页</asp:HyperLink>
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/management.aspx" Font-Underline="false" ForeColor="#00b4aa" Style="margin-left: 5%">职位管理</asp:HyperLink>
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Resume.aspx" Font-Underline="false" ForeColor="white" Style="margin-left: 5%">简历管理</asp:HyperLink>
                <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="white" Font-Underline="false" NavigateUrl="~/mynews.aspx" Style="margin-left: 5%">消息</asp:HyperLink>
                <ul id="first">
                    <li>
                        <span></span>
                        <asp:Panel ID="Panel2" runat="server">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/image/账号.png" ImageAlign="Middle" Height="39px" Width="36px" />
                            <asp:Label ID="Label6" runat="server" ForeColor="white" Text="66666666"></asp:Label>
                            <img src="image/图标%2018.svg" width="30px" height="30px" class="JT" />
                        </asp:Panel>
                        <ul id="second">
                            <br />
                            <asp:HyperLink ID="HyperLink11" NavigateUrl="~/myset.aspx" ForeColor="white" Font-Underline="false" runat="server">基本信息</asp:HyperLink><br />
                            <br />
                            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/mygs.aspx" ForeColor="white" Font-Underline="false">我的公司</asp:HyperLink><br />
                            <br />
                            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/setpass.aspx" ForeColor="white" Font-Underline="false">修改密码</asp:HyperLink><br />
                            <br />
                            <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/login.aspx" ForeColor="white" Font-Underline="false">退出</asp:HyperLink><br />
                            <br />
                        </ul>
                    </li>
                </ul>
            </asp:Panel>

        </div>
        <hr style="border: 0; height: 1px; background-color: aquamarine;" />
        <div id="divv">


            <br />
            <asp:HyperLink ID="HyperLinks" runat="server" ForeColor="#00b4aa">招聘中</asp:HyperLink>
            <asp:HyperLink ID="HyperLinkss" runat="server" ForeColor="white" NavigateUrl="~/management2.aspx" Font-Underline="false">已结束</asp:HyperLink>
            <asp:HyperLink ID="HyperLinksss" runat="server" ForeColor="white" NavigateUrl="~/management3.aspx" Font-Underline="false">审核中</asp:HyperLink>
            <asp:HyperLink ID="HyperLinkssss" runat="server" ForeColor="white" NavigateUrl="~/management4.aspx" Font-Underline="false">审核驳回</asp:HyperLink>
            <asp:Button ID="Button发布兼职" runat="server" Text="发布兼职" OnClick="Button发布兼职_Click" />
            <hr style="width: 860px" />
            <br />
            <%--中间菜单--%>
            <div id="divs">
                <div style="width: 870px; margin-left: 25px; position: absolute; margin-top: 15px; overflow-y: auto; overflow-x: hidden; height: 650px;">
                    
                    <asp:Panel ID="Panel3" runat="server"></asp:Panel>
                </div>
            </div>
        </div>
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
            
        })


    </script>
    <script src="js/paper-full.min.js"></script>
    <script src="js/fly.js"></script>
</body>
</html>
