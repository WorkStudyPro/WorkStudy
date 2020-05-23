<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="gallery">
	<a class="show">
		<img src="images/背景-工院.jpg" alt="Flowing Rock" width="1920" height="400"/>
	</a>
        
	
	<a>
		<img src="images/背景-工院2.jpg" alt="Grass Blades" width="1920" height="400"/>
	</a>
	
	<a>
		<img src="images/工院-背景3.jpg" alt="Ladybug" width="1920" height="400"/>
	</a>

	<a>
		<img src="images/工院-背景4.jpg" alt="Lightning" width="1920" height="400" />
	</a>
	<div class="caption"><div class="content"></div></div>
</div>
<div class="clear"></div>

	<div id="Footer" style="height:470px;background-color:rgb(242,242,242)">
	<br />
	<a Style="text-align:center;font-size:25px;color:#00b4aa;margin-left:910px">热门兼职</a>
		<div style="padding: 20px; background-color: #F2F2F2;">
  <div class="layui-row layui-col-space15">

    <div class="layui-col-md6">
      <div class="layui-card">
        <div class="layui-card-header">
            <asp:Label ID="WorkName" runat="server" ForeColor="#00b4aa" Font-Size="Large" Text="兼职名称"></asp:Label>
        </div>
        <div class="layui-card-body">
            <img src="images/时间.svg" width="20" height="20" /><asp:Label ID="WorkTime" runat="server" style="color:rgb(104,104,104)" Text="周一至周五上午"></asp:Label> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			工资薪水：<asp:Label ID="WorkMoney" runat="server" Text="20"></asp:Label>元/小时
			<asp:Button ID="Button报名" runat="server" Style="width: 100px;height: 35px;text-align: center;border-radius: 6px;border: 1px solid #1ecdb9;font-size: 16px;color: #1ecdb9;cursor: pointer;background-color: white;position: absolute;margin-left: 32%;margin-top: 1%;" Text="报名兼职" />
			<br>
            <img src="images/地点.svg" width="20" height="20" /><asp:Label ID="WorkPlace" runat="server" style="color:rgb(104,104,104)" Text="四川工程职业技术学院"></asp:Label>
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			需求人数：<asp:Label ID="WorkPeople" runat="server" Text="12"></asp:Label>人
        </div>
      </div>
    </div>

     <div class="layui-col-md6">
      <div class="layui-card">
        <div class="layui-card-header">
            <asp:Label ID="WorkName2" runat="server" ForeColor="#00b4aa" Font-Size="Large" Text="兼职名称"></asp:Label>
        </div>
        <div class="layui-card-body">
            <img src="images/时间.svg" width="20" height="20" /><asp:Label ID="WorkTime2" runat="server" style="color:rgb(104,104,104)" Text="周一至周五上午"></asp:Label> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			工资薪水：<asp:Label ID="WorkMoney2" runat="server" Text="20"></asp:Label>元/小时
			<asp:Button ID="Button报名2" runat="server" Style="width: 100px;height: 35px;text-align: center;border-radius: 6px;border: 1px solid #1ecdb9;font-size: 16px;color: #1ecdb9;cursor: pointer;background-color: white;position: absolute;margin-left: 32%;margin-top: 1%;" Text="报名兼职" />
			<br>
            <img src="images/地点.svg" width="20" height="20" /><asp:Label ID="WorkPlace2" runat="server" style="color:rgb(104,104,104)" Text="四川工程职业技术学院"></asp:Label>
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			需求人数：<asp:Label ID="WorkPeople2" runat="server" Text="12"></asp:Label>人
        </div>
      </div>
    </div>
  
      <div class="layui-col-md6">
      <div class="layui-card">
        <div class="layui-card-header">
            <asp:Label ID="WorkName3" runat="server" ForeColor="#00b4aa" Font-Size="Large" Text="兼职名称"></asp:Label>
        </div>
        <div class="layui-card-body">
            <img src="images/时间.svg" width="20" height="20" /><asp:Label ID="WorkTime3" runat="server" style="color:rgb(104,104,104)" Text="周一至周五上午"></asp:Label> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			工资薪水：<asp:Label ID="WorkMoney3" runat="server" Text="20"></asp:Label>元/小时
			<asp:Button ID="Button报名3" runat="server" Style="width: 100px;height: 35px;text-align: center;border-radius: 6px;border: 1px solid #1ecdb9;font-size: 16px;color: #1ecdb9;cursor: pointer;background-color: white;position: absolute;margin-left: 32%;margin-top: 1%;" Text="报名兼职" />
			<br>
            <img src="images/地点.svg" width="20" height="20" /><asp:Label ID="WorkPlace3" runat="server" style="color:rgb(104,104,104)" Text="四川工程职业技术学院"></asp:Label>
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			需求人数：<asp:Label ID="WorkPeople3" runat="server" Text="12"></asp:Label>人
        </div>
      </div>
    </div>

       <div class="layui-col-md6">
      <div class="layui-card">
        <div class="layui-card-header">
            <asp:Label ID="WorkName4" runat="server" ForeColor="#00b4aa" Font-Size="Large" Text="兼职名称"></asp:Label>
        </div>
        <div class="layui-card-body">
            <img src="images/时间.svg" width="20" height="20" /><asp:Label ID="WorkTime4" runat="server" style="color:rgb(104,104,104)" Text="周一至周五上午"></asp:Label> 
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			工资薪水：<asp:Label ID="WorkMoney4" runat="server" Text="20"></asp:Label>元/小时
			<asp:Button ID="Button报名4" runat="server" Style="width: 100px;height: 35px;text-align: center;border-radius: 6px;border: 1px solid #1ecdb9;font-size: 16px;color: #1ecdb9;cursor: pointer;background-color: white;position: absolute;margin-left: 32%;margin-top: 1%;" Text="报名兼职" />
			<br>
            <img src="images/地点.svg" width="20" height="20" /><asp:Label ID="WorkPlace4" runat="server" style="color:rgb(104,104,104)" Text="四川工程职业技术学院"></asp:Label>
			 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			需求人数：<asp:Label ID="WorkPeople4" runat="server" Text="12"></asp:Label>人
        </div>
      </div>
    </div>


  </div>
