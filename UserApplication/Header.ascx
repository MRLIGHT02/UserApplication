﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="UserApplication.Header" %>

<div style="position: relative; width: 1380px; height: 80px;">
    <asp:Image ID="headImg" runat="server" ImageUrl="~/header.jpg"
        Width="1380px" Height="80px" AlternateText="Welcome to Website"
        Style="position: absolute; top: 0; left: 0;" />

    <h1 style="position: absolute; top: 20px; left: 50%; transform: translateX(-50%); z-index: 2; color: white; font-size: 28px; color: black; font-weight: bold; margin: 0; text-shadow: 1px 1px 3px black;">Welcome To Student Page
    </h1>
</div>
