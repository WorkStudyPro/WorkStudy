<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/sweetalert-dev.js"></script>
    <link href="CSS/sweetalert.css" rel="stylesheet" />
    <link href="CSS/Login.css" rel="stylesheet" />
     <style type="text/css">
           #Button1{
                    margin-left: 19%;
                    font-size: 20px;
                    border: 1px solid;
                    border-radius: 12px;
    
                    }
           #Button2{             
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
<body><div class="stars"></div>
         <form id="form1" runat="server">
                
            <asp:Panel ID="Panel1" runat="server" Height="360px" Width="400px">
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label1" runat="server"  Text="勤工助学系统"></asp:Label></asp:Panel>
                    <br />
                    <asp:Label ID="Label4" runat="server" ForeColor="White" Text="手机号"></asp:Label>
               
                <asp:TextBox ID="TextBox2" runat="server" Height="23px" AutoCompleteType="Disabled"></asp:TextBox>
                <br />
                <br />
                 <asp:Label ID="Label3" runat="server" ForeColor="White" Text="密码"></asp:Label>
                 <asp:TextBox ID="TextBox3" runat="server" Height="23px"></asp:TextBox>
                <br />
               

                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="注册" BackColor="#00b4aa" ForeColor="White" Height="40px" Width="109px" OnClick="Button1_Click"  />
              &nbsp; &nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="返回" BackColor="#00b4aa" ForeColor="White" Height="40px" Width="109px" OnClick="Button2_Click"  />

                <br />
                <br />
                

            </asp:Panel>
            </form>
    
    <script>
$(document).ready(function(){
  var stars=1200;
  var $stars=$(".stars");
  var r=1200;
  for(var i=0;i<stars;i++){
    var $star=$("<div/>").addClass("star");
    $stars.append($star);
  }
  $(".star").each(function(){
    var cur=$(this);
    var s=0.2+(Math.random()*1);
    var curR=r+(Math.random()*300);
    cur.css({ 
      transformOrigin:"0 0 "+curR+"px",
      transform:" translate3d(0,0,-"+curR+"px) rotateY("+(Math.random()*360)+"deg) rotateX("+(Math.random()*-50)+"deg) scale("+s+","+s+")"
       
    })
  })
})
</script>
</body>
</html>
