﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactlist.aspx.cs" Inherits="TechKnowPro.Contactlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="Content/bootstrap.min.css" rel="stylesheet" />
     <link rel="stylesheet" type="text/css" href="CSS_Ext/Home.css"/>

    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 367px;
        }
        .auto-style3 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
       <table class="w-100">
                <tr>
                    <td> <h1 class="myH1"> TechKnow Pro - Incident Report Management Software</h1></td>
                </tr>
        </table>
    <br />
        <hr class="myHr" />
        <div class="homebg">
            <p><strong>Contact List - Manage your contact list</strong></p>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style3">Contact List:</td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td><%-- Bound to Contact list table --%>
                        <asp:ListBox ID="lbContacts" runat="server" Height="190px" Width="441px" AutoPostBack="True" 
                            DataSourceID="SqlDataSource2" DataTextField="contact_details" DataValueField="contact_id" CssClass="textbox2">
                        </asp:ListBox>
                        
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
            <br />
            <table class="w-100">
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnRemoveContact" runat="server" Text="Remove Contact" OnClick="btnRemoveContact_Click" class="btn btn-outline-dark" style="margin-top:-20px" /> 
                        <asp:Button ID="btnEmptyList" runat="server" Text="Empty List" OnClick="btnEmptyList_Click" class="btn btn-outline-dark" Width="155px"  style="margin-top:-20px"/>
                        
                        </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnSelectAddCust" runat="server" Text="Select Additional Customers" 
                            OnClick="btnSelectAddCust_Click" class="btn btn-outline-dark" Width="300px" />
                        <br />
                        </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT [contact_id], [contact_details] FROM [contact_list]" 
            DeleteCommand="DELETE FROM [contact_list] WHERE contact_id=@ContactID;">
            <DeleteParameters>
                <asp:ControlParameter Name="ContactID" ControlId="lbContacts" PropertyName="SelectedValue"/>
            </DeleteParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [contact_list]"
            DeleteCommand="DELETE FROM contact_list" ></asp:SqlDataSource>

    <br />
         <br />
         <br />
         <br />
         <br />
         
                


        <div class="td">
            <hr class="myHr">
            @2019 - COMP2139 - Techknow Pro

        </div>

    </form>

</body>
</html>
