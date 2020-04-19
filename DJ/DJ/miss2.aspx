<%@ Page Language="C#" AutoEventWireup="true" CodeFile="miss2.aspx.cs" Inherits="miss2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="CSS/Login.css" rel="stylesheet" />
    <style type="text/css">
       #Button1{
                margin-left: 35%;
                font-size: 20px;
                border: 1px solid;
                border-radius: 12px;
               }

       .yzm     {
                width: 100px;
                height: 50px;
                position: absolute;
                left: 150px;
                top: 100px;
                font-size: 16px;
                background: aqua;
                }
       #yzm1    {
                float: right;
                margin-right: 21%;
                }
  
    </style>
</head>
<body><div class="stars"></div>
            <form id="form1" runat="server">
                
            <asp:Panel ID="Panel1" runat="server" Height="360px" Width="400px">
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label1" runat="server"  Text="勤工助学系统"></asp:Label></asp:Panel>
                <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="id" runat="server" Text="新的密码:" ForeColor="white"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" ></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" Text="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    <br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="iphone" runat="server" ForeColor="white" Text="确认密码:"></asp:Label>         
                <asp:TextBox ID="TextBox2" runat="server" Height="23px"></asp:TextBox><asp:CompareValidator ID="CompareValidator2" runat="server" ErrorMessage="密码不一致" ControlToCompare="TextBox1" ControlToValidate="TextBox2" ForeColor="Red"></asp:CompareValidator>
                <br /><br />
                <br />
                

                <asp:Button ID="Button1" runat="server" Text="确认修改" BackColor="#00b4aa" ForeColor="White" Height="40px" Width="109px" OnClick="Button1_Click"  />

            </asp:Panel>
            </form>
<script src="js/jquery-3.4.1.min.js"></script>
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
