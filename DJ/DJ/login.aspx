<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="Merchant/js/jquery-3.4.1.min.js"></script>
    <script src="Merchant/js/sweetalert-dev.js"></script>
    <link href="Merchant/CSS/sweetalert.css" rel="stylesheet" />
    <link href="Merchant/CSS/Login.css" rel="stylesheet" />
    <style type="text/css">
        #Button1 {
            margin-left: 35%;
            font-size: 20px;
            border: 1px solid;
            border-radius: 12px;
        }
    </style>
</head>
<body>
    <div class="stars"></div>
    <form id="form1" runat="server" defaultbutton="Button1">
        <asp:Panel ID="Panel1" runat="server" Height="360px" Width="400px">
            <asp:Panel ID="Panel2" runat="server">
                <asp:Label ID="Label1" runat="server" Text="勤工助学系统"></asp:Label>
            </asp:Panel>
            <asp:Image ID="Image1" runat="server" ImageUrl="Merchant/image/账号1.png" Height="24px" Width="22px" ImageAlign="Middle" />
            <asp:TextBox ID="TextBox1" runat="server" Height="23px" AutoCompleteType="Disabled"></asp:TextBox>
            <br />
            <asp:Image ID="Image2" runat="server" ImageUrl="Merchant/image/密码1.png" Height="24px" Width="22px" ImageAlign="Middle" />
            <asp:TextBox ID="TextBox2" runat="server" Height="23px" AutoCompleteType="Disabled" TextMode="SingleLine"></asp:TextBox>
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox1" ForeColor="White" runat="server" Text="记住密码" OnCheckedChanged="CheckBox1_CheckedChanged" /><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/miss.aspx" Font-Underline="false" ForeColor="#00b4aa">忘记密码？</asp:HyperLink>
            <br />
            <asp:Button ID="Button1" runat="server" Text="登录" Style="cursor: pointer;" BackColor="#00b4aa" ForeColor="White" Height="40px" Width="109px" OnClick="Button1_Click" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" Font-Underline="false" NavigateUrl="~/register.aspx" runat="server" ForeColor="#00b4aa">注册账号</asp:HyperLink>
        </asp:Panel>
    </form>
    <script>
        $(document).ready(function () {
            var stars = 1200;
            var $stars = $(".stars");
            var r = 1200;
            for (var i = 0; i < stars; i++) {
                var $star = $("<div/>").addClass("star");
                $stars.append($star);
            }
            $(".star").each(function () {
                var cur = $(this);
                var s = 0.2 + (Math.random() * 1);
                var curR = r + (Math.random() * 300);
                cur.css({
                    transformOrigin: "0 0 " + curR + "px",
                    transform: " translate3d(0,0,-" + curR + "px) rotateY(" + (Math.random() * 360) + "deg) rotateX(" + (Math.random() * -50) + "deg) scale(" + s + "," + s + ")"
                })
            })
        })
    </script>
</body>
</html>
