<%@ Control Language="C#" AutoEventWireup="true" CodeFile="setpass.ascx.cs" Inherits="setpass" %>
<asp:Panel ID="Panel6" runat="server" Height="750px" Width="1550px" BackColor="white">
     <br />
                <asp:Label ID="Label8" runat="server" Text="修改密码" Font-Size="25px" ></asp:Label>
                <br />
                <br />
               
                <hr style="border:0;height:1px;background-color:#00b4aa;"/>
                <br />
                
                &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Style="margin-left: 5%;font-size: 21px;" ForeColor="Red" Text="*原密码"></asp:Label>
                
                <br />
                <asp:TextBox ID="TextBox1"  type="password" style="background:transparent;border:1px solid #e5e5e5;margin-left:5%;" runat="server" Height="30px" Width="180px"  Font-Size="Medium"></asp:TextBox><%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ForeColor="Red" runat="server" ErrorMessage="*不能为空" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>--%>
   
                 <br />
                 <br /><br />
                &nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Style="margin-left: 5%;font-size: 21px;" ForeColor="Red" Text="*新密码"></asp:Label>
                
                <br />
                <asp:TextBox ID="TextBox2" type="password" style="background:transparent;border:1px solid #e5e5e5;margin-left:5%;" runat="server" Height="30px" Width="180px" Font-Size="Medium"></asp:TextBox><asp:CompareValidator ID="CompareValidator2" runat="server" ForeColor="Red" ErrorMessage="*原密码与新密码一样" ControlToValidate="TextBox2" ControlToCompare="TextBox1" Operator="NotEqual"></asp:CompareValidator>

                 <br />
                 <br /><br />
                &nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Style="margin-left: 5%;font-size: 21px;" ForeColor="Red" Text="*再次输入新密码"></asp:Label>
                
                <br />
                <asp:TextBox ID="TextBox3" type="password" style="background:transparent;border:1px solid #e5e5e5;margin-left:5%;" runat="server" Height="30px" Width="180px" Font-Size="Medium"></asp:TextBox><asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*两次密码不相同" ControlToCompare="TextBox2" ForeColor="Red" ControlToValidate="TextBox3"></asp:CompareValidator>
                <br />
                <br />
                <br />
                <br />
                
                <asp:Button ID="Button1" ForeColor=" white" runat="server" Text="确认修改" style="cursor:pointer;background-color:#00b4aa;font-size: 15pt;border: 0px #93bee2 solid;border-bottom: #93bee2 1px solid;border-left: #93bee2 1px solid;border-right: #93bee2 1px solid;border-top: #93bee2 1px solid;border-radius:5px;/*圆角按钮*/margin-left:7%;"  Height="30px" Width="100px" />





</asp:Panel>
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/psw.js"></script>
<script>
    $(function () {
        $("#TextBox1").pstrength();
        $("#TextBox2").pstrength();
        $("#TextBox3").pstrength();
    })
</script>