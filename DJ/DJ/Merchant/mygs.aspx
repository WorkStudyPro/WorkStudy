﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="mygs.aspx.cs" Inherits="mygs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="CSS/cssc.css" rel="stylesheet" />
    <style type="text/css">
        #HyperLink2 {
            color: #00b4aa;
        }

        #Panel3 {
            height: 870px;
            background: rgba(0,0,0,0);
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <canvas id="triangle-lost-in-space" resize="true"></canvas>
        <div>
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Merchant/index.aspx" Font-Underline="false" ForeColor="white" Style="margin-left: 5%">首页</asp:HyperLink>
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Merchant/management.aspx" Font-Underline="false" ForeColor="white" Style="margin-left: 5%">职位管理</asp:HyperLink>
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Merchant/Resume.aspx" Font-Underline="false" ForeColor="white" Style="margin-left: 5%">简历管理</asp:HyperLink>
                <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="white" Font-Underline="false" NavigateUrl="~/Merchant/mynews.aspx" Style="margin-left: 5%">消息</asp:HyperLink>
                <ul id="first">
                    <li>
                        <span></span>
                        <asp:Panel ID="Panel2" runat="server">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Merchant/image/账号.png" ImageAlign="Middle" Height="39px" Width="36px" />
                            <asp:Label ID="Label6" runat="server" ForeColor="white" Text="66666666"></asp:Label>
                            <img src="image/图标 18.svg" width="30px" height="30px" class="JT" />
                        </asp:Panel>
                        <ul id="second">
                            <br />
                            <asp:HyperLink ID="HyperLink11" NavigateUrl="~/Merchant/myset.aspx" ForeColor="white" Font-Underline="false" runat="server">基本信息</asp:HyperLink><br />
                            <br />
                            <asp:HyperLink ID="HyperLink12" runat="server" NavigateUrl="~/Merchant/mygs.aspx" ForeColor="white" Font-Underline="false">我的公司</asp:HyperLink><br />
                            <br />
                            <asp:HyperLink ID="HyperLink13" runat="server" NavigateUrl="~/Merchant/setpass.aspx" ForeColor="white" Font-Underline="false">修改密码</asp:HyperLink><br />
                            <br />
                            <asp:HyperLink ID="HyperLink14" runat="server" NavigateUrl="~/login.aspx" ForeColor="white" Font-Underline="false">退出</asp:HyperLink><br />
                            <br />
                        </ul>
                    </li>
                </ul>
            </asp:Panel>

        </div>
        <hr style="border: 0; height: 1px; background-color: aquamarine;" />

        <asp:Panel ID="Panel3" runat="server">

            <asp:Panel ID="Panel4" runat="server" Height="190px" Width="200px" BackColor="white">
                <br />
                <br />
                <asp:HyperLink ID="HyperLink1" ForeColor="Black" Font-Underline="false" NavigateUrl="~/Merchant/myset.aspx" runat="server">个人信息</asp:HyperLink>
                <br />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="false" NavigateUrl="~/Merchant/mygs.aspx">我的公司</asp:HyperLink>
            </asp:Panel>
            <asp:Panel ID="Panel5" runat="server" Height="200px" Width="200px" BackColor="white">
                <br />
                <br />
                <asp:HyperLink ID="HyperLink3" ForeColor="Black" Font-Underline="false" runat="server" NavigateUrl="~/Merchant/setpass.aspx">修改密码</asp:HyperLink>
                <br />
                <br />
                <asp:HyperLink ID="HyperLink5" ForeColor="Black" Font-Underline="false" runat="server" NavigateUrl="~/Merchant/mynews.aspx">消息通知</asp:HyperLink>
                <br />
                <br />

                <asp:HyperLink ID="HyperLink6" ForeColor="Black" Font-Underline="false" runat="server" NavigateUrl="~/login.aspx">退出登录</asp:HyperLink>
            </asp:Panel>
            <asp:Panel ID="Panel6" runat="server" Height="500px" Width="800px" BackColor="white">
                <br />
                <asp:Label ID="Label8" runat="server" ForeColor="#00b4aa" Text="我的公司" Font-Size="25px"></asp:Label>
                <br />
                <asp:Literal ID="Literal1" runat="server" Text="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(本页面信息仅供显示,不可修改！若需更改,请联系管理员进行审核，审核通过后才可修改!)"></asp:Literal>
                <br />
                <br />
                <asp:Label ID="gs" runat="server" Font-Size="21px" ForeColor="#00b4aa" Style="margin-left: 18%;" Text="公司名称："></asp:Label>
                <asp:Label ID="companyname" runat="server" Font-Size="21px" Style="margin-left: 5%;" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                <asp:Label ID="gs1" runat="server" Font-Size="21px" ForeColor="#00b4aa" Style="margin-left: 18%;" Text="公司地址："></asp:Label>
                <asp:Label ID="companyplace" runat="server" Font-Size="21px" Style="margin-left: 5%;" Text="Label"></asp:Label>

                <br />
                <br />
                <br />
                <asp:Label ID="gs2" runat="server" Font-Size="21px" ForeColor="#00b4aa" Style="margin-left: 18%;" Text="公司老板："></asp:Label>
                <asp:Label ID="companyboss" runat="server" Font-Size="21px" Style="margin-left: 5%;" Text="Label"></asp:Label>

                <br />
                <br />
                <br />
                <asp:Label ID="gs3" runat="server" Font-Size="21px" ForeColor="#00b4aa" Style="margin-left: 18%;" Text="老板电话："></asp:Label>
                <asp:Label ID="companybosstel" runat="server" Font-Size="21px" Style="margin-left: 5%;" Text="Label"></asp:Label>

                <br />
                <br />
                <br />
                <asp:Label ID="gs4" runat="server" Font-Size="21px" ForeColor="#00b4aa" Style="margin-left: 18%;" Text="公司星级："></asp:Label>
                <asp:Label ID="companystar" runat="server" Font-Size="21px" Style="margin-left: 5%;" Text="Label"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
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
