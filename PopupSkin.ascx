<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PopupSkin.ascx.cs" Inherits="Whatever.PopupSkin" %>
<%@ Register TagPrefix="dnn" TagName="META" Src="~/Admin/Skins/Meta.ascx" %>

<script type="text/javascript" src="http://static.wowhead.com/widgets/power.js"></script>
<script>var wowhead_tooltips = { "colorlinks": true, "iconizelinks": true, "renamelinks": true }</script>

<dnn:META ID="mobileScale" runat="server" Name="viewport" Content="width=device-width,initial-scale=1" />

<div id="ContentPane" runat="server" class="col-md-24" />
