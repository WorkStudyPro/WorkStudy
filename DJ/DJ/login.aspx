<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        body {
  background: radial-gradient(200% 100% at bottom center, #f7f7b6, #e96f92, #75517d, #1b2947);
  background: radial-gradient(220% 105% at top center, #1b2947 10%, #75517d 40%, #e96f92 65%, #f7f7b6);
  background-attachment: fixed;
  overflow: hidden;
}

@keyframes rotate {
  0% {
    transform: perspective(400px) rotateZ(20deg) rotateX(-40deg) rotateY(0);
  }
  100% {
    transform: perspective(400px) rotateZ(20deg) rotateX(-40deg) rotateY(-360deg);
  }
}
.stars {
  transform: perspective(500px);
  transform-style: preserve-3d;
  position: absolute;
  bottom: 0;
  perspective-origin: 50% 100%;
  left: 50%;
  animation: rotate 90s infinite linear;
}

.star {
  width: 2px;
  height: 2px;
  background: #F7F7B6;
  position: absolute;
  top: 0;
  left: 0;
  transform-origin: 0 0 -300px;
  transform: translate3d(0, 0, -300px);
  backface-visibility: hidden;
}
        #Panel2{

                width: 100%;
    height: 10%;
    background-color: #00b4aa;
    margin-top: 8%;

        }
        #Panel1{
           margin-right: 50px;
    margin-top: 127px;
    border-radius: 12px;
    animation: mydh 0.5s;
    margin-left: 39%;
     background-color:rgba(0,0,0,0);
               border:solid 1px #00b4aa;

        }
       @keyframes mydh{
				
				from{
					transform: translate(0px, 100%);
				}
			}

        #Image1{
    margin-top:-2%;
    margin-left:21%;
        }
          #TextBox1{
          margin-top:10%
    
        }
           #Image2{
    margin-top:-2%;
    margin-left: 21%;
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
                   margin-left: 35%;
    font-size: 20px;
        border: 1px solid;
    border-radius: 12px;
           }
           #HyperLink2{
                   margin-left: 41%;
           }
        
    </style>
</head>
<body><div class="stars"></div>
            <form id="form1" runat="server">
                
            <asp:Panel ID="Panel1" runat="server" Height="360px" Width="400px">
                <asp:Panel ID="Panel2" runat="server">
                    <asp:Label ID="Label1" runat="server"  Text="勤工助学系统"></asp:Label></asp:Panel>
                
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/账号1.png" Height="24px" Width="22px" ImageAlign="Middle" />
                    <asp:TextBox ID="TextBox1" runat="server" Height="23px" ></asp:TextBox>
                    <br />
                
                <asp:Image ID="Image2" runat="server" ImageUrl="~/image/密码1.png" Height="24px" Width="22px" ImageAlign="Middle" />
                <asp:TextBox ID="TextBox2" runat="server" Height="23px"></asp:TextBox>

                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:CheckBox ID="CheckBox1" ForeColor="White" runat="server" Text="记住密码"  /><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/miss.aspx" font-underline="false"  ForeColor="#00b4aa">忘记密码？</asp:HyperLink>
               <br />
                <asp:Button ID="Button1" runat="server" Text="登录" BackColor="#00b4aa" ForeColor="White" Height="40px" Width="109px" OnClick="Button1_Click" />
                <br />
                <br />
                <asp:HyperLink ID="HyperLink2" font-underline="false" NavigateUrl="~/register.aspx" runat="server" ForeColor="#00b4aa">注册账号</asp:HyperLink>

            </asp:Panel>
            </form>
<script src="js/jquery-3.4.1.min.js"></script>
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
