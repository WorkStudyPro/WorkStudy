<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Recruitment.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
               <br />
                <asp:Label ID="Label8" runat="server" Text="在招兼职" Font-Bold="true" ForeColor="#1ecdb9" style="margin-left: 100px;" Font-Size="25px" ></asp:Label>
                <br />
                <br />
               <hr style="border:0;height:1px;background-color:#00b4aa;"/>

     <br /><br /><br />
    <asp:ListView ID="ListView1" runat="server"  DataKeyNames="J_ID" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;text-align:center">
               
                <td>
                    <asp:Label ID="J_IDLabel" runat="server" Text='<%# Eval("J_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="M_IDLabel" runat="server" Text='<%# Eval("M_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="W_NameLabel" runat="server" Text='<%# Eval("W_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="W_TimeLabel" runat="server" Text='<%# Eval("W_Time") %>' />
                </td>
                <td>
                    <asp:Label ID="W_PlaceLabel" Width="180px" runat="server" Text='<%# Eval("W_Place") %>' />
                </td>
                <td>
                    <asp:Label ID="W_DescriptionLabel" Width="350px" runat="server" Text='<%# Eval("W_Description") %>' />
                </td>
                <td>
                    <asp:Label ID="W_PeopleLabel" runat="server" Text='<%# Eval("W_People") %>' />
                </td>
                <td>
                    <asp:Label ID="W_MoneyLabel" runat="server" Text='<%# Eval("W_Money") %>' />
                </td>
                <td>
                    <asp:Label ID="W_StateLabel" runat="server" Text='<%# Eval("W_State") %>' />
                </td>
                <td>
                    <asp:Label ID="W_ReleaseTimeLabel" runat="server" Text='<%# Eval("W_ReleaseTime") %>' />
                </td>
                <td>
                     <asp:Button ID="EditButton" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Edit" Text="修改兼职" />
                </td>
                
                <td>
                    <asp:Button ID="Button2" width="70px" Font-Size="17px" ForeColor="red" BackColor="White" style="cursor:pointer" runat="server" Text="关闭兼职" OnClick="Button2_Click" />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;text-align:center;">
                
                <td style="width:80px;">
                    <asp:Label ID="J_IDLabel1" Font-Size="16px" Width="77px" runat="server" Text='<%# Eval("J_ID") %>' />
                </td>
                <td style="width:80px;">
                    <asp:TextBox ID="M_IDTextBox" Font-Size="16px" Width="75px" runat="server" Text='<%# Bind("M_ID") %>' />
                </td>
                <td style="width:99px;">
                    <asp:TextBox ID="W_NameTextBox" Font-Size="16px" Width="94px" runat="server" Text='<%# Bind("W_Name") %>' />
                </td>
                <td style="width:177px;">
                    <asp:TextBox ID="W_TimeTextBox" Font-Size="16px" Width="171px" runat="server" Text='<%# Bind("W_Time") %>' />
                </td>
                <td style="width:183px;">
                    <asp:TextBox ID="W_PlaceTextBox" Font-Size="16px"  Width="180px" runat="server" Text='<%# Bind("W_Place") %>' />
                </td>
                <td style="width:353px;">
                    <asp:TextBox ID="W_DescriptionTextBox" Font-Size="16px" Width="350px" runat="server" Text='<%# Bind("W_Description") %>' />
                </td>
                <td style="width:80px;">
                    <asp:TextBox ID="W_PeopleTextBox" Font-Size="16px" Width="77px" runat="server" Text='<%# Bind("W_People") %>' />
                </td>
                <td style="width:80px;">
                    <asp:TextBox ID="W_MoneyTextBox" Font-Size="16px" Width="77px" runat="server" Text='<%# Bind("W_Money") %>' />
                </td>
                <td style="width:80px;">
                    <asp:TextBox ID="W_StateTextBox" Font-Size="16px" Width="77px" runat="server" Text='<%# Bind("W_State") %>' />
                </td>
                <td style="width:170px;">
                    <asp:TextBox ID="W_ReleaseTimeTextBox" Font-Size="16px" Width="167px" runat="server" Text='<%# Bind("W_ReleaseTime") %>' />
                </td>
                <td>
                    <asp:Button ID="UpdateButton" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Update" Text="更新" />
                </td>
                <td>
                    <asp:Button ID="CancelButton" width="70px" Font-Size="17px" ForeColor="red" BackColor="White" style="cursor:pointer" runat="server" CommandName="Cancel" Text="取消" />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>未返回数据。</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="text-align:center">
                
                <td>&nbsp;</td>
                <td>
                    <asp:TextBox ID="M_IDTextBox" runat="server" Text='<%# Bind("M_ID") %>' />
                </td>
                <td>
                    <asp:TextBox ID="W_NameTextBox" runat="server" Text='<%# Bind("W_Name") %>' />
                </td>
                <td>
                    <asp:TextBox ID="W_TimeTextBox" runat="server" Text='<%# Bind("W_Time") %>' />
                </td>
                <td>
                    <asp:TextBox ID="W_PlaceTextBox" runat="server" Text='<%# Bind("W_Place") %>' />
                </td>
                <td>
                    <asp:TextBox ID="W_DescriptionTextBox" runat="server" Text='<%# Bind("W_Description") %>' />
                </td>
                <td>
                    <asp:TextBox ID="W_PeopleTextBox" runat="server" Text='<%# Bind("W_People") %>' />
                </td>
                <td>
                    <asp:TextBox ID="W_MoneyTextBox" runat="server" Text='<%# Bind("W_Money") %>' />
                </td>
                <td>
                    <asp:TextBox ID="W_StateTextBox" runat="server" Text='<%# Bind("W_State") %>' />
                </td>
                <td>
                    <asp:TextBox ID="W_ReleaseTimeTextBox" runat="server" Text='<%# Bind("W_ReleaseTime") %>' />
                </td>
                <td>
                    <asp:Button ID="InsertButton" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Insert" Text="插入" />
                </td>
                <td>
                    <asp:Button ID="CancelButton" width="70px" Font-Size="17px" ForeColor="red" BackColor="White" style="cursor:pointer" runat="server" CommandName="Cancel" Text="清除" />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #E0FFFF;color: #333333;text-align:center">
                
                <td>
                    <asp:Label ID="J_IDLabel" runat="server" Text='<%# Eval("J_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="M_IDLabel" runat="server" Text='<%# Eval("M_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="W_NameLabel" runat="server" Text='<%# Eval("W_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="W_TimeLabel" runat="server" Text='<%# Eval("W_Time") %>' />
                </td>
                <td>
                    <asp:Label ID="W_PlaceLabel" runat="server" Text='<%# Eval("W_Place") %>' />
                </td>
                <td>
                    <asp:Label ID="W_DescriptionLabel" runat="server" Text='<%# Eval("W_Description") %>' />
                </td>
                <td>
                    <asp:Label ID="W_PeopleLabel" runat="server" Text='<%# Eval("W_People") %>' />
                </td>
                <td>
                    <asp:Label ID="W_MoneyLabel" runat="server" Text='<%# Eval("W_Money") %>' />
                </td>
                <td>
                    <asp:Label ID="W_StateLabel" runat="server" Text='<%# Eval("W_State") %>' />
                </td>
                <td>
                    <asp:Label ID="W_ReleaseTimeLabel" runat="server" Text='<%# Eval("W_ReleaseTime") %>' />
                </td>
                <td>
                    <asp:Button ID="Button1" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="#E0FFFF" style="cursor:pointer" runat="server" CommandName="Edit" Text="修改兼职" />
                </td>
               <td>
                    <asp:Button ID="Button2" width="70px" Font-Size="17px" ForeColor="red" BackColor="White" style="cursor:pointer" runat="server" Text="关闭兼职" OnClick="Button2_Click" />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;margin-left:8px;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: #E0FFFF;color: #1ecdb9;">
                                
                                <th runat="server" style="font-size:larger">订单编号</th>
                                <th runat="server" style="font-size:larger">商家账号</th>
                                <th runat="server" style="font-size:larger">招聘职位</th>
                                <th runat="server" style="font-size:larger">工作时间</th>
                                <th runat="server" style="font-size:larger">工作地点</th>
                                <th runat="server" style="font-size:larger">工作详情</th>
                                <th runat="server" style="font-size:larger">需求人数</th>
                                <th runat="server" style="font-size:larger">薪资待遇</th>
                                <th runat="server" style="font-size:larger">兼职状态</th>
                                <th runat="server" style="font-size:larger">发布时间</th>
                                <th runat="server"></th>
                                <th runat="server"></th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
              
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                
                <td>
                    <asp:Label ID="J_IDLabel" runat="server" Text='<%# Eval("J_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="M_IDLabel" runat="server" Text='<%# Eval("M_ID") %>' />
                </td>
                <td>
                    <asp:Label ID="W_NameLabel" runat="server" Text='<%# Eval("W_Name") %>' />
                </td>
                <td>
                    <asp:Label ID="W_TimeLabel" runat="server" Text='<%# Eval("W_Time") %>' />
                </td>
                <td>
                    <asp:Label ID="W_PlaceLabel" runat="server" Text='<%# Eval("W_Place") %>' />
                </td>
                <td>
                    <asp:Label ID="W_DescriptionLabel" runat="server" Text='<%# Eval("W_Description") %>' />
                </td>
                <td>
                    <asp:Label ID="W_PeopleLabel" runat="server" Text='<%# Eval("W_People") %>' />
                </td>
                <td>
                    <asp:Label ID="W_MoneyLabel" runat="server" Text='<%# Eval("W_Money") %>' />
                </td>
                <td>
                    <asp:Label ID="W_StateLabel" runat="server" Text='<%# Eval("W_State") %>' />
                </td>
                <td>
                    <asp:Label ID="W_ReleaseTimeLabel" runat="server" Text='<%# Eval("W_ReleaseTime") %>' />
                </td>
                <td>
                    <asp:Button ID="EditButton" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Edit" Text="修改兼职" />
                </td>
               <td>
                    <asp:Button ID="Button2" width="70px" Font-Size="17px" ForeColor="red" BackColor="White" style="cursor:pointer" runat="server" Text="关闭兼职" OnClick="Button2_Click" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [Table_Work]" DeleteCommand="DELETE FROM [Table_Work] WHERE [J_ID] = @J_ID" InsertCommand="INSERT INTO [Table_Work] ([M_ID], [W_Name], [W_Time], [W_Place], [W_Description], [W_People], [W_Money], [W_State], [W_ReleaseTime]) VALUES (@M_ID, @W_Name, @W_Time, @W_Place, @W_Description, @W_People, @W_Money, @W_State, @W_ReleaseTime)" UpdateCommand="UPDATE [Table_Work] SET [M_ID] = @M_ID, [W_Name] = @W_Name, [W_Time] = @W_Time, [W_Place] = @W_Place, [W_Description] = @W_Description, [W_People] = @W_People, [W_Money] = @W_Money, [W_State] = @W_State, [W_ReleaseTime] = @W_ReleaseTime WHERE [J_ID] = @J_ID">
    <DeleteParameters>
        <asp:Parameter Name="J_ID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="M_ID" Type="Int32" />
        <asp:Parameter Name="W_Name" Type="String" />
        <asp:Parameter Name="W_Time" Type="String" />
        <asp:Parameter Name="W_Place" Type="String" />
        <asp:Parameter Name="W_Description" Type="String" />
        <asp:Parameter Name="W_People" Type="Int32" />
        <asp:Parameter Name="W_Money" Type="Int32" />
        <asp:Parameter Name="W_State" Type="String" />
        <asp:Parameter Name="W_ReleaseTime" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="M_ID" Type="Int32" />
        <asp:Parameter Name="W_Name" Type="String" />
        <asp:Parameter Name="W_Time" Type="String" />
        <asp:Parameter Name="W_Place" Type="String" />
        <asp:Parameter Name="W_Description" Type="String" />
        <asp:Parameter Name="W_People" Type="Int32" />
        <asp:Parameter Name="W_Money" Type="Int32" />
        <asp:Parameter Name="W_State" Type="String" />
        <asp:Parameter Name="W_ReleaseTime" Type="DateTime" />
        <asp:Parameter Name="J_ID" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

