<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="webRamexVishvam.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            margin-left: 20px;
            margin-right: 20px;
        }
        .auto-style2 {
            height: 318px;
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
          <a class="nav-item nav-link active" href="index.aspx">Home <span class="sr-only">(current)</span></a>
          <a class="nav-item nav-link" href="Agents.aspx">Find Agents</a>
          <a class="nav-item nav-link" href="ComposeMessage.aspx">Message To Agents</a>
          <a class="nav-item nav-link" href="Login.aspx">Logout</a>
        </div>
      </div>
    </nav>

    <form id="form1" runat="server">
        <div class="auto-style2" style="min-height:500px">
            <p align="left" style="margin-left:20px" class="display-6">House Search</p>
            <div align="center">
                <div>                
                    <asp:TextBox ID="txtSearch" runat="server" Height="40px" Width="947px" OnLoad="txtSearch_Load" OnTextChanged="txtSearch_Load" CssClass="form-control"></asp:TextBox>
                </div>
                <br>
                <div>
                    <asp:Button ID="btnSearch" runat="server" Height="40px" OnClick="btnSearch_Click" Text="Search" Width="208px" CssClass="btn btn-primary" />
                </div>
            </div>
            <br>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:DropDownList ID="drpBathroom" runat="server" Width="250px" OnSelectedIndexChanged="drpBathroom_SelectedIndexChanged">
                            <asp:ListItem >---Select Bathroom---</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:DropDownList ID="drpBedrooms" runat="server" Width="250px">
                            <asp:ListItem >---Select BedRooms---</asp:ListItem>
                        </asp:DropDownList></td>
                    <td><asp:DropDownList ID="drpSellType" runat="server" Width="250px">
                            <asp:ListItem >---Select Sell/Rent---</asp:ListItem>
                        </asp:DropDownList></td>
                    <td><asp:DropDownList ID="drpPrice" runat="server" Width="250px">
                            <asp:ListItem >---Select Price---</asp:ListItem>
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
                <asp:Button ID="btnFind" runat="server" Text="Find" OnClick="btnFind_Click" Width="198px" CssClass="btn btn-primary" /></div><br/>
            <div align="center" style="margin-left:20PX;margin-right:20PX">

                <asp:GridView ID="dataHouse" runat="server" HorizontalAlign="Center" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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

            </div>
        </div>
        
    </form>
    <br>
    <%--<footer>
        <a href="Agents.aspx" style="margin-left:20px" class="link-primary">Find Agent</a>
    </footer>--%>
</body>
</html>
