<%@ Control Language="C#" AutoEventWireup="true" CodeFile="StudentResumeEnd.ascx.cs" Inherits="Merchant_StudentResumeEnd" %>

<div id="StudentRe"  style="width: 850px; height: 50px;background: rgba(0,0,0,0);  margin-bottom: 27px; line-height: 15px;">
    <br />
    <div id="StudentReLeft"> 
        <asp:Label ID="Label1" runat="server" Text="学生姓名:" Font-Size="18px" Style="margin-left:10px"></asp:Label>
        <asp:Label ID="StudentName" runat="server" Text="******" ForeColor="#1ecdb9" Font-Size="18px" Style="margin-left:10px"></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="已报名您所发布的兼职:" Font-Size="18px" Style="margin-left:10px"></asp:Label>
        <asp:Label ID="WorkName" runat="server" Text="******" ForeColor="#1ecdb9" Font-Size="18px" Style="margin-left:10px"></asp:Label>
        <asp:Button ID="name" runat="server" Text="详细信息" onclick="Button1_Click" Font-Size="18px" Style="cursor: pointer;background-color: Transparent; border-style: none;outline: none;margin-left:10px" Font-Bold="True"  ForeColor="#1ECDB9" />
    </div><br />

    <div id="StudentReRight">
        <asp:Label ID="Yes" runat="server" Text="已通过" Visible="false" Style="width: 100px; height: 40px; line-height: 50px; float: right;color: #1ecdb9;margin-top: -53px; margin-right: 4%;"></asp:Label>
        <asp:Label ID="No" runat="server" Text="已拒绝" Visible="false" Style="width: 100px; height: 40px; line-height: 50px; float: right;color: red;margin-top: -53px; margin-right: 4%;"></asp:Label>
    </div>
    <hr style=" color:#e5e5e5" />
</div>
<div id="light"  runat="server" style="display: none; position: absolute; margin-top: -75px; width: 850px; height: 99%; border: 1px solid #1ecdb9; background-color: white; z-index: 1002; overflow: auto;">
    <table style="margin-left: 185px;">
        <tr style="width: 854px; height: 45px;">
            <td style="width:400px;">
                <asp:Label ID="name1" runat="server" Style="margin-left: 198px;" Text="学生简历" Font-Bold="true" Font-Size="22px" ForeColor="#1ecdb9"></asp:Label>
            </td>
            
        </tr>
        <tr style="width: 854px; height: 45px;">
            <td style="width:400px;">
                <asp:Label ID="Label5" runat="server" Text="姓名:" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
            <td>
                <asp:Label ID="StudentName1" runat="server" Text="******"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px;height: 45px;">
            <td style="width:400px;">
                <asp:Label ID="Label7" runat="server" Font-Size="18px" ForeColor="#1ecdb9" Text="性别:" />
            </td>
            <td>
                <asp:Label ID="StudentSex" runat="server" Text="*"></asp:Label>
            </td>
        </tr>

        <tr style="width: 854px; height: 45px;">
            <td style="width:400px;">
                <asp:Label ID="Label8" runat="server" Text="年龄:" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
            <td>
                <asp:Label ID="StudentAge" runat="server" Text="**"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px;height: 45px;">
            <td style="width:400px;">
                <asp:Label ID="Label9" runat="server" Text="电话号码:" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
            <td>
                <asp:Label ID="StudentTel" runat="server" Text="***********"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px;height: 45px;">
            <td style="width:400px;">
                <asp:Label ID="Label4" runat="server" Text="学生住址:" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
            <td>
                <asp:Label ID="StudentAdress" runat="server" Text="******"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px; height: 45px;">
            <td style="width:400px;">
                <asp:Label ID="Label2" runat="server" Text="民族:" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
            <td>
                <asp:Label ID="StudentNation" runat="server" Text="****"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px; height: 45px;">
            <td style="width:400px;">
                <asp:Label ID="Label3" runat="server" Text="政治面貌:" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
            <td>
                <asp:Label ID="StudentPolitical" runat="server" Text="****"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px;height: 45px;">
            <td style="width:400px;">
                <asp:Label ID="Label10" runat="server" Text="专业:" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
            <td>
                <asp:Label ID="StudentProfessional" runat="server" Text="****"></asp:Label>
            </td>
        </tr>
        <tr style="width: 854px;">
            <td style="width:400px;">
                <asp:Label ID="Label11" runat="server" Text="个人描述:" Font-Size="18px" ForeColor="#1ecdb9"></asp:Label>
            </td>
            <td style="width:200px;word-break:break-all;">
                <asp:Label ID="StudentEvaluation" runat="server" Text="******************************"></asp:Label>
            </td>
        </tr>
    </table>

    <br />
    <br />
    <asp:Button ID="Button2" runat="server" useHandCursor="true"   Text="关闭" OnClick="Button2_Click" Style="margin-left: 383px; background-color: Transparent; border-style: none; outline: none;  margin-bottom: 30px; display: block; width: 100px; height: 40px;line-height: 40px; text-align: center; border-radius: 6px; border: 1px solid #1ecdb9; font-size: 14px; color: #1ecdb9; cursor: pointer;" />
</div>
