﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">



        <div>
            <h1>CREATE DICTIONARY</h1>
            <asp:label ID="Label1" runat="server">ENTER KEY</asp:label> 
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

            <asp:label ID="Label2" runat="server">ENTER VALUE</asp:label> 
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>

            <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="btnSubmit_CLick" />
        </div>

        <br>
        <hr>
        <br>

                <div>
                    <h1>SEARCH THROUGH DICTIONARY</h1>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="btnSearch_CLick" />
        </div>
    
        <asp:label ID="lblResult" runat="server"></asp:label> 


        <br>
        <hr>
        <br>

        <div>
            <asp:Button ID="Button3" runat="server" Text="Button" OnClick="btnDisplay_CLick" />

            
        </div>
    </form>

    
</body>
</html>