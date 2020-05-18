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
            <asp:BoundField DataField="W_Name" HeaderText="招聘职位" SortExpression="W_Name" >
                <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="7%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="W_Place" HeaderText="工作地点" SortExpression="W_Place" >
                <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="12%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="W_Description" HeaderText="工作详情" SortExpression="W_Description" >
                <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" Height="50px" />
            <ItemStyle HorizontalAlign="Center" />
            </asp:BoundField>
            <asp:BoundField DataField="W_People" HeaderText="需求人数" SortExpression="W_People" >
                <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="7%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="W_Time" HeaderText="工作时间" SortExpression="W_Time" >
                <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="10%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="W_ReleaseTime" HeaderText="发布日期" SortExpression="W_ReleaseTime" >
                 <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="14%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
            <asp:BoundField DataField="W_Money" HeaderText="薪资待遇" SortExpression="W_Money" >
                <HeaderStyle ForeColor="#1ECDB9" Font-Size="20px" />
            <ItemStyle Width="7%" HorizontalAlign="Center" Height="50px" />
            </asp:BoundField>
           
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" ForeColor="Red" runat="server" CausesValidation="false" CommandName=""  Text="已驳回"></asp:LinkButton>
                </ItemTemplate>
                <ItemStyle  HorizontalAlign="Center" Width="7%" />
            </asp:TemplateField>
           
        </Columns>
    </asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:constr %>" SelectCommand="SELECT [M_ID], [W_Name], [W_Place], [W_Description], [W_People], [W_Time], [W_ReleaseTime], [W_Money] FROM [Table_Work] WHERE [W_State]='False' ORDER BY [M_ID], [W_ReleaseTime] DESC ">
    </asp:SqlDataSource>
</asp:Content>

