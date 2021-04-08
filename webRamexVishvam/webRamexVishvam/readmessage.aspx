<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="readmessage.aspx.cs" Inherits="webRamexVishvam.readmessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        table{
            border:1px solid;
            
        }
        h2{
            
            text-align:center;
        }
        .auto-style5 {
            --bs-table-bg: transparent;
            --bs-table-striped-color: #212529;
            --bs-table-striped-bg: rgba(0, 0, 0, 0.05);
            --bs-table-active-color: #212529;
            --bs-table-active-bg: rgba(0, 0, 0, 0.1);
            --bs-table-hover-color: #212529;
            --bs-table-hover-bg: rgba(0, 0, 0, 0.075);
            margin-bottom: 1rem;
            color: #212529;
            vertical-align: top;
            border-color: #dee2e6;
        }
    </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

</head>
<body>
    <header><h1 align="center" class="display-1">Remax </h1></header>
    <h2 class="display-6">Message Page</h2>
    <form id="form1" runat="server">
        <div align="center">
        <asp:Table ID="tabMessage" runat="server" BorderStyle="Solid" CssClass="auto-style5" GridLines="Both" Width="626px">
            <asp:TableRow runat="server">
                <asp:TableCell ID="celTitle1" runat="server">Title</asp:TableCell>
                <asp:TableCell ID="celtitle2" runat="server"></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow runat="server">
                <asp:TableCell ID="celdate1" runat="server">Date : </asp:TableCell>
                <asp:TableCell ID="celdate2" runat="server"></asp:TableCell>
            </asp:TableRow>
             <asp:TableRow runat="server">
                <asp:TableCell ID="TableCell1" runat="server">From : </asp:TableCell>
                <asp:TableCell ID="celSender" runat="server"></asp:TableCell>
            </asp:TableRow>

             <asp:TableRow runat="server">
                <asp:TableCell ID="TableCell3" VerticalAlign="Top" runat="server">Meassage : </asp:TableCell>
                <asp:TableCell ID="celMessage" runat="server"></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <br>
        <asp:Button ID="btnBack2Msg" runat="server" OnClick="btnBack2Msg_Click" Text="Back To Inbox" CssClass="btn btn-primary" />
        </div>
    </form>
</body>
</html>
