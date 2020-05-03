﻿<%@ Control Language="C#" AutoEventWireup="true" CodeFile="work1.ascx.cs" Inherits="work" %>

<div id="work" style="width: 850px;height: 150px;border: 1px solid #1ecdb9;background: rgba(0,0,0,0);border-radius: 15px;margin-bottom:10px;" >
    <br />
   <div id="workleft">
       <asp:Label ID="name" runat="server"  style="margin-left: 8%;cursor: pointer;" Text="食堂打扫"  Font-Bold="true" Font-Size="22px" ForeColor="#1ecdb9"  onclick = "openDialog()"></asp:Label>
       <br/><br />
    <asp:Image ID="Imagetime" style=" margin-left: 5%;vertical-align: middle;" runat="server" ImageUrl="~/image/时间.svg" Width="20px" />
    <asp:Label ID="time" runat="server" Text="周一至周五中午"  ForeColor="#8B8989"></asp:Label>
    <br />
    <asp:Image ID="Imagewhere" style=" margin-left: 5%;vertical-align: middle;" runat="server" ImageUrl="~/image/地点.svg" Width="20px" />
    <asp:Label ID="where" runat="server" Text="四川工程职业技术学院" ForeColor="#8B8989"></asp:Label>
    </div>
    <div id="workzhong" style="position: absolute;margin-left: 27%;margin-top: -70px;width: 405px;" >
    <asp:Label ID="baomingshu" style="margin-left: 11%;" runat="server" Text="0" ForeColor="#1ecdb9" Font-Size="24px" Font-Bold="true"></asp:Label>
    <asp:Label ID="luqushu" style="margin-left: 24%;"  runat="server" Text="0" ForeColor="#1ecdb9" Font-Size="24px" Font-Bold="true"></asp:Label>
        <asp:Label ID="xuqiurenshu" style="margin-left: 21%;" runat="server" ForeColor="black" Text="需求人数："></asp:Label>
        <asp:Label ID="renshu" runat="server" ForeColor="#1ECDB9" Text="12"></asp:Label>
      <br />
    <asp:Label ID="baoming" style="margin-left: 7%;" runat="server" ForeColor="black" Text="已报名"></asp:Label>
    <asp:Label ID="luqu" style="margin-left: 16%;" runat="server" ForeColor="black" Text="已录取"></asp:Label>
        <asp:Label ID="gongzi" style="margin-left: 16%;" runat="server" ForeColor="black" Text="工资(每时)："></asp:Label>
        <asp:Label ID="gongzi1" runat="server" ForeColor="#1ECDB9" Text="2500"></asp:Label>
        </div>
    <div id="workright">
        <asp:Label ID="Label6" runat="server" Text="已结束" style="float: right;color: #1ecdb9;margin-top: -6%;margin-right: 8%;font-size: 18px;"></asp:Label>
    </div>
</div>
<div id="xxxx">
    <div id="light" class="white_content" style="display: none; position: absolute; margin-top:-162px;  width: 98%; height: 99%; border: 1px solid #1ecdb9; background-color: white; z-index:1002; overflow: auto; ">
  <table style="margin-left:100px;">
      <tr style="width:854px;height: 55px;">
          <td>
            <asp:Label ID="name1" runat="server"   style="margin-left:283px;" Text="食堂打扫"  Font-Bold="true" Font-Size="22px" ForeColor="#1ecdb9" onclick = "openDialog()"></asp:Label>
          </td>
      </tr>
      <tr style="width:854px;height: 55px;">
          <td>
              <asp:Label ID="Label5" runat="server" Text="工作时间" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
          </td>
           </tr>
           <tr style="width:854px;">
          <td>
          <asp:Label ID="time1" runat="server" Text="周一至周五 9.00-17.00"></asp:Label>
              </td>
           </tr>
     
      <tr style="width:854px;height: 55px;">
          <td>
               <asp:Label ID="rs" runat="server" Font-Size="18px" ForeColor="#1ecdb9" Text="需求人数:"/>
          </td>
          </tr>
          <tr style="width:854px;">
          <td >
          <asp:Label ID="renshu1" runat="server" Text="12"><asp:Label ID="Label2" runat="server" Text="人"></asp:Label></asp:Label>
              </td>
            </tr>
      <tr style="width:854px;height: 55px;">
          <td>
              <asp:Label ID="jieshao" runat="server" Text="岗位介绍" Font-Size="18px" ForeColor="#1ecdb9" ></asp:Label>
          </td>
          </tr>
          <tr style="width:854px;">
          <td>
              <asp:Label ID="jieshao1" runat="server" Text="终于收到我需要的宝贝了，东西很好，价美物廉，谢谢掌柜的!说实在，这是我淘宝购物来让我最满意的一次购物。无论是掌柜的态度还是对物品，我都非常满意的。掌柜态度很专业热情，有问必答，回复也很快，我问了不少问题，他都不觉得烦，都会认真回答我，这点我向掌柜表示由衷的敬意，道这样的好掌柜可不多。"></asp:Label>
          </td>
      </tr>

       <tr style="width:854px;height: 55px;">
          <td>
              <asp:Label ID="gongzidaiyu" runat="server" Text="工资待遇" Font-Size="18px" ForeColor="#1ecdb9" ></asp:Label>
          </td>
          </tr>
          <tr style="width:854px;">
          <td>
              <asp:Label ID="gongzidaiyu1" runat="server" Text="50">
                  <asp:Label ID="Label3" runat="server" Text="元/时"></asp:Label> </asp:Label>
          </td>
      </tr>
      <tr style="width:854px;height: 55px;">
          <td>
              <asp:Label ID="Label4" runat="server" Text="工作地点" Font-Size="18px" ForeColor="#1ecdb9" ></asp:Label>
          </td>
          </tr>
          <tr style="width:854px;">
          <td> 
          <asp:Label ID="where1" runat="server" Text="四川工程职业技术学院二食堂"></asp:Label> 
          </td>
      </tr>
      
  </table>

        <br/><br/>
        <asp:Label ID="Label1" useHandCursor="true" runat="server" onclick = "closeDialog()" style="margin-left: 383px; display: block;width: 100px;height: 40px;line-height: 40px;text-align: center;border-radius: 6px;border: 1px solid #1ecdb9;font-size: 14px;color: #1ecdb9;cursor: pointer;" Text="关闭"></asp:Label>
    </div>
    <div id="fade" class="black_overlay" style="display: none; position: absolute; top: 0%; left: 0%; width: 98%; height: 99%; background-color: black;  z-index:1001; -moz-opacity: 0.8; opacity:.80; filter: alpha(opacity=88); "></div> 
    
</div>
<script type="text/javascript">
        $(function(){
        })
    function openDialog(){
            document.getElementById('light').style.display='block';
            document.getElementById('fade').style.display='block'
        }
        function closeDialog(){
            document.getElementById('light').style.display='none';
            document.getElementById('fade').style.display='none'
        }
    </script>