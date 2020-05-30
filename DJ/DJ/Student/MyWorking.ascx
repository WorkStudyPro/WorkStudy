<%@ Control Language="C#" AutoEventWireup="true" CodeFile="MyWorking.ascx.cs" Inherits="Student_MyWorking" %>
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
            <asp:Label ID="Label1" runat="server" Style="width: 100px;height: 35px;font-size: 16px;color: #1ecdb9;background-color: white;position: absolute;margin-left: 18%;" Text="正在进行"></asp:Label>
            <br>
            <img src="images/地点.svg" width="20" height="20" /><asp:Label ID="WorkPlace" runat="server" style="color:rgb(104,104,104)" Text="四川工程职业技术学院"></asp:Label>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			需求人数：<asp:Label ID="WorkPeople" runat="server" Text="12"></asp:Label>人
        </div>
      </div>
    </div>