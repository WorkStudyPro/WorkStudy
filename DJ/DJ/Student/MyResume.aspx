<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="MyResume.aspx.cs" Inherits="Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

      <asp:Label ID="HiddenId" runat="server" Text="154669121" Style="color: rgba(0,0,0,0);"></asp:Label>



     <div id="LeftUp" style="width:200px;height:100px;margin-left: 300px;margin-top: 120px;background-color: white;border-radius: 5px;">
        <br />
        <asp:HyperLink ID="MySet" runat="server" Style="margin-left:64px" NavigateUrl="~/Student/Set.aspx" Font-Underline="false"  Font-Size="Large">个人信息</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="SetPass" runat="server" Style="margin-left:64px" NavigateUrl="~/Student/SetPass.aspx" Font-Underline="false"  Font-Size="Large">修改密码</asp:HyperLink>
    </div>

    <div id="LeftDown" style="width:200px;height:150px;margin-left: 300px;margin-top: 100px;background-color: white;border-radius: 5px;" >
        <br />
        <asp:HyperLink ID="MyRe" Style="margin-left:64px" Font-Size="Large" Font-Underline="false" ForeColor="#00b4aa" NavigateUrl="~/Student/MyResume.aspx" runat="server">个人简历</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="MyWork" Style="margin-left:64px" NavigateUrl="~/Student/MyWork.aspx" Font-Underline="false" Font-Size="Large" runat="server">我的兼职</asp:HyperLink>
        <br /><br />
        <asp:HyperLink ID="Exit" Style="margin-left:64px" NavigateUrl="~/login.aspx" Font-Underline="false" Font-Size="Large" runat="server">退出登录</asp:HyperLink>
    </div>


    <div id="Center" style="width:800px;height:600px;margin-left: 700px;margin-top: -350px;background-color: white;border-radius: 5px;">
             <br />
    <asp:Label ID="Label8" runat="server" Text="个人简历" Font-Bold="true" ForeColor="#1ecdb9" Style="margin-left: 100px;" Font-Size="25px"></asp:Label>
    <br />
    <br />
        <hr style="border: 0; height: 1px; background-color: #00b4aa;" />
             <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="S_ID">
                 
                 <EditItemTemplate>
                     <span style="font-size:18px">
                     
                     <asp:Label ID="S_IDLabel1" Style="color: rgba(0,0,0,0);" runat="server" Text='<%# Eval("S_ID") %>' />
                     <br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     姓名:
                     <asp:Label ID="S_NameTextBox" ForeColor="#00b4aa" Style="margin-left:200px" runat="server" Text='<%# Eval("S_Name") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     性别:
                     <asp:Label ID="S_SexTextBox" ForeColor="#00b4aa" Style="margin-left:200px" runat="server" Text='<%# Eval("S_Sex") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     年龄:
                     <asp:Label ID="S_AgeTextBox" ForeColor="#00b4aa" Style="margin-left:200px" runat="server" Text='<%# Eval("S_Age") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     电话号码:
                     <asp:Label ID="S_TelTextBox" ForeColor="#00b4aa" Style="margin-left:162px" runat="server" Text='<%# Eval("S_Tel") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     学生住址:
                     <asp:Label ID="S_AdressTextBox" ForeColor="#00b4aa" Style="margin-left:162px" runat="server" Text='<%# Eval("S_Adress") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     民族:
                     <asp:TextBox ID="R_NationTextBox" Style="margin-left:200px" runat="server" Text='<%# Bind("R_Nation") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     政治面貌:
                     <asp:TextBox ID="R_PoliticalTextBox" Style="margin-left:164px" runat="server" Text='<%# Bind("R_Political") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     专业:
                     <asp:TextBox ID="R_ProfessionalTextBox" Style="margin-left:200px" runat="server" Text='<%# Bind("R_Professional") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Label ID="Label1" runat="server" Style="position: absolute;" Text="个人描述:"></asp:Label>
                     <asp:TextBox ID="R_EvaluationTextBox" Style="margin-left:246px;width: 223px;height: 65px;" runat="server" Text='<%# Bind("R_Evaluation") %>' TextMode="MultiLine" />
                     <br />
                     <asp:Button ID="UpdateButton" style="width:100px;margin-left: 300px;margin-top: 12px;height:32px;cursor:pointer;background-color: white;border: 1px solid #1ecdb9;color:#1ecdb9;border-radius: 5px;" runat="server" CommandName="Update" Text="保存修改" />
                     <asp:Button ID="CancelButton" style="width:100px;margin-left: 10px;height:32px;cursor:pointer;background-color: white;border: 1px solid red;color:red;border-radius: 5px;" runat="server" CommandName="Cancel" Text="取消修改" />
                     <br /><br /></span>
                 </EditItemTemplate>
                 
                 <ItemTemplate>
                     <span style="font-size:18px">
                     <asp:Label ID="S_IDLabel" Style="color: rgba(0,0,0,0);" runat="server" Text='<%# Eval("S_ID") %>' />
                     <br />                
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     姓名:
                     <asp:Label ID="S_NameLabel" Style="margin-left:200px"  runat="server" Text='<%# Eval("S_Name") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     性别:
                     <asp:Label ID="S_SexLabel" Style="margin-left:200px" runat="server" Text='<%# Eval("S_Sex") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     年龄:
                     <asp:Label ID="S_AgeLabel" Style="margin-left:200px" runat="server" Text='<%# Eval("S_Age") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     电话号码:
                     <asp:Label ID="S_TelLabel" Style="margin-left:162px" runat="server" Text='<%# Eval("S_Tel") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     学生住址:
                     <asp:Label ID="S_AdressLabel" Style="margin-left:162px" runat="server" Text='<%# Eval("S_Adress") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     民族:
                     <asp:Label ID="R_NationLabel" Style="margin-left:200px" runat="server" Text='<%# Eval("R_Nation") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     政治面貌:
                     <asp:Label ID="R_PoliticalLabel" Style="margin-left:162px" runat="server" Text='<%# Eval("R_Political") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     专业:
                     <asp:Label ID="R_ProfessionalLabel" Style="margin-left:200px" runat="server" Text='<%# Eval("R_Professional") %>' />
                     <br /><br />
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     个人描述:
                     <asp:Label ID="R_EvaluationLabel" Style="margin-left:162px" runat="server" Text='<%# Eval("R_Evaluation") %>' />
                     <br />
                     <asp:Button ID="EditButton" runat="server" style="width:100px;margin-left: 350px;margin-top: 61px;height:32px;cursor:pointer;background-color: white;border: 1px solid #1ecdb9;color:#1ecdb9;border-radius: 5px;" CommandName="Edit" Text="修改简历" />
