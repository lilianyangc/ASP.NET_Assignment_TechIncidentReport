﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PasswordReset1.aspx.cs" Inherits="TechKnowPro.PasswordReset1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="CSS_Ext/Home.css">
</head>
<body>
    <div class="homebg">
    <form id="form1" runat="server">
        <div><strong>Please enter your email address:
            </strong>
            <br />
            <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
            <br />
            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
        </div>
        <br />
        <asp:Button ID="btnBack" runat="server" Text="Back to Login" OnClick="btnBack_Click" CausesValidation="False" />
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [email] FROM [customers]"></asp:SqlDataSource>
        
    </form>
    </div>
</body>
</html>
