<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ComposeMessage.aspx.cs" Inherits="webRamexVishvam.ComposeMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
     

        h3{
            font-size:60px;
            color:#fff;
        }

        .auto-style1 {
            width: 78%;
            height: 513px;
        }
        .auto-style2 {
            height: 29px;
            width: 315px;
        }
        .auto-style4 {
            height: 29px;
            width: 583px;
        }

        .auto-style5 {
            width: 110px;
        }
        .auto-style6 {
            height: 29px;
            width: 110px;
        }
        .auto-style7 {
            width: 583px;
            vertical-align: top;
        }
        .auto-style8 {
            width: 315px;
        }

        .auto-style9 {
            display: block;
            font-size: 1rem;
            font-weight: 400;
            line-height: 1.5;
            color: #212529;
            background-clip: padding-box;
            -webkit-appearance: none;
            -moz-appearance: none;
            appearance: none;
            border-radius: .25rem;
            transition: none;
            border: 1px solid #ced4da;
            background-color: #fff;
        }

    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
</head>
<body>
    <%--<header><h1 align="center" class="display-1">Remax </h1></header>--%>
    <nav class="navbar navbar-expand-lg navbar-light bg-light" style="margin-left:20px;margin-right:20px">
      <a class="navbar-brand" href="index.aspx"><b>RAMEX</b>-Client</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="nav-item nav-link active" href="index.aspx">Home </a>
          <a class="nav-item nav-link" href="Agents.aspx">Find Agents </a>
          <a class="nav-item nav-link" href="ComposeMessage.aspx">Message To Agents <span class="sr-only">(current)</span></a>
          <asp:HyperLink CssClass="nav-item nav-link" runat="server" BorderColor="#FF3300" NavigateUrl="~/Login.aspx">Logout</asp:HyperLink>
            
        </div>
      </div>
    </nav>

    <form id="form1" runat="server" >
    <br>
        <div align="center">
            <asp:Literal ID="litStatus" runat="server"></asp:Literal>
            <table border="1" class="auto-style1">
                <tr>
                    <td class="auto-style5">
      
        <asp:Label ID="Label2" runat="server" Text="To  "></asp:Label> </td>
                    <td class="auto-style7">
        <asp:DropDownList ID="cboReceviers" runat="server" Width="587px">
        </asp:DropDownList>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"> <asp:Label ID="Label1" runat="server" Text="Title"></asp:Label> </td>
                    <td class="auto-style4">
            <asp:TextBox ID="txtTitle" runat="server" CssClass="auto-style9" Width="708px"></asp:TextBox>
                    </td>
                    <td class="auto-style2">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5"><asp:Label ID="Label3" runat="server" Text="Message"></asp:Label></td>
                    <td class="auto-style7">
            <asp:TextBox ID="txtMsg" runat="server" Height="330px" Width="714px" TextMode="MultiLine" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td class="auto-style8">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                    <asp:Button ID="btnSend" runat="server" Height="52px" OnClick="btnSend_Click" Text="Send" CssClass="btn btn-primary" Width="123px" />
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                </tr>
            </table>
       </div>
    </form>
</body>
</html>
