<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body{
            background-image:url(/image/工院背景.png) ;
            
        }
        #Panel2{
                width: 100%;
    height: 10%;
    background-color: #00b4aa;
    margin-top: 8%;

        }
        #Panel1{
            float: right;
    margin-right: 50px;
    margin-top: 120px;
    border: 1px solid;
    border-radius: 12px;
        }
        #Image1{
    margin-top:-2%;
    margin-left:20%;
        }
          #TextBox1{
          margin-top:10%
    
        }
           #Image2{
    margin-top:-2%;
    margin-left: 20%;
        }
           #TextBox2{
               margin-top: 5%;
           }
           #Label1{
               font-size: 25px;
    margin-left: 30%;
    color: white;
           }
           #HyperLink1{
               float: right;
    margin-right: 12%;
}
           #Button1{
                   margin-left: 37%;
    font-size: 20px;
        border: 1px solid;
    border-radius: 12px;
           }
           #HyperLink2{
                   margin-left: 43%;
           }
    </style>
</head>
<body>
            <form id="form1" runat="server">
                
            <asp:Panel ID="Panel1" runat="server" Height="360px" Width="400px" BackColor="white">
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label1" runat="server"  Text="勤工助学系统"></asp:Label></asp:Panel>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/账号.png" Height="30px" ImageAlign="Middle" />
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" ></asp:TextBox>
                    <br />
                <asp:Image ID="Image2" runat="server" ImageUrl="~/image/密码.png" Height="30px" Width="30px" ImageAlign="Middle" />
                <asp:TextBox ID="TextBox2" runat="server" Height="23px"></asp:TextBox>

                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:CheckBox ID="CheckBox1" runat="server" Text="记住密码"  /><asp:HyperLink ID="HyperLink1" runat="server" ForeColor="#00b4aa">忘记密码？</asp:HyperLink>
               <br />
                <asp:Button ID="Button1" runat="server" Text="登陆" BackColor="#00b4aa" ForeColor="White" Height="40px" Width="109px" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="#00b4aa">注册账号</asp:HyperLink>

            </asp:Panel>
            </form>
</body>
</html>
