<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReplyMessage.aspx.cs" Inherits="webRamexVishvam.ReplyMessage" %>

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
    <form id="form1" runat="server" >
    <br>
        <div align="center">
            <table border="1" class="auto-style1">
                <tr>
                    <td class="auto-style5">
      
                        &nbsp;</td>
                    <td class="auto-style7">
                        &nbsp;</td>
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
