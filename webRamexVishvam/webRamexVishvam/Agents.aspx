<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Agents.aspx.cs" Inherits="webRamexVishvam.Agents" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left: 20px;
            margin-right: 20px;
        }
        </style>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <title></title>
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
          <a class="nav-item nav-link" href="Agents.aspx">Find Agents <span class="sr-only">(current)</span></a>
          <a class="nav-item nav-link" href="ComposeMessage.aspx">Message To Agents</a>
          <a class="nav-item nav-link" href="Login.aspx">Logout</a>
        </div>
      </div>
    </nav>
    <form id="form1" runat="server">
        <div style="min-height:500px">
            <p align="left" style="margin-left:20px" class="display-6">Agents Search</p>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:TextBox ID="txtNameEmail" runat="server" Width="250px" CssClass="form-control"></asp:TextBox>
                    </td>
                    <td>
                        <asp:DropDownList ID="drpLanguage" runat="server" Width="250px">
                            <asp:ListItem >Language</asp:ListItem>
                        </asp:DropDownList></td>
                    <td><asp:DropDownList ID="drpGender" runat="server" Width="250px">
                            <asp:ListItem >Gender</asp:ListItem>
                        </asp:DropDownList></td>
                    <td><asp:DropDownList ID="drpCity" runat="server" Width="250px">
                            <asp:ListItem >City</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <%--<tr>
                    <td>&nbsp;</td>
                    <td>
                        &nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>--%>
            </table>
            <br/>
            <div align="center">
                <asp:Button ID="btnSearch" runat="server" OnClick="btnSearch_Click" Text="Search by Name" Width="233px" CssClass="btn btn-primary" />
&nbsp;&nbsp;&nbsp; <asp:Button ID="btnFind" runat="server" Text="Find" Width="198px" OnClick="btnFind_Click" CssClass="btn btn-primary" /><br/></div>
            <div align="center"><br />
                <asp:GridView ID="dataAgent" runat="server" CssClass="align-items-md-center" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                    <RowStyle BackColor="White" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>

            <br /></div>
        </div>
    </form>
    <%--<footer>
        <a href="ComposeMessage.aspx" style="margin-left:20px" class="link-primary">Write Message To Agent</a>

    </footer>--%>

</body>
</html>
