﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="IndexWork.ascx.cs" Inherits="Student_IndexWork" %>
  <div class="layui-col-md6">
       <div class="layui-card">
         <div class="layui-card-header">
             <asp:Label ID="WorkName" runat="server" ForeColor="#00b4aa" Font-Size="Large" Text="兼职名称"></asp:Label>
         </div>
            <div class="layui-card-body">
            <img src="images/时间.svg" width="20" height="20" />
            <asp:Label ID="WorkTime" runat="server" Style="color: rgb(104,104,104)" Text="周一至周五上午"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			工资薪水：<asp:Label ID="WorkMoney" runat="server" Text="20"></asp:Label>元/小时
			<asp:Button ID="Button报名" runat="server" Style="width: 100px; height: 35px; text-align: center; border-radius: 6px; border: 1px solid #1ecdb9; font-size: 16px; color: #1ecdb9; cursor: pointer; background-color: white; position: absolute; margin-left: 32%; margin-top: 1%;" Text="报名兼职" />
            <br>
            <img src="images/地点.svg" width="20" height="20" />
            <asp:Label ID="WorkPlace" runat="server" Style="color: rgb(104,104,104)" Text="四川工程职业技术学院"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			需求人数：<asp:Label ID="WorkPeople" runat="server" Text="12"></asp:Label>人
            </div>
       </div>
  </div>
        