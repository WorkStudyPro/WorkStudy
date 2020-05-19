<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Merchants.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
                <asp:Label ID="Label8" runat="server" Text="商家账号管理" Font-Bold="true" ForeColor="#1ecdb9" style="margin-left: 100px;" Font-Size="25px" ></asp:Label>
                <br />
                <br />
               <hr style="border:0;height:1px;background-color:#00b4aa;"/>

     <br /><br /><br />
    
    
     <asp:ListView ID="ListView1" runat="server" DataKeyNames="M_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
         <AlternatingItemTemplate>
             <tr style="background-color: #FFFFFF;color: #284775;height:50px;">
                 
                 <td Style="text-align:center">
                     <asp:Label ID="M_IDLabel"  runat="server" Text='<%# Eval("M_ID") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_PassWordLabel" runat="server" Text='<%# Eval("M_PassWord") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_PrincinpleLabel" runat="server" Text='<%# Eval("M_Princinple") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_NameLabel" runat="server" Text='<%# Eval("M_Name") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_SexLabel" runat="server" Text='<%# Eval("M_Sex") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_TeleLabel" runat="server" Text='<%# Eval("M_Tele") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_AdressLabel" runat="server" Text='<%# Eval("M_Adress") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_EmailLabel" runat="server" Text='<%# Eval("M_Email") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_CreaditRatingLabel" runat="server" Text='<%# Eval("M_CreaditRating") %>' />
                 </td>
                 <td>
                     <asp:Label ID="M_LoginTimeLabel" runat="server" Text='<%# Eval("M_LoginTime") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Button ID="EditButton" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Edit" Text="编辑" />
                 </td>
                 <td Style="text-align:center">
                      <asp:Button ID="DeleteButton" width="70px" Font-Size="17px" ForeColor="red" BackColor="White" style="cursor:pointer" runat="server" CommandName="Delete" Text="删除" />
                 </td>
             </tr>
         </AlternatingItemTemplate>
         <EditItemTemplate>
             <tr style="background-color: white;height:50px;">
                 
                 <td>
                     <asp:Label ID="M_IDLabel1" width="110px"  runat="server" Text='<%# Eval("M_ID") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="M_PassWordTextBox" width="140px" runat="server" Text='<%# Bind("M_PassWord") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="M_PrincinpleTextBox" width="120px" runat="server" Text='<%# Bind("M_Princinple") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="M_NameTextBox" width="150px" runat="server" Text='<%# Bind("M_Name") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="M_SexTextBox" width="80px" runat="server" Text='<%# Bind("M_Sex") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="M_TeleTextBox"  runat="server" Text='<%# Bind("M_Tele") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="M_AdressTextBox"  runat="server" Text='<%# Bind("M_Adress") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="M_EmailTextBox"  runat="server" Text='<%# Bind("M_Email") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="M_CreaditRatingTextBox" width="80px" runat="server" Text='<%# Bind("M_CreaditRating") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="M_LoginTimeTextBox" width="185px" runat="server" Text='<%# Bind("M_LoginTime") %>' />
                 </td>
                 <td>
                     <asp:Button ID="UpdateButton" Width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Update" Text="更新" />
                 </td>
                 <td>
                     <asp:Button ID="CancelButton" Width="70px" Font-Size="17px" ForeColor="red" BackColor="White" style="cursor:pointer" runat="server" CommandName="Cancel" Text="取消" />
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
                
                 <td Style="text-align:center">
                     <asp:TextBox ID="M_IDTextBox" width="110px" runat="server" Text='<%# Bind("M_ID") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:TextBox ID="M_PassWordTextBox" width="140px" runat="server" Text='<%# Bind("M_PassWord") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:TextBox ID="M_PrincinpleTextBox" width="120px" runat="server" Text='<%# Bind("M_Princinple") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:TextBox ID="M_NameTextBox" width="150px" runat="server" Text='<%# Bind("M_Name") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:TextBox ID="M_SexTextBox" width="80px" runat="server" Text='<%# Bind("M_Sex") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:TextBox ID="M_TeleTextBox" runat="server" Text='<%# Bind("M_Tele") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:TextBox ID="M_AdressTextBox" runat="server" Text='<%# Bind("M_Adress") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:TextBox ID="M_EmailTextBox" runat="server" Text='<%# Bind("M_Email") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:TextBox ID="M_CreaditRatingTextBox" Width="80px" runat="server" Text='<%# Bind("M_CreaditRating") %>' />
                 </td>
                 <td>
                     <asp:TextBox ID="M_LoginTimeTextBox" Width="185px" runat="server" Text='<%# Bind("M_LoginTime") %>' />
                 </td>
                  <td Style="text-align:center">
                     <asp:Button ID="InsertButton"  width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Insert" Text="插入" />
                 </td>
                 <td Style="text-align:center">
                     <asp:Button ID="CancelButton" width="70px" Font-Size="17px" ForeColor="red" BackColor="White" style="cursor:pointer" runat="server" CommandName="Cancel" Text="清除" />
                 </td>
             </tr>
         </InsertItemTemplate>
         <ItemTemplate>
             <tr style="background-color: #E0FFFF;color: #333333;height:50px;">
                
                 <td Style="text-align:center">
                     <asp:Label ID="M_IDLabel"   runat="server" Text='<%# Eval("M_ID") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_PassWordLabel" runat="server" Text='<%# Eval("M_PassWord") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_PrincinpleLabel" runat="server" Text='<%# Eval("M_Princinple") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_NameLabel" runat="server" Text='<%# Eval("M_Name") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_SexLabel" runat="server" Text='<%# Eval("M_Sex") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_TeleLabel" runat="server" Text='<%# Eval("M_Tele") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_AdressLabel" runat="server" Text='<%# Eval("M_Adress") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_EmailLabel" runat="server" Text='<%# Eval("M_Email") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_CreaditRatingLabel" runat="server" Text='<%# Eval("M_CreaditRating") %>' />
                 </td>
                 <td>
                     <asp:Label ID="M_LoginTimeLabel" runat="server" Text='<%# Eval("M_LoginTime") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Button ID="EditButton" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="#E0FFFF"  style="cursor:pointer" runat="server" CommandName="Edit" Text="编辑" />
                 </td>
                 <td Style="text-align:center">
                      <asp:Button ID="DeleteButton" width="70px" Font-Size="17px" ForeColor="red" BackColor="#E0FFFF"  style="cursor:pointer" runat="server" CommandName="Delete" Text="删除" />
                 </td>
             </tr>
         </ItemTemplate>
         <LayoutTemplate>
             <table runat="server">
                 <tr runat="server">
                     <td runat="server">
                         <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;margin-left:24px;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                             <tr runat="server" style="background-color: #FFFFFF;color: #1ecdb9;height:50px;">
                                 
                                 <th runat="server" style="font-size:larger">商家账号</th>
                                 <th runat="server" style="font-size:larger">商家密码</th>
                                 <th runat="server" style="font-size:larger">商家姓名</th>
                                 <th runat="server" style="font-size:larger">商家店铺</th>
                                 <th runat="server" style="font-size:larger">商家性别</th>
                                 <th runat="server" style="font-size:larger">商家电话</th>
                                 <th runat="server" style="font-size:larger">店铺地点</th>
                                 <th runat="server" style="font-size:larger">商家邮箱</th>
                                 <th runat="server" style="font-size:larger">商家星级</th>
                                 <th runat="server" style="font-size:larger">登录时间</th>
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
                 <td Style="text-align:center">
                     <asp:Label ID="M_IDLabel" runat="server" Text='<%# Eval("M_ID") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_PassWordLabel" runat="server" Text='<%# Eval("M_PassWord") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_PrincinpleLabel" runat="server" Text='<%# Eval("M_Princinple") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_NameLabel" runat="server" Text='<%# Eval("M_Name") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_SexLabel" runat="server" Text='<%# Eval("M_Sex") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_TeleLabel" runat="server" Text='<%# Eval("M_Tele") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_AdressLabel" runat="server" Text='<%# Eval("M_Adress") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_EmailLabel" runat="server" Text='<%# Eval("M_Email") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Label ID="M_CreaditRatingLabel" runat="server" Text='<%# Eval("M_CreaditRating") %>' />
                 </td>
                 <td>
                     <asp:Label ID="M_LoginTimeLabel" runat="server" Text='<%# Eval("M_LoginTime") %>' />
                 </td>
                 <td Style="text-align:center">
                     <asp:Button ID="EditButton" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Edit" Text="编辑" />
                 </td>
                 <td Style="text-align:center">
                      <asp:Button ID="DeleteButton" width="70px" Font-Size="17px" ForeColor="#1ecdb9" BackColor="White" style="cursor:pointer" runat="server" CommandName="Delete" Text="删除" />
                 </td>
             </tr>
         </SelectedItemTemplate>
     </asp:ListView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" DeleteCommand="DELETE FROM [Table_Merchant] WHERE [M_ID] = @M_ID" InsertCommand="INSERT INTO [Table_Merchant] ([M_ID], [M_PassWord], [M_Princinple], [M_Name], [M_Sex], [M_Tele], [M_Adress], [M_Email], [M_CreaditRating], [M_LoginTime]) VALUES (@M_ID, @M_PassWord, @M_Princinple, @M_Name, @M_Sex, @M_Tele, @M_Adress, @M_Email, @M_CreaditRating, @M_LoginTime)" SelectCommand="SELECT * FROM [Table_Merchant]" UpdateCommand="UPDATE [Table_Merchant] SET [M_PassWord] = @M_PassWord, [M_Princinple] = @M_Princinple, [M_Name] = @M_Name, [M_Sex] = @M_Sex, [M_Tele] = @M_Tele, [M_Adress] = @M_Adress, [M_Email] = @M_Email, [M_CreaditRating] = @M_CreaditRating, [M_LoginTime] = @M_LoginTime WHERE [M_ID] = @M_ID">
         <DeleteParameters>
             <asp:Parameter Name="M_ID" Type="Int32" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="M_ID" Type="Int32" />
             <asp:Parameter Name="M_PassWord" Type="String" />
             <asp:Parameter Name="M_Princinple" Type="String" />
             <asp:Parameter Name="M_Name" Type="String" />
             <asp:Parameter Name="M_Sex" Type="String" />
             <asp:Parameter Name="M_Tele" Type="String" />
             <asp:Parameter Name="M_Adress" Type="String" />
             <asp:Parameter Name="M_Email" Type="String" />
             <asp:Parameter Name="M_CreaditRating" Type="String" />
             <asp:Parameter Name="M_LoginTime" Type="DateTime" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="M_PassWord" Type="String" />
             <asp:Parameter Name="M_Princinple" Type="String" />
             <asp:Parameter Name="M_Name" Type="String" />
             <asp:Parameter Name="M_Sex" Type="String" />
             <asp:Parameter Name="M_Tele" Type="String" />
             <asp:Parameter Name="M_Adress" Type="String" />
             <asp:Parameter Name="M_Email" Type="String" />
             <asp:Parameter Name="M_CreaditRating" Type="String" />
             <asp:Parameter Name="M_LoginTime" Type="DateTime" />
             <asp:Parameter Name="M_ID" Type="Int32" />
         </UpdateParameters>
     </asp:SqlDataSource>

</asp:Content>

