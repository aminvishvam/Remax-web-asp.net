<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegisterHouse.aspx.cs" Inherits="webRamexVishvam.RegisterHouse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style4 {
            margin-left: 10px;
            margin-right: 10px
        }
        .auto-style5 {
            width: 627px;
        }
        .linkrd {
            margin-right:10px
        }
    </style>
    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

</head>
<body>
    <form id="form1" runat="server">


    <header>
        <h1 align="center" class="display-1">Remax Agent Dashbord</h1>
        <div align="right">
            <asp:Button ID="Button1" runat="server" CssClass="btn btn-secondary" Text="LogOut" OnClick="Button1_Click" />
        </div>
    </header>


        <table class="w-100">
            <tr>
                <td><h1 class="display-6" style="margin-left:10px">Register House</h1></td>
                <td><h1 class="display-6" style="margin-left:10px">Read Your Messages Here</h1></td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <div align="center" style="margin-left:20px">

                        <asp:TextBox id="txtType" type="text" class="auto-style1" placeholder="Type" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:TextBox id="txtLocation" type="text" class="auto-style1" placeholder="Location" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:TextBox id="txtPrice" type="text" class="auto-style1" placeholder="Price" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:TextBox id="txtBedRoom" type="text" class="auto-style1" placeholder="BedRoom" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:TextBox id="txtBathroom" type="text" class="auto-style1" placeholder="Bathroom" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:TextBox id="txtPostalCode" type="text" class="auto-style1" placeholder="Postalcode" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:TextBox id="txtCity" type="text" class="auto-style1" placeholder="City" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:TextBox id="txtBuySellType" type="text" class="auto-style1" placeholder="HouseType" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:TextBox id="txtClinetInfo" class="auto-style1" placeholder="Client Information" type="text" runat="server" CssClass="form-control"></asp:TextBox>
                        <br />
                        <asp:Button ID="btnRegister" runat="server" Text="Register House " OnClick="btnRegister_Click" CssClass="btn btn-primary" />

                    </div>
                </td>
                <td style="vertical-align:top">
                    <div class="auto-style4" align="center">
                        <asp:Table  ID="tabMessage" runat="server" Width="909px" GridLines="Both" CssClass="table">
                            <asp:TableRow runat="server" BackColor="#000000" Font-Bold="True" ForeColor="white">
                                <asp:TableCell runat="server">From</asp:TableCell>
                                <asp:TableCell runat="server">Titles</asp:TableCell>
                                <asp:TableCell runat="server">Actions</asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                    </div>
                </td>
            </tr>
        </table>
        <br>
        <div align="center" style="margin-left:20px;margin-right:20px">
            <asp:GridView ID="dataHouse" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
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
    </form>
</body>
</html>
