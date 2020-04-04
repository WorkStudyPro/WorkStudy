<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index-1.aspx.cs" Inherits="index_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="sjxx.css" rel="stylesheet" />
    <style type="text/css">
    #div0{
            width:900px;
            height:140px;
            margin-left:20%;
            background-color:white;
            border-radius:5px;
        }
        #divs{
            width:900px;
            height:400px;
            margin-left:20%;
            background-color:white;
            border-radius:5px;
        }
      
        #divv{
           height:870px;
            background-color:#F0F0F0;
        }
        #Image3{
            margin-left: 10%;
    margin-top: -2%;
        }
        #Image0{
   margin-top: -3%;
    margin-left: 30%;
        }

        #ImageButton1 {
            margin-top: 12%;
            margin-left: 22%;
        }
        #ImageButton2 {
            margin-top: 12%;
            margin-left: 22%;
        }
     #ImageButton3{
            margin-top: 12%;
    margin-left: 22%;
        }
         #div1{
           width:30%;
           height:140px;
          margin-left: 2%;
           float:left;
        }
        #div2{
                margin-left: 60%;
    margin-top: -23%;
        }
        #div3{
           width:30%;
           height:140px;
          float:left;
          margin-left: 4%;

        }
        #div4{
                margin-left: 60%;
    margin-top: -23%;
        }
        #div5{
           width:30%;
           height:140px;
          
             float:left;
             margin-left: 2%;

        }
        #div6{
                margin-left: 60%;
    margin-top: -23%;
        }
        #Label8{
            float:left;
            font-size:25px;
        }
        #HyperLinks{
            margin-left:21%;
        }
         #HyperLinkss{
            margin-left:2%;
        }
         #right{
             background-color:white;
             width:245px;
             height:260px;
             margin-left: 75%;
    margin-top: -32%;
         }
         #Button发布兼职2{
             display: block;
    width: 200px;
    height: 48px;
    line-height: 48px;
    text-align: center;
    border-radius: 6px;
    border: 1px solid #1ecdb9;
    font-size: 14px;
    color: #1ecdb9;
    margin-bottom: 25px;
    cursor: pointer;
    background-color:white;
    margin-left: 9%;
         }
         #Button我的信息{
             display: block;
    width: 200px;
    height: 48px;
    line-height: 48px;
    text-align: center;
    border-radius: 6px;
    border: 1px solid #1ecdb9;
    font-size: 14px;
    color: #1ecdb9;
    margin-bottom: 8px;
    cursor: pointer;
    background-color:white;
    margin-left: 9%;
         }
         #Labelmy{
                margin-left: 32%;
    font-size: larger;
    
         }
        #Labelid {
            margin-left: 22%;
            font-size: larger;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
       <div>
            <asp:Panel ID="Panel1" runat="server" Height="73px">
                <asp:Image ID="Image1" runat="server" Height="75px" ImageUrl="~/image/图片 3.png" Width="315px" ImageAlign="Middle" />
                
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/index.aspx" font-underline="false"   style="margin-left: 5%" ForeColor="#00b4aa">首页</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/management.aspx" font-underline="false" ForeColor="Black"  style="margin-left: 5%">职位管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/Resume.aspx" font-underline="false" ForeColor="Black"  style="margin-left: 5%">简历管理</asp:HyperLink>
                 <asp:HyperLink ID="HyperLink10" runat="server"  font-underline="false" NavigateUrl="~/mynews.aspx"  style="margin-left: 5%">消息</asp:HyperLink>
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
            
        <div id="div0">
            <div id="div1">
            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/新报名.png" ImageAlign="Middle" OnClick="ImageButton1_Click1" />
                <div id="div2">
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" runat="server" Text="0" Font-Bold="true" Font-Size="25px"></asp:Label>    
               <br /> 
                    <asp:Label ID="Label2" runat="server" Text="新报名"></asp:Label>   
                    </div>
            </div>
            <div id="竖线" style="float:left;margin-top: 30px;width: 1px;height: 80px; background: darkgray;"></div> 
            <div id="div3">
            <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/在招职位.png" ImageAlign="Middle" OnClick="ImageButton2_Click1" />
                <div id="div4">
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="0" Font-Bold="true" Font-Size="25px"></asp:Label>    
               <br /> 
                    <asp:Label ID="Label4" runat="server" Text="在招职位"></asp:Label>   
                    </div>
            </div>
            <div id="shuxian" style="float:left;margin-top: 30px;width: 1px;height: 80px; background: darkgray;"></div> 
            <div id="div5">
            <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/未读消息.png" ImageAlign="Middle" OnClick="ImageButton3_Click1" />
                <div id="div6">
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="0" Font-Bold="true" Font-Size="25px"></asp:Label>    
               <br /> 
                    <asp:Label ID="Label7" runat="server" Text="未读消息"></asp:Label>   
                    </div>
            </div>
        </div>
            <br />
            <br />
            
            <asp:HyperLink ID="HyperLinks" runat="server" ForeColor="Black" font-underline="false" NavigateUrl="~/index.aspx" >新报名</asp:HyperLink>
            <asp:HyperLink ID="HyperLinkss" runat="server"  ForeColor="#00b4aa">在招兼职</asp:HyperLink>
            <br />
            <br />
            <%--中间菜单--%>
            <div id="divs">
            </div>

            <%--右边菜单--%>
             <div id="right">
                
                 <br />
                <asp:Label ID="Labelmy" runat="server" ForeColor="#1ecdb9" Text="当前账户：" ></asp:Label>
                <br />
                <asp:Label ID="Labelid" runat="server" Text="18582409158"></asp:Label>
                 <br />
                 <br />
                <asp:Button ID="Button发布兼职2" runat="server" Text="发布兼职" />
                 <asp:Button ID="Button我的信息" runat="server" Text="我的信息" />

            </div>
          </div>
    </form>
</body>
</html>
