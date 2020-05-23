<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="SetPass.aspx.cs" Inherits="Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><div id="LeftUp" style="width:200px;height:100px;margin-left: 300px;margin-top: 120px;background-color: white;border-radius: 5px;">
        <br />
        <asp:HyperLink ID="MySet" runat="server" Style="margin-left:64px" NavigateUrl="~/Student/Set.aspx" Font-Underline="false"  Font-Size="Large">个人信息</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="SetPass" runat="server" Style="margin-left:64px" NavigateUrl="~/Student/SetPass.aspx" Font-Underline="false" ForeColor="#00b4aa" Font-Size="Large">修改密码</asp:HyperLink>
    </div>

    <div id="LeftDown" style="width:200px;height:150px;margin-left: 300px;margin-top: 100px;background-color: white;border-radius: 5px;" >
        <br />
        <asp:HyperLink ID="MyRe" Style="margin-left:64px" Font-Size="Large" runat="server">个人简历</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="MyWork" Style="margin-left:64px" Font-Size="Large" runat="server">我的兼职</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="Exit" Style="margin-left:64px" Font-Size="Large" runat="server">退出登录</asp:HyperLink>
    </div>


    <div id="Center" style="width:800px;height:600px;margin-left: 700px;margin-top: -350px;background-color: white;border-radius: 5px;">
             <br />
    <asp:Label ID="Label8" runat="server" Text="修改密码" Font-Bold="true" ForeColor="#1ecdb9" Style="margin-left: 100px;" Font-Size="25px"></asp:Label>
    <br />
    <br />
        <hr style="border: 0; height: 1px; background-color: #00b4aa;" />
         <br /> <br />

                <br />
        <div id="PWD" style="margin-left: 310px;font-size:18px;">
                &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" ForeColor="Red" Text="*原密码"></asp:Label>

                <br />
                <asp:TextBox ID="OldPwd" runat="server" Height="30px" Width="180px" Font-Size="Medium" AutoCompleteType="Disabled"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server"  ErrorMessage="*不能为空" ControlToValidate="OldPwd" Display="Dynamic"></asp:RequiredFieldValidator>

                <br />
                <br />
                &nbsp;&nbsp;<asp:Label ID="Label10" runat="server" ForeColor="Red" Text="*新密码"></asp:Label>

                <br />
                <asp:TextBox ID="NewPwd" runat="server" Height="30px" Width="180px" Font-Size="Medium" AutoCompleteType="Disabled"></asp:TextBox><asp:CompareValidator ID="CompareValidator2" runat="server" ForeColor="Red"  ErrorMessage="*原密码与新密码一样" ControlToValidate="NewPwd" ControlToCompare="OldPwd" Operator="NotEqual"></asp:CompareValidator>

                <br />
                <br />
                &nbsp;&nbsp;<asp:Label ID="Label11" runat="server" ForeColor="Red" Text="*再次输入新密码"></asp:Label>

                <br />
                <asp:TextBox ID="NewPwd2" runat="server" Height="30px" Width="180px" Font-Size="Medium" AutoCompleteType="Disabled"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server"  ErrorMessage="*两次密码不相同" ControlToCompare="NewPwd" ForeColor="Red" ControlToValidate="NewPwd2"></asp:CompareValidator>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="SetPassWord" ForeColor=" white" runat="server" Text="确认修改" Style="cursor: pointer;background-color: #00b4aa;font-size: 12pt;border: 0px #93bee2 solid;border-bottom: #93bee2 1px solid;border-left: #93bee2 1px solid;border-right: #93bee2 1px solid;border-top: #93bee2 1px solid;border-radius: 5px; /*圆角按钮*/margin-left: 5%;" Height="30px" Width="100px" OnClick="SetPassWord_Click"  />
           

        </div>
    </div>
</asp:Content>

