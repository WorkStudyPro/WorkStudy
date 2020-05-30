<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Master.master" AutoEventWireup="true" CodeFile="Student.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
                <asp:Label ID="Label8" runat="server" Text="学生账号管理" Font-Bold="true" ForeColor="#1ecdb9" style="margin-left: 100px;" Font-Size="25px" ></asp:Label>
                <br />
                <br />
               <hr style="border:0;height:1px;background-color:#00b4aa;"/>
     
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=123.56.70.108;Initial Catalog=Work_Study;Persist Security Info=True;User ID=sa;Password=owowanglea*98" DeleteCommand="DELETE FROM [Table_Student] WHERE [S_ID] = @S_ID" InsertCommand="INSERT INTO [Table_Student] ([S_ID], [S_PassWord], [S_Name], [S_Sex], [S_Age], [S_Tel], [S_Adress]) VALUES (@S_ID, @S_PassWord, @S_Name, @S_Sex, @S_Age, @S_Tel, @S_Adress)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Table_Student]" UpdateCommand="UPDATE [Table_Student] SET [S_PassWord] = @S_PassWord, [S_Name] = @S_Name, [S_Sex] = @S_Sex, [S_Age] = @S_Age, [S_Tel] = @S_Tel, [S_Adress] = @S_Adress WHERE [S_ID] = @S_ID">
         <DeleteParameters>
             <asp:Parameter Name="S_ID" Type="String" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="S_ID" Type="String" />
             <asp:Parameter Name="S_PassWord" Type="Int32" />
             <asp:Parameter Name="S_Name" Type="String" />
             <asp:Parameter Name="S_Sex" Type="String" />
             <asp:Parameter Name="S_Age" Type="Int32" />
             <asp:Parameter Name="S_Tel" Type="String" />
             <asp:Parameter Name="S_Adress" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="S_PassWord" Type="Int32" />
             <asp:Parameter Name="S_Name" Type="String" />
             <asp:Parameter Name="S_Sex" Type="String" />
             <asp:Parameter Name="S_Age" Type="Int32" />
             <asp:Parameter Name="S_Tel" Type="String" />
             <asp:Parameter Name="S_Adress" Type="String" />
             <asp:Parameter Name="S_ID" Type="String" />
         </UpdateParameters>
     </asp:SqlDataSource>
    <br />
     <asp:ListView ID="ListView1" runat="server" DataKeyNames="S_ID" DataSourceID="SqlDataSource1">
         <AlternatingItemTemplate>
             <tr style="background-color: #FFFFFF;color: #284775;height:50px;text-align:center">
                 
                 <td>
                     <asp:Label ID="S_IDLabel" runat="server" Text='<%# Eval("S_ID") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_PassWordLabel" runat="server" Text='<%# Eval("S_PassWord") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_NameLabel" runat="server" Text='<%# Eval("S_Name") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_SexLabel" runat="server" Text='<%# Eval("S_Sex") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_AgeLabel" runat="server" Text='<%# Eval("S_Age") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_TelLabel" runat="server" Text='<%# Eval("S_Tel") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_AdressLabel" runat="server" Text='<%# Eval("S_Adress") %>' />
                 </td>
                 <td>
                     <asp:Button ID="EditButton" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Edit" Text="修改账号" />
                 </td>
                 <td>
                     <asp:Button ID="DeleteButton" width="70px" Font-Size="17px" ForeColor="red" BackColor="White" style="cursor:pointer" runat="server" CommandName="Delete" Text="删除账号" />
                 </td>
             </tr>
         </AlternatingItemTemplate>
         <EditItemTemplate>
           <tr style="background-color: white;height:50px;text-align:center">
                
                 <td>
                     <asp:Label ID="S_IDLabel1" Width="120px" runat="server" Text='<%# Eval("S_ID") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_PassWordTextBox" Width="120px" Font-Size="larger" Style="color:RGBA(165,165,166,39)" runat="server" Text='<%# Bind("S_PassWord") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_NameTextBox" Width="70px" Font-Size="larger" Style="color:RGBA(165,165,166,39)" runat="server" Text='<%# Bind("S_Name") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_SexTextBox" Width="50px" Font-Size="larger" Style="color:RGBA(165,165,166,39)" runat="server" Text='<%# Bind("S_Sex") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_AgeTextBox" Width="50px" Font-Size="larger" Style="color:RGBA(165,165,166,39)" runat="server" Text='<%# Bind("S_Age") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_TelTextBox" Width="120px" Font-Size="larger" Style="color:RGBA(165,165,166,39)" runat="server" Text='<%# Bind("S_Tel") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_AdressTextBox" Width="150px" Font-Size="larger" Style="color:RGBA(165,165,166,39)" runat="server" Text='<%# Bind("S_Adress") %>' />
                 </td>
                  <td>
                     <asp:Button ID="UpdateButton" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Update" Text="确认修改" />
                 </td>
                 <td>
                     <asp:Button ID="CancelButton" width="70px" Font-Size="17px" ForeColor="red" BackColor="White" style="cursor:pointer" runat="server" CommandName="Cancel" Text="取消修改" />
                 </td>
             </tr>
         </EditItemTemplate>
         <EmptyDataTemplate>
             <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #FFFFFF;border-style:none;border-width:1px;">
                 <tr>
                     <td>未返回数据。</td>
                 </tr>
             </table>
         </EmptyDataTemplate>
         <InsertItemTemplate>
             <tr style="">
                 
                 <td>
                     <asp:TextBox ID="S_IDTextBox" runat="server" Text='<%# Bind("S_ID") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_PassWordTextBox" runat="server" Text='<%# Bind("S_PassWord") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_NameTextBox" runat="server" Text='<%# Bind("S_Name") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_SexTextBox" runat="server" Text='<%# Bind("S_Sex") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_AgeTextBox" runat="server" Text='<%# Bind("S_Age") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_TelTextBox" runat="server" Text='<%# Bind("S_Tel") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="S_AdressTextBox" runat="server" Text='<%# Bind("S_Adress") %>' />
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
             <tr style="color: #333333;height:50px;text-align:center">
                
                 <td>
                     <asp:Label ID="S_IDLabel" Width="120px" runat="server" Text='<%# Eval("S_ID") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_PassWordLabel" Width="120px" runat="server" Text='<%# Eval("S_PassWord") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_NameLabel" Width="70px" runat="server" Text='<%# Eval("S_Name") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_SexLabel" Width="50px" runat="server" Text='<%# Eval("S_Sex") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_AgeLabel" Width="50px" runat="server" Text='<%# Eval("S_Age") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_TelLabel" Width="120px" runat="server" Text='<%# Eval("S_Tel") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_AdressLabel" Width="150px" runat="server" Text='<%# Eval("S_Adress") %>' />
                 </td>
                 <td>
                     <asp:Button ID="EditButton" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Edit" Text="修改账号" />
                 </td>
                  <td>
                     <asp:Button ID="DeleteButton" width="70px" Font-Size="17px" ForeColor="red" BackColor="White" style="cursor:pointer" runat="server" CommandName="Delete" Text="删除账号" />
                 </td>
             </tr>
         </ItemTemplate>
         <LayoutTemplate>
             <table runat="server">
                 <tr runat="server">
                     <td runat="server">
                         <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;margin-top:50px;margin-left:300px;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                             <tr runat="server" style="background-color: #FFFFFF;color: #1ecdb9;height:50px;">
                                 
                                 <th runat="server">学生账号</th>
                                 <th runat="server">学生密码</th>
                                 <th runat="server">学生姓名</th>
                                 <th runat="server">学生性别</th>
                                 <th runat="server">学生年龄</th>
                                 <th runat="server">学生电话</th>
                                 <th runat="server">住宿宿舍</th>
                                 <th runat="server"></th>
                                 <th runat="server"></th>
                             </tr>
                             <tr id="itemPlaceholder" runat="server">
                             </tr>
                         </table>
                     </td>
                 </tr>
                 <%--<tr runat="server">
                     <td runat="server" style="">
                         <asp:DataPager ID="DataPager1" runat="server">
                             <Fields>
                                 <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                             </Fields>
                         </asp:DataPager>
                     </td>
                 </tr>--%>
             </table>
         </LayoutTemplate>
         <SelectedItemTemplate>
             <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;height:50px;">
                 
                 <td>
                     <asp:Label ID="S_IDLabel" runat="server" Text='<%# Eval("S_ID") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_PassWordLabel" runat="server" Text='<%# Eval("S_PassWord") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_NameLabel" runat="server" Text='<%# Eval("S_Name") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_SexLabel" runat="server" Text='<%# Eval("S_Sex") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_AgeLabel" runat="server" Text='<%# Eval("S_Age") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_TelLabel" runat="server" Text='<%# Eval("S_Tel") %>' />
                 </td>
                 <td>
                     <asp:Label ID="S_AdressLabel" runat="server" Text='<%# Eval("S_Adress") %>' />
                 </td>
                 <td>
                     <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                 </td>
                 <td>
                     <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                 </td>
             </tr>
         </SelectedItemTemplate>
     </asp:ListView>
</asp:Content>

