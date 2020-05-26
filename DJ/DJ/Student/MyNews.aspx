<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="MyNews.aspx.cs" Inherits="Student_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div id="div0" style="width:1200px;height:700px;margin-left:20%;background: white;border-radius: 12px;">
            <div id="div1" style="width:400px;height:700px;border-right:solid 1px #93bee2">
                <br />
                <asp:Image ID="Image3" runat="server" ImageUrl="~/Student/images/通知logo.png" Style="margin-left: 50px;" Height="51px" Width="58px" ImageAlign="Middle" />
                <asp:Label ID="Label8" runat="server" Text="系统通知" Font-Size="17px"></asp:Label>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Student/images/图标 18.svg"   Height="34px" Style="margin-left: 140px;margin-top: -5px;"   Width="39px" />
            </div>
            


        </div>
</asp:Content>

