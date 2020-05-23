<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Master.master" AutoEventWireup="true" CodeFile="Set.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:Panel ID="Panel6" runat="server" Height="750px" Width="1550px" BackColor="white">
                <br />
                <asp:Label ID="Label8" runat="server" Text="管理员基本信息" Font-Bold="true" ForeColor="#1ecdb9" style="margin-left: 100px;" Font-Size="25px" ></asp:Label>
                <br />
                <br />
               <hr style="border:0;height:1px;background-color:#00b4aa;"/>


         <asp:Label ID="HiddenId" runat="server" Style="color: rgba(0,0,0,0);" Text="118563"></asp:Label>

              
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=123.56.70.108;Initial Catalog=Work_Study;Persist Security Info=True;User ID=sa;Password=owowanglea*98" DeleteCommand="DELETE FROM [Table_Admin] WHERE [A_ID] = @A_ID" InsertCommand="INSERT INTO [Table_Admin] ([A_ID], [A_Name], [A_Sex], [A_Tele], [A_Email], [A_WorkTime]) VALUES (@A_ID, @A_Name, @A_Sex, @A_Tele, @A_Email, @A_WorkTime)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [A_ID], [A_Name], [A_Sex], [A_Tele], [A_Email], [A_WorkTime] FROM [Table_Admin] WHERE ([A_ID] = @A_ID)" UpdateCommand="UPDATE [Table_Admin] SET [A_Name] = @A_Name, [A_Sex] = @A_Sex, [A_Tele] = @A_Tele, [A_Email] = @A_Email, [A_WorkTime] = @A_WorkTime WHERE [A_ID] = @A_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="A_ID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="A_ID" Type="Int32" />
                        <asp:Parameter Name="A_Name" Type="String" />
                        <asp:Parameter Name="A_Sex" Type="String" />
                        <asp:Parameter Name="A_Tele" Type="String" />
                        <asp:Parameter Name="A_Email" Type="String" />
                        <asp:Parameter Name="A_WorkTime" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="HiddenId" Name="A_ID" PropertyName="Text" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="A_Name" Type="String" />
                        <asp:Parameter Name="A_Sex" Type="String" />
                        <asp:Parameter Name="A_Tele" Type="String" />
                        <asp:Parameter Name="A_Email" Type="String" />
                        <asp:Parameter Name="A_WorkTime" Type="String" />
                        <asp:Parameter Name="A_ID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:ListView ID="ListView1" runat="server" DataKeyNames="A_ID" DataSourceID="SqlDataSource1">
       
                    <EditItemTemplate>
                        <span style="font-size:21px"><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        管理员账号:
                        <asp:Label ID="A_IDLabel1" style="margin-left:330px;color:#1ecdb9" runat="server" Text='<%# Eval("A_ID") %>' />
                        <br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        姓名:
                        <asp:TextBox ID="A_NameTextBox" style="margin-left:394px;font-size: 18px;color: RGBA(165,165,166,39);border: 1px solid black;" runat="server" Text='<%# Bind("A_Name") %>' />
                        <br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        性别:
                        <asp:TextBox ID="A_SexTextBox" style="margin-left:394px;font-size: 18px;color: RGBA(165,165,166,39);border: 1px solid black;" runat="server" Text='<%# Bind("A_Sex") %>' />
                        <br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        电话号码:
                        <asp:TextBox ID="A_TeleTextBox" style="margin-left:353px;font-size: 18px;color: RGBA(165,165,166,39);border: 1px solid black;" runat="server" Text='<%# Bind("A_Tele") %>' />
                        <br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        电子邮箱:
                        <asp:TextBox ID="A_EmailTextBox" style="margin-left:355px;font-size: 18px;color: RGBA(165,165,166,39);border: 1px solid black;" runat="server" Text='<%# Bind("A_Email") %>' />
                        <br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        上班时间:
                        <asp:Label ID="A_WorkTimeTextBox" style="margin-left:355px;color:#1ecdb9" runat="server" Text='<%# Eval("A_WorkTime") %>' />
                        <br /><br />
                        <asp:Button ID="UpdateButton" style="width:200px;font-size:21px;margin-left: 557px;margin-top: 160px;cursor:pointer;background-color: white;border: 1px solid #1ecdb9;color:#1ecdb9;border-radius: 5px;" runat="server" CommandName="Update" Text="确认修改" />
                        <asp:Button ID="CancelButton" style="width:200px;font-size:21px;margin-left: 30px;cursor:pointer;background-color: white;border: 1px solid red;color:red;border-radius: 5px;" runat="server" CommandName="Cancel" Text="取消修改" />
                        <br />
                        <br />
                        </span>
                    </EditItemTemplate>

                    <ItemTemplate>
                        <span style="font-size:21px"><br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         管理员账号:
                        <asp:Label ID="A_IDLabel" Style="margin-left: 330px;color:#1ecdb9" runat="server" Text='<%# Eval("A_ID") %>' />
                        <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        姓名:
                        <asp:Label ID="A_NameLabel" Style="margin-left: 394px;" runat="server" Text='<%# Eval("A_Name") %>' />
                        <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        性别:
                        <asp:Label ID="A_SexLabel" Style="margin-left: 394px;" runat="server" Text='<%# Eval("A_Sex") %>' />
                        <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        电话号码:
                        <asp:Label ID="A_TeleLabel" Style="margin-left: 353px;" runat="server" Text='<%# Eval("A_Tele") %>' />
                        <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        电子邮箱:
                        <asp:Label ID="A_EmailLabel" Style="margin-left: 355px;" runat="server" Text='<%# Eval("A_Email") %>' />
                        <br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                        上班时间:
                        <asp:Label ID="A_WorkTimeLabel" Style="margin-left: 355px;" runat="server" Text='<%# Eval("A_WorkTime") %>' />
                        <br /><br />
                        <asp:Button ID="EditButton" style="width: 200px;margin-left: 675px;font-size:21px;margin-top: 160px;cursor:pointer;background-color: white;border: 1px solid #1ecdb9;color:#1ecdb9;border-radius: 5px;" runat="server" CommandName="Edit" Text="修改信息" />
                        <br />
                        <br />
                        </span>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                        </div>
                    </LayoutTemplate>
                    
                </asp:ListView>
                <br />
               
            </asp:Panel>
</asp:Content>

