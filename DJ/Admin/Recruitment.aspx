﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Recruitment.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
               <br />
                <asp:Label ID="Label8" runat="server" Text="在招兼职" Font-Bold="true" ForeColor="#1ecdb9" style="margin-left: 100px;" Font-Size="25px" ></asp:Label>
                <br />
                <br />
               <hr style="border:0;height:1px;background-color:#00b4aa;"/>

     <br /><div id="ss">

    <asp:TextBox ID="TextBox1"  runat="server" style="float:left;margin-left: 30px;height:22px;border:1px solid #1ecdb9 ;margin-right: 30px;"></asp:TextBox>
         <asp:Button ID="select" runat="server"  Font-Size="21px" Font-Bold="true" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer;float:left" Text="查询" OnClick="select_Click" />
    
         </div><br /><br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" style="margin-left: 2px;position: absolute;margin-top: 4px;" Visible="False" DataKeyNames="J_ID" DataSourceID="SqlDataSource2">
        <Columns >
            <asp:TemplateField HeaderText="订单编号" InsertVisible="False" SortExpression="J_ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" style="font-size:17px;Width:81px;" Text='<%# Eval("J_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("J_ID") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Size="Larger" ForeColor="#1ECDB9" Height="50px" Width="81px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="商家账号" SortExpression="M_ID">
                <EditItemTemplate>
                    <asp:Label ID="TextBox1" style="font-size:17px;Width:81px;" runat="server" Text='<%# Eval("M_ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("M_ID") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Size="Larger" ForeColor="#1ECDB9" Height="50px" Width="80px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="招聘职位" SortExpression="W_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" style="font-size:17px;Width:99px;" Text='<%# Bind("W_Name") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("W_Name") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Size="Larger" ForeColor="#1ECDB9" Height="50px" Width="99px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="工作时间" SortExpression="W_Time">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" style="font-size:17px;Width:177px;" Text='<%# Bind("W_Time") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("W_Time") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Size="Larger" ForeColor="#1ECDB9" Height="50px" Width="177px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="工作地点" SortExpression="W_Place">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" style="font-size:17px;Width:182px;" Text='<%# Bind("W_Place") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("W_Place") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Size="Larger" ForeColor="#1ECDB9" Height="50px" Width="182px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="工作详情" SortExpression="W_Description">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" style="font-size:17px;Width:353px;" Text='<%# Bind("W_Description") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("W_Description") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Size="Larger" ForeColor="#1ECDB9" Height="50px" Width="353px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="需求人数" SortExpression="W_People">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" style="font-size:17px;Width:80px;" Text='<%# Bind("W_People") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("W_People") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Size="Larger" ForeColor="#1ECDB9" Height="50px" Width="80px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="薪资待遇" SortExpression="W_Money">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" style="font-size:17px;Width:80px;" Text='<%# Bind("W_Money") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("W_Money") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Size="Larger" ForeColor="#1ECDB9" Height="50px" Width="80px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="兼职状态" SortExpression="W_State">
                <EditItemTemplate>
                    <asp:Label ID="TextBox8" runat="server" style="font-size:17px;Width:81px;" Text='<%# Eval("W_State") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Eval("W_State") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Size="Larger" ForeColor="#1ECDB9" Height="50px" Width="80px" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="发布时间" SortExpression="W_ReleaseTime">
                <EditItemTemplate>
                    <asp:Label ID="TextBox9" runat="server" style="font-size:17px;Width:170px;" Text='<%# Eval("W_ReleaseTime") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Eval("W_ReleaseTime") %>'></asp:Label>
                </ItemTemplate>
                <HeaderStyle Font-Size="Larger" ForeColor="#1ECDB9" Height="50px" Width="170px" />
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="17px" ForeColor="#1ecdb9" Width="70px" CausesValidation="True" CommandName="Update" Text="确认修改"></asp:LinkButton>
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="17px" ForeColor="Red" Width="70px" CausesValidation="False" CommandName="Cancel" Text="取消修改"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="17px" ForeColor="#1ecdb9" Width="70px" CausesValidation="False" CommandName="Edit" Text="修改兼职"></asp:LinkButton>
                   <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="17px" ForeColor="Red" Width="70px" CausesValidation="False" CommandName="Delete" Text="删除兼职"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton3" Font-Size="17px" ForeColor="Red" Width="70px" runat="server" CausesValidation="false" CommandName="" Text="关闭兼职" OnClick="LinkButton3_Click1"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            
        </Columns>
               </asp:GridView>



               <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" DeleteCommand="DELETE FROM [Table_Work] WHERE [J_ID] = @J_ID" InsertCommand="INSERT INTO [Table_Work] ([M_ID], [W_Name], [W_Time], [W_Place], [W_Description], [W_People], [W_Money], [W_State], [W_ReleaseTime]) VALUES (@M_ID, @W_Name, @W_Time, @W_Place, @W_Description, @W_People, @W_Money, @W_State, @W_ReleaseTime)" SelectCommand="SELECT * FROM [Table_Work] WHERE ([M_ID] = @M_ID)" UpdateCommand="UPDATE [Table_Work] SET [M_ID] = @M_ID, [W_Name] = @W_Name, [W_Time] = @W_Time, [W_Place] = @W_Place, [W_Description] = @W_Description, [W_People] = @W_People, [W_Money] = @W_Money, [W_State] = @W_State, [W_ReleaseTime] = @W_ReleaseTime WHERE [J_ID] = @J_ID">
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
                   <SelectParameters>
                       <asp:ControlParameter ControlID="TextBox1" Name="M_ID" PropertyName="Text" Type="Int32" />
                   </SelectParameters>
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


    
    <asp:ListView ID="ListView1" runat="server"  DataKeyNames="J_ID" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            <tr style="background-color: #FFFFFF;color: #284775;text-align:center;height:50px;">
               
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
            <tr style="background-color: #FFFFFF;color: #284775;text-align:center;height:50px;">
                
                <td style="width:80px;">
                    <asp:Label ID="J_IDLabel1" Font-Size="16px" Width="77px" runat="server" Text='<%# Eval("J_ID") %>' />
                </td>
                <td style="width:80px;">
                    <asp:Label ID="M_IDTextBox" Font-Size="16px" Width="75px" runat="server" Text='<%# Eval("M_ID") %>' />
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
                    <asp:Label ID="W_StateTextBox" Font-Size="16px" Width="77px" runat="server" Text='<%# Eval("W_State") %>' />
                </td>
                <td style="width:170px;">
                    <asp:Label ID="W_ReleaseTimeTextBox" Font-Size="16px" Width="167px" runat="server" Text='<%# Eval("W_ReleaseTime") %>' />
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
            <tr style="background-color: White;color: #333333;text-align:center;height:50px;">
                
                <td style="width:80px;">
                    <asp:Label ID="J_IDLabel" runat="server" Text='<%# Eval("J_ID") %>' />
                </td>
                <td style="width:80px;">
                    <asp:Label ID="M_IDLabel" runat="server" Text='<%# Eval("M_ID") %>' />
                </td>
                <td style="width:99px;">
                    <asp:Label ID="W_NameLabel" runat="server" Text='<%# Eval("W_Name") %>' />
                </td>
                <td style="width:177px;">
                    <asp:Label ID="W_TimeLabel" runat="server" Text='<%# Eval("W_Time") %>' />
                </td>
                <td style="width:183px;">
                    <asp:Label ID="W_PlaceLabel" runat="server" Text='<%# Eval("W_Place") %>' />
                </td>
                <td style="width:353px;">
                    <asp:Label ID="W_DescriptionLabel" runat="server" Text='<%# Eval("W_Description") %>' />
                </td>
                <td style="width:80px;">
                    <asp:Label ID="W_PeopleLabel" runat="server" Text='<%# Eval("W_People") %>' />
                </td>
                <td style="width:80px;">
                    <asp:Label ID="W_MoneyLabel" runat="server" Text='<%# Eval("W_Money") %>' />
                </td>
                <td style="width:80px;">
                    <asp:Label ID="W_StateLabel" runat="server" Text='<%# Eval("W_State") %>' />
                </td>
                <td style="width:170px;">
                    <asp:Label ID="W_ReleaseTimeLabel" Width="167px" runat="server" Text='<%# Eval("W_ReleaseTime") %>' />
                </td>
                <td>
                    <asp:Button ID="Button1" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Edit" Text="修改兼职" />
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
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <tr runat="server" style="background-color: White;color: #1ecdb9;height:50px;">
                                
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
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;height:50px;">
                
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
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT * FROM [Table_Work] WHERE [W_State]='2'"  DeleteCommand="DELETE FROM [Table_Work] WHERE [J_ID] = @J_ID" InsertCommand="INSERT INTO [Table_Work] ([M_ID], [W_Name], [W_Time], [W_Place], [W_Description], [W_People], [W_Money], [W_State], [W_ReleaseTime]) VALUES (@M_ID, @W_Name, @W_Time, @W_Place, @W_Description, @W_People, @W_Money, @W_State, @W_ReleaseTime)" UpdateCommand="UPDATE [Table_Work] SET [M_ID] = @M_ID, [W_Name] = @W_Name, [W_Time] = @W_Time, [W_Place] = @W_Place, [W_Description] = @W_Description, [W_People] = @W_People, [W_Money] = @W_Money, [W_State] = @W_State, [W_ReleaseTime] = @W_ReleaseTime WHERE [J_ID] = @J_ID">
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

