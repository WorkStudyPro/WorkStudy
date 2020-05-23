<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Set.aspx.cs" Inherits="Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="HiddenId" runat="server" Text="154669121" Style="color: rgba(0,0,0,0);"></asp:Label>


    <div id="LeftUp" style="width:200px;height:100px;margin-left: 300px;margin-top: 120px;background-color: white;border-radius: 5px;">
        <br />
        <asp:HyperLink ID="MySet" runat="server" Style="margin-left:64px" NavigateUrl="~/Student/Set.aspx" Font-Underline="false" ForeColor="#00b4aa" Font-Size="Large">个人信息</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="SetPass" runat="server" Style="margin-left:64px" NavigateUrl="~/Student/SetPass.aspx" Font-Size="Large">修改密码</asp:HyperLink>
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
    <asp:Label ID="Label8" runat="server" Text="个人信息" Font-Bold="true" ForeColor="#1ecdb9" Style="margin-left: 100px;" Font-Size="25px"></asp:Label>
    <br />
    <br />
        <hr style="border: 0; height: 1px; background-color: #00b4aa;" />
         <br /> <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" DeleteCommand="DELETE FROM [Table_Student] WHERE [S_ID] = @S_ID" InsertCommand="INSERT INTO [Table_Student] ([S_ID], [S_Name], [S_Sex], [S_Age], [S_Tel], [S_Adress]) VALUES (@S_ID, @S_Name, @S_Sex, @S_Age, @S_Tel, @S_Adress)" SelectCommand="SELECT [S_ID], [S_Name], [S_Sex], [S_Age], [S_Tel], [S_Adress] FROM [Table_Student] WHERE ([S_ID] = @S_ID)" UpdateCommand="UPDATE [Table_Student] SET [S_Name] = @S_Name, [S_Sex] = @S_Sex, [S_Age] = @S_Age, [S_Tel] = @S_Tel, [S_Adress] = @S_Adress WHERE [S_ID] = @S_ID">
        <DeleteParameters>
            <asp:Parameter Name="S_ID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="S_ID" Type="String" />
            <asp:Parameter Name="S_Name" Type="String" />
            <asp:Parameter Name="S_Sex" Type="String" />
            <asp:Parameter Name="S_Age" Type="Int32" />
            <asp:Parameter Name="S_Tel" Type="String" />
            <asp:Parameter Name="S_Adress" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="HiddenId" Name="S_ID" PropertyName="Text" Type="String" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="S_Name" Type="String" />
            <asp:Parameter Name="S_Sex" Type="String" />
            <asp:Parameter Name="S_Age" Type="Int32" />
            <asp:Parameter Name="S_Tel" Type="String" />
            <asp:Parameter Name="S_Adress" Type="String" />
            <asp:Parameter Name="S_ID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:ListView ID="ListView1" runat="server" DataKeyNames="S_ID" DataSourceID="SqlDataSource1">
        <AlternatingItemTemplate>
            
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <span style="Font-Size:20px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                账号:
            <asp:Label ID="S_IDLabel1" style="margin-left:215px;color:#1ecdb9" runat="server" Text='<%# Eval("S_ID") %>' />
            <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            姓名:
            <asp:TextBox ID="S_NameTextBox" style="margin-left:215px;color: RGBA(165,165,166,39)" runat="server" Text='<%# Bind("S_Name") %>' />
            <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            性别:
            <asp:TextBox ID="S_SexTextBox" style="margin-left:215px;color: RGBA(165,165,166,39)" runat="server" Text='<%# Bind("S_Sex") %>' />
            <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            年龄:
            <asp:TextBox ID="S_AgeTextBox" style="margin-left:215px;color: RGBA(165,165,166,39)" runat="server" Text='<%# Bind("S_Age") %>' />
            <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            电话号码:
            <asp:TextBox ID="S_TelTextBox" style="margin-left:199px;color: RGBA(165,165,166,39)" runat="server" Text='<%# Bind("S_Tel") %>' />
            <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            居住宿舍:
            <asp:TextBox ID="S_AdressTextBox" style="margin-left:199px;color: RGBA(165,165,166,39)" runat="server" Text='<%# Bind("S_Adress") %>' />
            <br /> <br />
            <asp:Button ID="UpdateButton" style="width:100px;margin-left: 300px;margin-top: 70px;cursor:pointer;background-color: white;border: 1px solid #1ecdb9;color:#1ecdb9;border-radius: 5px;" runat="server" CommandName="Update" Text="确认修改" />
            <asp:Button ID="CancelButton" style="width:100px;margin-left: 30px;cursor:pointer;background-color: white;border: 1px solid red;color:red;border-radius: 5px;" runat="server" CommandName="Cancel" Text="取消修改" />
            <br />
            <br /></span>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <span>未返回数据。</span>
        </EmptyDataTemplate>
        <InsertItemTemplate>
           
        </InsertItemTemplate>
        <ItemTemplate>
            <span style="Font-Size:20px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                账号:
            <asp:Label ID="S_IDLabel" style="margin-left:214px;color:#1ecdb9" runat="server" Text='<%# Eval("S_ID") %>' />
            <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            姓名:
            <asp:Label ID="S_NameLabel" style="margin-left:235px" runat="server" Text='<%# Eval("S_Name") %>' />
            <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                性别:
            <asp:Label ID="S_SexLabel" style="margin-left:250px" runat="server" Text='<%# Eval("S_Sex") %>' />
            <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                年龄:
            <asp:Label ID="S_AgeLabel" style="margin-left:248px" runat="server" Text='<%# Eval("S_Age") %>' />
            <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                电话号码:
            <asp:Label ID="S_TelLabel" style="margin-left:194px" runat="server" Text='<%# Eval("S_Tel") %>' />
            <br /> <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                居住宿舍:
            <asp:Label ID="S_AdressLabel" style="margin-left:194px" runat="server" Text='<%# Eval("S_Adress") %>' />
            <br /> <br />
            <asp:Button ID="EditButton" runat="server" style="width: 100px;margin-left: 350px;margin-top: 70px;cursor:pointer;background-color: white;border: 1px solid #1ecdb9;color:#1ecdb9;border-radius: 5px;" CommandName="Edit" Text="修改信息" />
            <br />
<br /></span>
        </ItemTemplate>
        <LayoutTemplate>
            <div id="itemPlaceholderContainer" runat="server" style="">
                <span runat="server" id="itemPlaceholder" />
            </div>
            <div style="">
            </div>
        </LayoutTemplate>
        <SelectedItemTemplate>
           
        </SelectedItemTemplate>
    </asp:ListView>

    </div>



    

</asp:Content>