</div> 
		
		<div style="height:144px;background-color: rgb(0,159,217);margin-top: 30px;">
	<div class="wave-box">

	<div class="marquee-box marquee-up" id="marquee-box">
		<div class="marquee">
			<div class="wave-list-box" id="wave-list-box1">
				<ul>
					<li><img height="60" alt="波浪" src="images/wave_02.png" style="background-color:rgb(242,242,242)"></li>
				</ul>
			</div>
			<div class="wave-list-box" id="wave-list-box2">
				<ul>
					<li><img height="60" alt="波浪" src="images/wave_02.png" style="background-color:rgb(242,242,242)"></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="marquee-box" id="marquee-box3">
		<div class="marquee">
			<div class="wave-list-box" id="wave-list-box4">
				<ul>
					<li><img height="60" alt="波浪" src="images/wave_01.png"></li>
				</ul>
			</div>
			<div class="wave-list-box" id="wave-list-box5">
				<ul>
					<li><img height="60" alt="波浪" src="images/wave_01.png"></li>
				</ul>
			</div>
		</div>
	</div>
	</div>

        <div class="footer-floor1" style="margin-top:-38px;text-align: center;">
				<img  src="images/二维码.png" width="70" height="70" style="position: absolute;margin-top: -25px;margin-left: 810px;" />
		地址：四川工程职业技术学院 | 版权所有：2018级软件技术2班 | 站点建设与维护： 吴远财、王玺 | 川ICP备00000001号 | 二维码
		</div>
	</div>	</div>
</asp:Content>

