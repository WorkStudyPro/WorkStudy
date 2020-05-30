<%@ Page Title="" Language="C#" MasterPageFile="~/Student/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Student_Default" %>

<%@ Register Src="~/Student/IndexWork.ascx" TagPrefix="uc1" TagName="IndexWork" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="gallery">
        <a class="show">
            <img src="images/背景-工院.jpg" alt="Flowing Rock" width="1920" height="400" />
        </a>
        <a>
            <img src="images/背景-工院2.jpg" alt="Grass Blades" width="1920" height="400" />
        </a>
        <a>
            <img src="images/工院-背景3.jpg" alt="Ladybug" width="1920" height="400" />
        </a>
        <a>
            <img src="images/工院-背景4.jpg" alt="Lightning" width="1920" height="400" />
        </a>
        <div class="caption">
            <div class="content"></div>
        </div>
    </div>
    <div class="clear"></div>

    <div id="Footer" style="height: 470px; background-color: rgb(242,242,242)">
        <br />
        <a style="text-align: center; font-size: 25px; color: #00b4aa; margin-left: 910px">热门兼职</a>
        <div style="padding: 20px; background-color: #F2F2F2;">
            <div class="layui-row layui-col-space15">
                <%--动态加数据--%>
                <uc1:IndexWork runat="server" ID="IndexWork" />
                <uc1:IndexWork runat="server" ID="IndexWork1" />
                <uc1:IndexWork runat="server" ID="IndexWork2" />
                <uc1:IndexWork runat="server" ID="IndexWork3" />
            </div>
        </div>
        <div style="height: 144px; background-color: rgb(0,159,217); margin-top: 30px;">
            <div class="wave-box">

                <div class="marquee-box marquee-up" id="marquee-box">
                    <div class="marquee">
                        <div class="wave-list-box" id="wave-list-box1">
                            <ul>
                                <li>
                                    <img height="60" alt="波浪" src="images/wave_02.png" style="background-color: rgb(242,242,242)">
                                </li>
                            </ul>
                        </div>
                        <div class="wave-list-box" id="wave-list-box2">
                            <ul>
                                <li>
                                    <img height="60" alt="波浪" src="images/wave_02.png" style="background-color: rgb(242,242,242)">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="marquee-box" id="marquee-box3">
                    <div class="marquee">
                        <div class="wave-list-box" id="wave-list-box4">
                            <ul>
                                <li>
                                    <img height="60" alt="波浪" src="images/wave_01.png">
                                </li>
                            </ul>
                        </div>
                        <div class="wave-list-box" id="wave-list-box5">
                            <ul>
                                <li>
                                    <img height="60" alt="波浪" src="images/wave_01.png">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="footer-floor1" style="margin-top: -38px; text-align: center;">
                <img src="images/二维码.png" width="70" height="70" style="position: absolute; margin-top: -25px; margin-left: 810px;" />
                地址：四川工程职业技术学院 | 版权所有：2018级软件技术2班 | 站点建设与维护：<b>吴远财、王玺</b>| 川ICP备00000001号 | 二维码
            </div>
        </div>
    </div>
</asp:Content>

