<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Set.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel6" runat="server" Height="750px" Width="1550px" BackColor="white">
                <br />
                <asp:Label ID="Label8" runat="server" Text="管理员基本信息" Font-Bold="true" ForeColor="#1ecdb9" style="margin-left: 100px;" Font-Size="25px" ></asp:Label>
                <br />
                <br />
               <hr style="border:0;height:1px;background-color:#00b4aa;"/>
                <br />
                <asp:Label ID="Label9" runat="server" Text="管理员ID:" style="font-size: 21px;margin-left: 100px;"></asp:Label>
                <asp:Label ID="Label10" runat="server" Text="20200312" Style="margin-left: 12%;font-size: 21px;"  ForeColor="#1ecdb9" ></asp:Label>


                <br /><hr style=" color:#e5e5e5;width:90%" />


                <asp:Label ID="Label11" runat="server" Text="姓名:" style="font-size: 21px; margin-left: 100px;"></asp:Label>
                <asp:Label ID="Label12" runat="server" Text="张三三" Style="margin-left: 15%;font-size: 21px;" ForeColor="#1ecdb9" Font-Size="17px"></asp:Label>
                <asp:TextBox ID="Name" Style="margin-left:225px;background:transparent;border:1px solid #e5e5e5;height: 26px;position: absolute;" runat="server" MaxLength="6" Placeholder="字符长度不超过6" Visible="False"></asp:TextBox>
               <asp:Button ID="GG" runat="server" style="background-color: Transparent; border-style: none;outline: none;cursor:pointer;float: right;margin-right: 15%;" Font-Size="21px" ForeColor="#1ecdb9" Text="更改" Font-Bold="true" OnClick="GG_Click" />
                <asp:Button ID="cancel" style="background-color: Transparent;border-style: none;outline: none;cursor:pointer;float: right;margin-right: 8%;" Font-Size="21px" ForeColor="#1ecdb9" runat="server" Text="取消" Font-Bold="true" OnClick="Cancel_Click" Visible="False" />
                <asp:Button ID="Button1" Style="background-color: Transparent;border-style: none;outline: none; cursor:pointer;float: right;margin-right: 67px;" Font-Size="21px" ForeColor="#1ecdb9" runat="server" Text="保存" Font-Bold="true" OnClick="Button1_Click" Visible="False" />
            
                
                <br /><hr style=" color:#e5e5e5;width:90%" />


                 <asp:Label ID="Label14" runat="server" Text="性别:" style="font-size: 21px;margin-left: 100px;"></asp:Label>
                <asp:Label ID="Label15" runat="server" Text="男" Style="margin-left: 16%;font-size: 21px;" ForeColor="#1ecdb9" Font-Size="17px"></asp:Label>
                <asp:TextBox ID="Sex" runat="server" Style="margin-left:225px;background:transparent;border:1px solid #e5e5e5;height: 26px;position: absolute;" MaxLength="6" Placeholder="字符长度不超过12" Visible="False"></asp:TextBox>
                <asp:Button ID="GG2" runat="server" style="background-color: Transparent; border-style: none;outline: none;cursor:pointer;float: right;margin-right: 15%;" Font-Size="21px" ForeColor="#1ecdb9" Text="更改" Font-Bold="true" OnClick="GG2_Click" />
                <asp:Button ID="cancel2" style="background-color: Transparent;border-style: none;outline: none;cursor:pointer;float: right;margin-right: 8%;" Font-Size="21px" ForeColor="#1ecdb9" runat="server" Text="取消" Font-Bold="true" OnClick="Cancel2_Click" Visible="False" />
                <asp:Button ID="Button2" Style="background-color: Transparent;border-style: none;outline: none; cursor:pointer;float: right;margin-right: 67px;" Font-Size="21px" ForeColor="#1ecdb9" runat="server" Text="保存" Font-Bold="true" OnClick="Button2_Click" Visible="False" />
                 
                
                <br /><hr style=" color:#e5e5e5;width:90%" />


                 <asp:Label ID="Label17" runat="server" Text="电话号码:" style="font-size: 21px;margin-left: 100px;"></asp:Label>
                <asp:Label ID="Label18" runat="server" Text="18582409158" Style="margin-left: 12%;font-size: 21px;" ForeColor="#1ecdb9" Font-Size="17px"></asp:Label>
                <asp:TextBox ID="Tel" Style="margin-left:185px;background:transparent;border:1px solid #e5e5e5;height: 26px;position: absolute;" runat="server" MaxLength="11" Placeholder="号码长度不超过11" Visible="False"></asp:TextBox>
                <asp:Button ID="GG3" runat="server" style="background-color: Transparent; border-style: none;outline: none;cursor:pointer;float: right;margin-right: 15%;" Font-Size="21px" ForeColor="#1ecdb9" Text="更改" Font-Bold="true" OnClick="GG3_Click" />
                <asp:Button ID="cancel3" style="background-color: Transparent;border-style: none;outline: none;cursor:pointer;float: right;margin-right: 8%;" Font-Size="21px" ForeColor="#1ecdb9" runat="server" Text="取消" Font-Bold="true" OnClick="Cancel3_Click" Visible="False" />
                <asp:Button ID="Button3" Style="background-color: Transparent;border-style: none;outline: none; cursor:pointer;float: right;margin-right: 67px;" Font-Size="21px" ForeColor="#1ecdb9" runat="server" Text="保存" Font-Bold="true" OnClick="Button3_Click" Visible="False" />
                
                
                <br /><hr style=" color:#e5e5e5;width:90%" />


                 <asp:Label ID="Label23" runat="server" Text="电子邮箱:" style="font-size: 21px;margin-left: 100px;"></asp:Label>
                <asp:Label ID="Label24" runat="server" Text="787406408@qq.com" Style="margin-left: 12%;font-size: 21px;" ForeColor="#1ecdb9" Font-Size="17px"></asp:Label>
                <asp:TextBox ID="Mail" runat="server" Style="margin-left:185px;background:transparent;border:1px solid #e5e5e5;height: 26px;position: absolute;" MaxLength="25" Placeholder="字符长度不超过50" Visible="False"></asp:TextBox>
                <asp:Button ID="GG5" runat="server" style="background-color: Transparent; border-style: none;outline: none;cursor:pointer;float: right;margin-right: 15%;" Font-Size="21px" ForeColor="#1ecdb9" Text="更改" Font-Bold="true" OnClick="GG5_Click" />
                <asp:Button ID="cancel5" style="background-color: Transparent;border-style: none;outline: none;cursor:pointer;float: right;margin-right: 8%;" Font-Size="21px" ForeColor="#1ecdb9" runat="server" Text="取消" Font-Bold="true" OnClick="Cancel5_Click" Visible="False" />
                <asp:Button ID="Button5" Style="background-color: Transparent;border-style: none;outline: none; cursor:pointer;float: right;margin-right: 67px;" Font-Size="21px" ForeColor="#1ecdb9" runat="server" Text="保存" Font-Bold="true" OnClick="Button5_Click" Visible="False"  />
                
                
                <br /><hr style=" color:#e5e5e5;width:90%" />


                  <asp:Label ID="Label26" runat="server" Text="上班时间:" style="font-size: 21px;margin-left: 100px;"></asp:Label>
                <asp:Label ID="Label27" runat="server" Text="9:00-17:00" Style="margin-left: 12%;font-size: 21px;" ForeColor="#1ecdb9" Font-Size="17px"></asp:Label>
                <asp:TextBox ID="Home" runat="server" Style="margin-left:185px;background:transparent;border:1px solid #e5e5e5;height: 26px;position: absolute;" MaxLength="25" Placeholder="字符长度不超过50" Visible="False"></asp:TextBox>
                <asp:Button ID="GG6" runat="server" style="background-color: Transparent; border-style: none;outline: none;cursor:pointer;float: right;margin-right: 15%;" Font-Size="21px" ForeColor="#1ecdb9" Text="更改" Font-Bold="true" OnClick="GG6_Click" />
                 <asp:Button ID="cancel6" style="background-color: Transparent;border-style: none;outline: none;cursor:pointer;float: right;margin-right: 8%;" Font-Size="21px" ForeColor="#1ecdb9" runat="server" Text="取消" Font-Bold="true" OnClick="Cancel6_Click" Visible="False" />
                <asp:Button ID="Button6" Style="background-color: Transparent;border-style: none;outline: none; cursor:pointer;float: right;margin-right: 67px;" Font-Size="21px" ForeColor="#1ecdb9" runat="server" Text="保存" Font-Bold="true" OnClick="Button6_Click" Visible="False"  />

            </asp:Panel>
</asp:Content>

