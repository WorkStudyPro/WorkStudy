<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="MyWork.aspx.cs" Inherits="Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <div id="LeftUp" style="width:200px;height:100px;margin-left: 300px;margin-top: 120px;background-color: white;border-radius: 5px;">
        <br />
        <asp:HyperLink ID="MySet" runat="server" Style="margin-left:64px" NavigateUrl="~/Student/Set.aspx" Font-Underline="false"  Font-Size="Large">个人信息</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="SetPass" runat="server" Style="margin-left:64px" NavigateUrl="~/Student/SetPass.aspx" Font-Underline="false"  Font-Size="Large">修改密码</asp:HyperLink>
    </div>

    <div id="LeftDown" style="width:200px;height:150px;margin-left: 300px;margin-top: 100px;background-color: white;border-radius: 5px;" >
        <br />
        <asp:HyperLink ID="MyRe" Style="margin-left:64px" Font-Size="Large" Font-Underline="false"  NavigateUrl="~/Student/MyResume.aspx" runat="server">个人简历</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="MyWork" Style="margin-left:64px" NavigateUrl="~/Student/MyWork.aspx" ForeColor="#00b4aa" Font-Underline="false" Font-Size="Large" runat="server">我的兼职</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="Exit" Style="margin-left:64px" NavigateUrl="~/login.aspx" Font-Underline="false" Font-Size="Large" runat="server">退出登录</asp:HyperLink>
    </div>

    <div id="Center" style="width:800px;height:600px;margin-left: 700px;margin-top: -350px;background-color: white;border-radius: 5px;">
             <br />
    <asp:Label ID="Label8" runat="server" Text="我的兼职" Font-Bold="true" ForeColor="#1ecdb9" Style="margin-left: 100px;" Font-Size="25px"></asp:Label>
    <br />
    <br />
        <hr style="border: 0; height: 1px; background-color: #00b4aa;" />
         <br /> 
        <div class="layui-col-md6" style="margin-left: 71px;width: 666px;">
      <div class="layui-card" style="border:1px solid #00b4aa;">
        <div class="layui-card-header">
            <asp:Label ID="WorkName" runat="server" ForeColor="#00b4aa" Font-Size="Large" Text="兼职名称"></asp:Label>
        </div>
        <div class="layui-card-body">
            <img src="images/时间.svg" width="20" height="20" /><asp:Label ID="WorkTime" runat="server" style="color:rgb(104,104,104)" Text="周一至周五上午"></asp:Label> 
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			工资薪水：<asp:Label ID="WorkMoney" runat="server" Text="20"></asp:Label>元/小时
            <asp:Label ID="Label1" runat="server" Style="width: 100px;height: 35px;font-size: 16px;color: #1ecdb9;background-color: white;position: absolute;margin-left: 18%;" Text="Label"></asp:Label>
            <br>
            <img src="images/地点.svg" width="20" height="20" /><asp:Label ID="WorkPlace" runat="server" style="color:rgb(104,104,104)" Text="四川工程职业技术学院"></asp:Label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			需求人数：<asp:Label ID="WorkPeople" runat="server" Text="12"></asp:Label>人
        </div>
      </div>
    </div>



        </div>
</asp:Content>

