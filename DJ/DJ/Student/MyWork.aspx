<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="MyWork.aspx.cs" Inherits="Student_Default" %>

<%@ Register Src="~/Student/MyWorking.ascx" TagPrefix="uc1" TagName="MyWorking" %>


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
        <uc1:MyWorking runat="server" ID="MyWorking" />



        </div>
</asp:Content>

