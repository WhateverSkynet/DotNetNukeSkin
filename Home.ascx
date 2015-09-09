<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Home.ascx.cs" Inherits="Whatever.Home" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="JQUERY" Src="~/Admin/Skins/jQuery.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<script type="text/javascript" src="https://static.wowhead.com/widgets/power.js"></script>
<script>var wowhead_tooltips = { "colorlinks": true, "iconizelinks": true, "renamelinks": true }</script>

<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />
<dnn:JQUERY ID="dnnjQuery" runat="server" jQueryHoverIntent="true" />
<dnn:DnnJsInclude runat="server" FilePath="bootstrap/js/bootstrap.min.js" PathNameAlias="SkinPath" Priority="10" />
<dnn:DnnCssInclude runat="server" FilePath="bootstrap/css/bootstrap.min.css" PathNameAlias="SkinPath" Priority="9" />

<div class="navbar navbar-default" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div class="navbar-brand">
                <dnn:LOGO runat="server" id="dnnLOGO" />
            </div>
        </div>
        <div class="navbar-collapse collapse">
            <dnn:MENU MenuStyle="BootStrapNav" runat="server"></dnn:MENU>

            <ul class="nav navbar-nav navbar-right">
                <li>
                    <dnn:LOGIN ID="dnnLogin" CssClass="LoginLink" runat="server" LegacyMode="false" />
                </li>
                <li>
                    <dnn:USER ID="dnnUser" runat="server" LegacyMode="false" />
                </li>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>

<div id="CarouselPane" runat="server" class="carousel slide" containertype="G" containername="Whatever" containersrc="Blank.ascx" />

<div class="main">
    <div class="container">
        <!--/Logo-->

        <div id="TopContent" class="row">
            <div id="TopPane" runat="server" class="col-md-24" />
        </div>

        <div id="Content" class="row">
            <div id="ContentPane" runat="server" class="col-md-18" />
            <div id="RightPane" runat="server" class="col-md-6" />
        </div>
        <div id="MidContent" class="row">
            <div id="ThirdRowLeft" runat="server" class="col-md-8" />
            <div id="ThirdRowMiddle" runat="server" class="col-md-8" />
            <div id="ThirdRowRight" runat="server" class="col-md-8" />
        </div>
        <div id="ContentLeftCol" class="row">
            <div id="LeftPane" runat="server" class="col-md-6" />
            <div id="ContentPaneRight" runat="server" class="col-md-18" />
        </div>
        <div id="UserProfile" class="row">
            <div id="UserProfileLeft" runat="server" class="col-md-4" />
            <div id="UserProfileContent" runat="server" class="col-md-20" />
        </div>
        <div id="BottomContent" class="row">

            <div id="BottomPane" runat="server" class="col-md-24" />
        </div>
    </div>
</div>

<div id="FooterRow" class="row">

    <div id="FooterRowLeft" runat="server" class="col-md-8" />
    <div id="FooterRowMiddle" runat="server" class="col-md-8" />
    <div id="FooterRowRight" runat="server" class="col-md-8" />

    <div id="FooterPane" runat="server" class="col-md-24" />
    <div id="CopyRightPane" class="SkinLink col-md-24 center">
        <div class="col-md-24">
            <dnn:copyright id="dnnCopyright" runat="server" />
        </div>
    </div>
</div>
