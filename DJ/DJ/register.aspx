<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="index" %>

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
       
          #TextBox1{
          margin-top:10%
    
        }
          #TextBox1{
          margin-top:10%
    
        }
           #TextBox2{
               margin-top: 5%;
           }
           #Label1{
               font-size: 25px;
    margin-left: 30%;
    color: white;
           }
         

           #Button1{
                   margin-left: 37%;
    font-size: 20px;
        border: 1px solid;
    border-radius: 12px;
    
           }
           #Label2{
               margin-left:20%;
           }
           #Label3{
               margin-left:20%;
           }
           #Label4{
               margin-left:16%;
           }
    </style>
</head>
<body>
         <form id="form1" runat="server">
                
            <asp:Panel ID="Panel1" runat="server" Height="360px" Width="400px" BackColor="white">
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label1" runat="server"  Text="勤工助学系统"></asp:Label></asp:Panel>
                <asp:Label ID="Label2" runat="server" Text="账号"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" ></asp:TextBox>
                    <br />
                <asp:Label ID="Label3" runat="server" Text="密码"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Height="23px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="手机号"></asp:Label>
                 <asp:TextBox ID="TextBox3" runat="server" Height="23px"></asp:TextBox>
                <br />
               

                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="注册" BackColor="#00b4aa" ForeColor="White" Height="40px" Width="109px"  />
                <br />
                <br />
                

            </asp:Panel>
            </form>
</body>
</html>
