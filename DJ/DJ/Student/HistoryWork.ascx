<%@ Control Language="C#" AutoEventWireup="true" CodeFile="HistoryWork.ascx.cs" Inherits="Student_HistoryWork" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
    <style>
        .cssempty {
            background-image: url(http://localhost:56935/Student/images/RatingStarEmpty.png);
        }
        .cssfilled {
            background-image: url(http://localhost:56935/Student/images/RatingStarFilled.png);
        }
        .csssaved {
            background-image: url(http://localhost:56935/Student/images/RatingStarSaved.png);
        }
        .cssstart {
           /*
           margin:5pt;
           height:14px;
           float:left;
           */
        }
        .cssitem {
            width:13px;
            height:12px;
            margin:0px;
            padding:2px;

            display:block;
            background-repeat:no-repeat; 
        }
    </style>
<div id="work"  style="width: 850px; height: 150px; margin-top: 30px;border: 1px solid #1ecdb9; background: rgba(0,0,0,0); border-radius: 15px; margin-bottom: 10px;">
    <br />
    <div id="workleft"> 
<%--        <asp:Label ID="name" runat="server" onclick="openDialog();" Style="margin-left: 8%; cursor: pointer;" Text="食堂打扫" Font-Bold="True" Font-Size="22px" ForeColor="#1ECDB9" ></asp:Label>--%>
        <asp:Button ID="name" runat="server" Text="食堂打扫" onclick="Button1_Click" Style="margin-left: 8%; cursor: pointer;background-color: Transparent; border-style: none;outline: none; " Font-Bold="True" Font-Size="22px" ForeColor="#1ECDB9" />
        <br />
        <br />
        <asp:Image ID="Imagetime" Style="margin-left: 5%; vertical-align: middle;" runat="server" ImageUrl="images/时间.svg" Width="20px" />
        <asp:Label ID="time" runat="server" Text="周一至周五中午" ForeColor="#8B8989"></asp:Label>
        <br />
        <asp:Image ID="Imagewhere" Style="margin-left: 5%; vertical-align: middle;" runat="server" ImageUrl="images/地点.svg" Width="20px" />
        <asp:Label ID="where" runat="server" Text="四川工程职业技术学院" ForeColor="#8B8989"></asp:Label>
    </div>
    <div id="workzhong" style="position: absolute; margin-left: 27%; margin-top: -70px; width: 405px;">
        <asp:Label ID="baomingshu" Style="margin-left: 11%;" runat="server" Text="0" ForeColor="#1ecdb9" Font-Size="24px" Font-Bold="true"></asp:Label>
        <asp:Label ID="luqushu" Style="margin-left: 24%;" runat="server" Text="0" ForeColor="#1ecdb9" Font-Size="24px" Font-Bold="true"></asp:Label>
        <asp:Label ID="xuqiurenshu" Style="margin-left: 21%;" runat="server" ForeColor="black" Text="需求人数："></asp:Label>
        <asp:Label ID="renshu" runat="server" ForeColor="#1ECDB9" Text="12"></asp:Label>
        <br />
        <asp:Label ID="baoming" Style="margin-left: 7%;" runat="server" ForeColor="black" Text="已报名"></asp:Label>
        <asp:Label ID="luqu" Style="margin-left: 16%;" runat="server" ForeColor="black" Text="已录取"></asp:Label>
        <asp:Label ID="gongzi" Style="margin-left: 16%;" runat="server" ForeColor="black" Text="工资(每时)："></asp:Label>
        <asp:Label ID="gongzi1" runat="server" ForeColor="#1ECDB9" Text="2500"></asp:Label>
    </div>
    <div id="workright">
        <asp:Label ID="PingJia" Style="width: 132px;height: 40px;line-height: 40px;float: right;border-radius: 6px;color: black;margin-top: -9%;" runat="server" Text="评价兼职"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <cc1:Rating ID="Rating1" runat="server" CssClass="cssstart" Style="margin-left: 82%;position: absolute;margin-top: -4%;" StarCssClass="cssitem"  FilledStarCssClass="csssaved" EmptyStarCssClass="cssempty" WaitingStarCssClass="cssfilled" CurrentRating="0" OnChanged="Rating1_Changed" AutoPostBack="True"></cc1:Rating>
    </div>
</div>
<div id="light"  runat="server" style="display: none; position: absolute; margin-top: -160px; width: 850px; height: 90%; border: 1px solid #1ecdb9; background-color: white; z-index: 1002; overflow: auto;">
    <table style="margin-left: 100px;">
        <tr style="width: 854px; height: 60px;">
            <td>
                <asp:Label ID="name1" runat="server" Style="margin-left: 283px;" Text="食堂打扫" Font-Bold="true" Font-Size="22px" ForeColor="#1ecdb9"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px; height: 60px;">
            <td>
                <asp:Label ID="Label5" runat="server" Text="工作时间" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px;">
            <td>
                <asp:Label ID="time1" runat="server" Text="周一至周五 9.00-17.00"></asp:Label>
            </td>
        </tr>

        <tr style="width: 854px; height: 60px;">
            <td>
                <asp:Label ID="rs" runat="server" Font-Size="18px" ForeColor="#1ecdb9" Text="需求人数:" />
            </td>
        </tr>
        <tr style="width: 854px;">
            <td>
                <asp:Label ID="renshu1" runat="server" Text="12">
                    <asp:Label ID="Label2" runat="server" Text="人"></asp:Label></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px; height: 60px;">
            <td>
                <asp:Label ID="jieshao" runat="server" Text="岗位介绍" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px;">
            <td>
                <asp:Label ID="jieshao1" runat="server" Text="终于收到我需要的宝贝了"></asp:Label>
            </td>
        </tr>

        <tr style="width: 854px; height: 60px;">
            <td>
                <asp:Label ID="gongzidaiyu" runat="server" Text="工资待遇" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px;">
            <td>
                <asp:Label ID="gongzidaiyu1" runat="server" Text="50">
                    <asp:Label ID="Label3" runat="server" Text="元/时"></asp:Label>
                </asp:Label>
            </td>
        </tr>
        <tr style="width: 854px; height: 60px;">
            <td>
                <asp:Label ID="Label4" runat="server" Text="工作地点" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px;">
            <td>
                <asp:Label ID="where1" runat="server" Text="四川工程职业技术学院二食堂"></asp:Label>
            </td>
        </tr>

    </table>

    <br />
    <br />
    <asp:Button ID="Button2" runat="server" useHandCursor="true"   Text="关闭" OnClick="Button2_Click" Style="margin-left: 383px; background-color: Transparent; border-style: none; outline: none;  margin-bottom: 30px; display: block; width: 100px; height: 40px;line-height: 40px; text-align: center; border-radius: 6px; border: 1px solid #1ecdb9; font-size: 14px; color: #1ecdb9; cursor: pointer;" />

</div>