﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Edit.ascx.cs" Inherits="Whatever.Edit" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>
<%@ Register TagPrefix="dnn" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>
<%@ Register TagPrefix="dnn" Namespace="DotNetNuke.Web.Client.ClientResourceManagement" Assembly="DotNetNuke.Web.Client" %>

<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<dnn:DnnCssInclude runat="server" FilePath="bootstrap/css/bootstrap.min.css" PathNameAlias="SkinPath" priority="9" />


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
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Search<b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <div class="searchBox">
                                <dnn:Search id="dnnSearch" runat="server" showsite="false" showweb="false" cssclass="btn btn-success btn-xs" />
                            </div>
                        </li>
                    </ul>

                </li>
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


<div class="container">
    <!--/Logo-->

    <div id="TopContent" class="row">
        <div id="TopPane" runat="server" class="col-md-24" />
    </div>

    <div id="Content" class="row">
        <div id="ContentPane" runat="server" class="col-md-24" />
    </div>
    <div id="MidContent" class="row">
        <div id="ThirdRowLeft" runat="server" class="col-md-8" />
        <div id="ThirdRowMiddle" runat="server" class="col-md-8" />
        <div id="ThirdRowRight" runat="server" class="col-md-8" />
    </div>
    <div id="ContentLeftCol" class="row">
        <div id="LeftPane" runat="server" class="col-md-6" />
        <div id="ContentPaneRight" runat="server" class="col-md-12" />
        <div id="RightPane" runat="server" class="col-md-6" />
    </div>

    <div id="BottomContent" class="row">

        <div id="BottomPane" runat="server" class="col-md-24" />
    </div>
    <div id="FooterRow" class="row">

        <div id="FooterRowLeft" runat="server" class="col-md-8" />
        <div id="FooterRowMiddle" runat="server" class="col-md-8" />
        <div id="FooterRowRight" runat="server" class="col-md-8" />

        <div id="FooterPane" runat="server" class="col-md-24" />
        <div id="CopyRightPane" class="SkinLink col-md-24 center">
            <div class="col-md-12">
                <dnn:copyright ID="dnnCopyright" runat="server" />
                <dnn:terms id="dnnTerms" runat="server" />
                <dnn:privacy id="dnnPrivacy" runat="server" />
            </div>
        </div>
    </div>
</div>