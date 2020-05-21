<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Job.aspx.cs" Inherits="Job" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/sweetalert-dev.js"></script>
    <link href="CSS/sweetalert.css" rel="stylesheet" />
    <link href="CSS/cssc.css" rel="stylesheet" />
    <link href="CSS/management.css" rel="stylesheet" />
    <style type="text/css">
        #Panel3 {
            height: 870px;
            background: rgba(0,0,0,0);
        }

        #Button发布兼职 {
            width: 132px;
            height: 40px;
            line-height: 40px;
            margin-left: 36%;
            background-color: #1ecdb9;
            border-radius: 6px;
            color: #fff;
            cursor: pointer;
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
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/Merchant/management.aspx" Font-Underline="false" Style="margin-left: 5%" ForeColor="white">职位管理</asp:HyperLink>
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Merchant/Resume.aspx" Font-Underline="false" ForeColor="white" Style="margin-left: 5%">简历管理</asp:HyperLink>
                <asp:HyperLink ID="HyperLink10" runat="server" ForeColor="white" Font-Underline="false" NavigateUrl="~/Merchant/mynews.aspx" Style="margin-left: 5%">消息</asp:HyperLink>
                <ul id="first">
                    <li>
                        <span></span>
                        <asp:Panel ID="Panel2" runat="server">
                            <asp:Image ID="Image2" runat="server" ImageUrl="~/Merchant/image/账号.png" ImageAlign="Middle" Height="39px" Width="36px" />
                            <asp:Label ID="Label6" runat="server" ForeColor="white" Text="66666666"></asp:Label>
                            <img src="image/图标%2018.svg" width="30px" height="30px" class="JT" />
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
        <br />
        <asp:Label ID="Label发布职位" ForeColor="White" runat="server" Text="发布职位"></asp:Label>
        <hr style="border: 0; height: 1px; width: 880px; margin-left: 508px; background-color: aquamarine;" />
        <br />
        <%--中间菜单--%>
        <div id="divs" style="width: 900px; height: 680px; margin-left: 26%; background: white; border-radius: 5px;">
            <br />
            <br />
            <div id="divss" style="background: rgba(0,0,0,0); width: 580px; margin-left: 160px; height: 600px;">
                <div id="信息" style="width: 580px; height: 20px;">
                    <div id="竖线" style="float: left; width: 5px; height: 25px; background: #1ecdb9;"></div>
                    &nbsp;&nbsp;
                    <asp:Label ID="L1" runat="server" Text="基本信息"></asp:Label>
                </div>
                <br />
                <br />
                <asp:Label ID="L2" runat="server" Text="岗位名称"></asp:Label>
                &nbsp;&nbsp;   &nbsp;&nbsp; 
                <asp:TextBox ID="box1" Text="请如实输入正确的工作岗位" onkeydown="if(event.keyCode == 13)event.returnValue = false;" onfocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){this.value=defaultValue;this.style.color='#CCCCCC'}" ForeColor="#CCCCCC" runat="server" Height="40px" Width="450px" AutoCompleteType="Disabled"></asp:TextBox>

                <br />
                <br />
                <asp:Label ID="L3" runat="server" Text="岗位介绍"></asp:Label>
                &nbsp;&nbsp;   &nbsp;&nbsp; 
                <asp:TextBox ID="box2" Text="请如实输入正确的工作介绍" onkeydown="if(event.keyCode == 13)event.returnValue = false;" onfocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){this.value=defaultValue;this.style.color='#CCCCCC'}" ForeColor="#CCCCCC" runat="server" Height="150px" Width="450px" AutoCompleteType="Disabled" TextMode="SingleLine"></asp:TextBox>

                <br />
                <br />
                <asp:Label ID="L4" runat="server" Text="工作时间"></asp:Label>
                &nbsp;&nbsp;   &nbsp;&nbsp; 
                <asp:TextBox ID="box3" AutoCompleteType="Disabled" Text="请输入正确的工作时间，如“周一至周五9:00-17:00”" onkeydown="if(event.keyCode == 13)event.returnValue = false;" onfocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){this.value=defaultValue;this.style.color='#CCCCCC'}" ForeColor="#CCCCCC" runat="server" Height="40px" Width="450px"></asp:TextBox>

                <br />
                <br />
                <asp:Label ID="L5" runat="server" Text="需求人数"></asp:Label>
                &nbsp;&nbsp;   &nbsp;&nbsp; 
                <asp:TextBox ID="box4" AutoCompleteType="Disabled" Text="请如实输入您的需求人数" onkeydown="if(event.keyCode == 13)event.returnValue = false;" onfocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){this.value=defaultValue;this.style.color='#CCCCCC'}" ForeColor="#CCCCCC" runat="server" Height="40px" Width="450px"></asp:TextBox>

                <br />
                <br />
                <asp:Label ID="L6" runat="server" Text="工资详情"></asp:Label>
                &nbsp;&nbsp;   &nbsp;&nbsp; 
                <asp:TextBox ID="box5" AutoCompleteType="Disabled" Text="每小时工资" onkeydown="if(event.keyCode == 13)event.returnValue = false;" onfocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){this.value=defaultValue;this.style.color='#CCCCCC'}" ForeColor="#CCCCCC" runat="server" Height="40px" Width="450px"></asp:TextBox>

                <br />
                <br />
                <asp:Label ID="L7" runat="server" Text="工作地点"></asp:Label>
                &nbsp;&nbsp;   &nbsp;&nbsp; 
                <asp:TextBox ID="box6" AutoCompleteType="Disabled" Text="请如实输入工作地点" onkeydown="if(event.keyCode == 13)event.returnValue = false;" onfocus="if(value==defaultValue){value='';this.style.color='#000'}" onBlur="if(!value){this.value=defaultValue;this.style.color='#CCCCCC'}" ForeColor="#CCCCCC" runat="server" Height="40px" Width="450px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button发布兼职" runat="server" Text="发布兼职" OnClick="Button发布兼职_Click" />
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
