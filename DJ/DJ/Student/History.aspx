<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="History.aspx.cs" Inherits="Student_Default" %>

<%@ Register Src="~/Student/HistoryWork.ascx" TagPrefix="uc1" TagName="HistoryWork" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="divs" style="width: 900px; height: 820px; margin-left: 26%; background: white; border-radius: 5px;">
        <div style="width: 870px; margin-left: 25px; position: absolute; margin-top: 15px; overflow-y: auto; overflow-x: hidden; height: 790px;">
                <br />    
            <asp:Label ID="Label8" runat="server" Text="历史兼职" Font-Bold="true" ForeColor="#1ecdb9" Style="margin-left: 100px;" Font-Size="25px"></asp:Label>
                <br />
        <hr style="border: 0; height: 1px; background-color: #00b4aa;width: 847px;" />
    

            <asp:Panel ID="Panel1" runat="server"></asp:Panel>

        </div>
    </div>
</asp:Content>

