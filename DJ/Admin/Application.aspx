<%@ Page Title="" Language="C#" MasterPageFile="~/Master.master" AutoEventWireup="true" CodeFile="Application.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
                <br />
                <asp:Label ID="Label8" runat="server" Text="查看申请" Font-Bold="true" ForeColor="#1ecdb9" style="margin-left: 100px;" Font-Size="25px" ></asp:Label>
                <br />
                <br />
               <hr style="border:0;height:1px;background-color:#00b4aa;"/>
    <asp:GridView ID="GridView1" runat="server" style="margin-left: 118px;position: absolute;margin-top: 92px;" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1320px" PageSize="8" >
        <Columns>
            
            <asp:BoundField DataField="M_ID" HeaderText="M_ID" SortExpression="M_ID" >
            </asp:BoundField>
            <asp:BoundField DataField="W_Name" HeaderText="W_Name" SortExpression="W_Name" >
            </asp:BoundField>
            <asp:BoundField DataField="W_Place" HeaderText="W_Place" SortExpression="W_Place" >
            </asp:BoundField>
            <asp:BoundField DataField="W_Description" HeaderText="W_Description" SortExpression="W_Description" >
            </asp:BoundField>
            <asp:BoundField DataField="W_People" HeaderText="W_People" SortExpression="W_People" >
            </asp:BoundField>
            <asp:BoundField DataField="W_Time" HeaderText="W_Time" SortExpression="W_Time" >
            </asp:BoundField>
            <asp:BoundField DataField="W_ReleaseTime" HeaderText="W_ReleaseTime" SortExpression="W_ReleaseTime" >
            </asp:BoundField>
            <asp:BoundField DataField="W_Money" HeaderText="W_Money" SortExpression="W_Money" >
            </asp:BoundField>
           
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Work_StudyConnectionString %>" SelectCommand="SELECT [M_ID], [W_Name], [W_Place], [W_Description], [W_People], [W_Time], [W_ReleaseTime], [W_Money] FROM [Table_Work] ORDER BY [M_ID], [W_ReleaseTime] DESC">
    </asp:SqlDataSource>
</asp:Content>

