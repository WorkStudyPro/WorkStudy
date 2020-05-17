<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Refuse.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
               <br />
                <asp:Label ID="Label8" runat="server" Text="审核未通过" Font-Bold="true" ForeColor="#1ecdb9" style="margin-left: 100px;" Font-Size="25px" ></asp:Label>
                <br />
                <br />
               <hr style="border:0;height:1px;background-color:#00b4aa;"/>
    <asp:GridView ID="GridView1" runat="server" style="margin-left: 118px;position: absolute;margin-top: 92px;" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1320px" PageSize="8" >
        <Columns>
            
            <asp:BoundField DataField="M_ID" HeaderText="商家账号" SortExpression="M_ID" >
            <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="7%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="J_Post" HeaderText="招聘职位" SortExpression="J_Post" >
            <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="7%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="J_Position" HeaderText="工作地点" SortExpression="J_Position" >
            <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="12%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="J_Description" HeaderText="工作详情" SortExpression="J_Description" >
            <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" Height="50px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="J_ReNum" HeaderText="需求人数" SortExpression="J_ReNum" >
            <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="7%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="J_Time" HeaderText="工作时间" SortExpression="J_Time" >
            <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="10%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="J_ReleaseTime" HeaderText="发布日期" SortExpression="J_ReleaseTime" >
            <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="14%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="J_Salary" HeaderText="薪资待遇" SortExpression="J_Salary" >
            <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="7%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:ButtonField Text="已拒绝" >
            <ItemStyle Width="7%" ForeColor="#1ECDB9" HorizontalAlign="Center" />
            </asp:ButtonField>
            
           
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Work_StudyConnectionString %>" SelectCommand="SELECT [M_ID], [J_Post], [J_Position], [J_Description], [J_ReNum], [J_Time], [J_ReleaseTime], [J_Salary] FROM [Table_Job] WHERE [J_State]='False'">
    </asp:SqlDataSource>
</asp:Content>

