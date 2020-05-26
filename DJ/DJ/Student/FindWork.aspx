<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="FindWork.aspx.cs" Inherits="Student_Default" %>

<%@ Register Src="~/Student/HistoryWork.ascx" TagPrefix="uc1" TagName="HistoryWork" %>
<%@ Register Src="~/Student/Work.ascx" TagPrefix="uc1" TagName="Work" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div id="divs" style="width: 900px; height: 820px; margin-left: 26%; background: white; border-radius: 5px;">
        <div style="width: 870px; margin-left: 25px; position: absolute; margin-top: 15px; overflow-y: auto; overflow-x: hidden; height: 790px;">
                <br />    
            <div id="ss">
        <asp:TextBox ID="TextBox1" runat="server" Style="float: left;margin-top: 1px; margin-left: 30px; height: 22px; border: 1px solid #1ecdb9; margin-right: 30px;" AutoCompleteType="Disabled"></asp:TextBox>
        <asp:Button ID="select" runat="server" Font-Size="18px" Font-Bold="true" ForeColor="#1ecdb9" BackColor="White" Style="border:none;cursor: pointer; float: left" Text="查询"  />
        <asp:Label ID="Label11" runat="server" ForeColor="#1ecdb9" Style="line-height: 23px;" Text="(文本框为空则查询全部)"></asp:Label>
                <asp:HyperLink ID="historyWork" ForeColor="#1ecdb9" NavigateUrl="~/Student/History.aspx" Font-Underline="false" Style="float: right;margin-right: 70px;font-size: 18px;" runat="server">历史兼职</asp:HyperLink>
            </div>
                    <uc1:Work runat="server" id="Work" />
        </div>
    </div>
</asp:Content>

