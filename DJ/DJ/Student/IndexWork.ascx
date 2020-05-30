<%@ Control Language="C#" AutoEventWireup="true" CodeFile="IndexWork.ascx.cs" Inherits="Student_IndexWork" %>
  <div class="layui-col-md6" style="width:930px;height:110px;margin-top:10px;margin-right:10px;">
       <div class="layui-card">
         <div class="layui-card-header">
             <asp:Label ID="WorkName" runat="server" ForeColor="#00b4aa" Font-Size="Large" Text="兼职名称"></asp:Label>
         </div>
            <div class="layui-card-body">
            <img src="images/时间.svg" width="20" height="20" />
            <asp:Label ID="WorkTime" runat="server" Style="color: rgb(104,104,104)" Text="周一至周五上午"></asp:Label>

                <div id="CenterUp" style="position:absolute;margin-left: 40%;margin-top: -25px">
            <asp:Label ID="Label1" runat="server" Text="工资薪水："></asp:Label>
			<asp:Label ID="WorkMoney" runat="server" Text="20"></asp:Label>元/小时
                </div>

			<asp:Button ID="Button报名" runat="server" Style="width: 100px; height: 35px; text-align: center; border-radius: 6px; border: 1px solid #1ecdb9; font-size: 16px; color: #1ecdb9; cursor: pointer; background-color: white; float: right;margin-top: 1%;" Text="报名兼职" />
            <br>
            <img src="images/地点.svg" width="20" height="20" />
            <asp:Label ID="WorkPlace" runat="server" Style="color: rgb(104,104,104)" Text="四川工程职业技术学院"></asp:Label>

                <div id="CenterDown" style="position:absolute;margin-left: 40%;margin-top: -25px">
                <asp:Label ID="Label2" runat="server" Text="需求人数："></asp:Label>
			<asp:Label ID="WorkPeople" runat="server" Text="12"></asp:Label>人
                </div>

            </div>
       </div>
  </div>
        