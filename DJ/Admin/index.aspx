﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<%@ Register Src="~/setpass.ascx" TagPrefix="uc1" TagName="setpass" %>
<%@ Register Src="~/set.ascx" TagPrefix="uc1" TagName="set" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="js/adapter.js"></script>
    <link href="css/indexcss.css" rel="stylesheet" />
    <link href="css/bsae.css" rel="stylesheet" />
</head>

<body style="background-color:rgb(230,236,240) ;">
    <form id="form1" runat="server">
      <div id="menu1" style="width: 1660px;background-color: white;height: 58px;margin-left: 260px;">
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label1" runat="server" Text="您好！管理员："   style="line-height: 58px;"  ></asp:Label>
          <asp:Label ID="Label2" runat="server" Text="张三三" ForeColor="#1ecdb9"  style="line-height: 58px;"></asp:Label>
     
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label5" runat="server" Text="ID："  style="line-height: 58px;"></asp:Label>
          <asp:Label ID="Label6" runat="server" Text="123456" ForeColor="#1ecdb9"  style="line-height: 58px;"></asp:Label>

          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label7" runat="server" Text="上班时间："  style="line-height: 58px;"></asp:Label>
          <asp:Label ID="Label8" runat="server" Text="9.00-17.00" ForeColor="#1ecdb9"  style="line-height: 58px;"></asp:Label>
          
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="Label3" runat="server" Text="上次登陆时间："  style="line-height: 58px;"></asp:Label>
          <asp:Label ID="Label4" runat="server" Text="2020年5月15日11:40:51" ForeColor="#1ecdb9"  style="line-height: 58px;"></asp:Label>

      </div>
         <div id="list" style="width: 1660px;background-color: rgb(239,243,246);height: 878px;margin-left: 260px;position: absolute;">
             </div>

        <%--左侧菜单--%>
    <div id="menu">
    <div id="open">
        <div class="navH" style="color:#1ecdb9">
           管理员功能
        </div>
        <div class="navBox">
            <ul>
                <li>
                    <h2 class="obtain">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/images/图标 17.svg" style="margin-top: -4px;" Height="24px" ImageAlign="Middle" /> 主页<i></i></h2>
                    <div class="secondary">
                        <h3>123</h3>
                        <h3>123</h3>
                        <h3>123</h3>
                        <h3>123</h3>
                        <h3>123</h3>
                        <h3>123</h3>
                    </div>
                </li>
                <li>
                    <h2 class="obtain">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image2" runat="server" ImageUrl="~/images/图标 18.svg" style="margin-top: -4px;" Height="24px" ImageAlign="Middle" /> 用户<i></i></h2>
                    <div class="secondary">
                        <h3>123</h3>
                        <h3>123</h3>
                        <h3>123</h3>
                        <h3>123</h3>
                        <h3>123</h3>
                        <h3>123</h3>
                    </div>
                </li>
                <li>
                    <h2 class="obtain">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/images/图标 19.svg" style="margin-top: -4px;" Height="24px" ImageAlign="Middle" /> 设置<i></i></h2>
                    <div class="secondary">
                        <h3><asp:Button ID="Button1" ForeColor="White" style="background-color: Transparent;font-size: 15px;border-style: none;outline: none; cursor:pointer;" runat="server" Text="管理员信息" OnClick="Button1_Click" /></h3>
                        <h3><asp:Button ID="Button2" ForeColor="White" style="background-color: Transparent;font-size: 15px;border-style: none;outline: none; cursor:pointer;" runat="server" Text="修改密码" OnClick="Button2_Click" /></h3>
                        <h3>123</h3>
                        <h3>123</h3>
                        <h3>123</h3>
                        <h3>123</h3>
                    </div>
                </li>
            </ul>
        </div>
    </div>
</div>

        <%--中间显示--%>
        <asp:Panel ID="center" style="background-color:white;width:1550px;height:750px;z-index: 999;position: relative;margin-left: 320px;margin-top: 60px;" runat="server">
            
        </asp:Panel>
        </form>
</body>

<script src="js/menujs.js"></script>
</html>