<br /><br /></span>
                 </ItemTemplate>
                 <LayoutTemplate>
                     <div id="itemPlaceholderContainer" runat="server" style="">
                         <span runat="server" id="itemPlaceholder" />
                     </div>
                     <div style="">
                     </div>
                 </LayoutTemplate>
                 
             </asp:ListView>
             <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=123.56.70.108;Initial Catalog=Work_Study;Persist Security Info=True;User ID=sa;Password=owowanglea*98" DeleteCommand="DELETE FROM [Table_Resumes] WHERE [S_ID] = @S_ID" InsertCommand="INSERT INTO [Table_Resumes] ([S_ID], [S_Name], [S_Sex], [S_Age], [S_Tel], [S_Adress], [R_Nation], [R_Political], [R_Professional], [R_Evaluation]) VALUES (@S_ID, @S_Name, @S_Sex, @S_Age, @S_Tel, @S_Adress, @R_Nation, @R_Political, @R_Professional, @R_Evaluation)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Table_Resumes] WHERE ([S_ID] = @S_ID)" UpdateCommand="UPDATE [Table_Resumes] SET [S_Name] = @S_Name, [S_Sex] = @S_Sex, [S_Age] = @S_Age, [S_Tel] = @S_Tel, [S_Adress] = @S_Adress, [R_Nation] = @R_Nation, [R_Political] = @R_Political, [R_Professional] = @R_Professional, [R_Evaluation] = @R_Evaluation WHERE [S_ID] = @S_ID">
                 <DeleteParameters>
                     <asp:Parameter Name="S_ID" Type="Int32" />
                 </DeleteParameters>
                 <InsertParameters>
                     <asp:Parameter Name="S_ID" Type="Int32" />
                     <asp:Parameter Name="S_Name" Type="String" />
                     <asp:Parameter Name="S_Sex" Type="String" />
                     <asp:Parameter Name="S_Age" Type="Int32" />
                     <asp:Parameter Name="S_Tel" Type="String" />
                     <asp:Parameter Name="S_Adress" Type="String" />
                     <asp:Parameter Name="R_Nation" Type="String" />
                     <asp:Parameter Name="R_Political" Type="String" />
                     <asp:Parameter Name="R_Professional" Type="String" />
                     <asp:Parameter Name="R_Evaluation" Type="String" />
                 </InsertParameters>
                 <SelectParameters>
                     <asp:ControlParameter ControlID="HiddenId" Name="S_ID" PropertyName="Text" Type="Int32" />
                 </SelectParameters>
                 <UpdateParameters>
                     <asp:Parameter Name="S_Name" Type="String" />
                     <asp:Parameter Name="S_Sex" Type="String" />
                     <asp:Parameter Name="S_Age" Type="Int32" />
                     <asp:Parameter Name="S_Tel" Type="String" />
                     <asp:Parameter Name="S_Adress" Type="String" />
                     <asp:Parameter Name="R_Nation" Type="String" />
                     <asp:Parameter Name="R_Political" Type="String" />
                     <asp:Parameter Name="R_Professional" Type="String" />
                     <asp:Parameter Name="R_Evaluation" Type="String" />
                     <asp:Parameter Name="S_ID" Type="Int32" />
                 </UpdateParameters>
             </asp:SqlDataSource>
         <br /> <br />

                <br />


        </div>
</asp:Content>

