<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="webRamexVishvam.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <style>
        
    </style>
</head>
<body>
    <header><h1 align="center" class="display-1">Remax</h1>
        <p align="center" class="display-1">&nbsp;</p></header>
    <form id="form1" runat="server">
        <div align="center" style="margin-left:120px;margin-right:120px">

            <asp:TextBox id="txtEmail" type="text" class="auto-style1" placeholder="Email" runat="server" CssClass="form-control"></asp:TextBox><br />
            <br />
            <asp:TextBox id="txtPassword" type="password" class="auto-style1" placeholder="Password" runat="server" CssClass="form-control"></asp:TextBox><br />
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary" />

        </div>


    </form>
    <footer>
    </footer>
</body>
</html>
