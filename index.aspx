<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Orphanage</title>
    <link href="orphanagestyle.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 275px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="background-image: url('Projimage/header.png'); width: 1340px; height: 157px;">
            <tr>
                <td style="text-align: center">
                    <asp:Image ID="Image1" runat="server" Height="151px" ImageUrl="~/Projimage/orphanage.png" Width="409px" />
                </td>
            </tr>
        </table>
        <table style="width:1340px;height:20px; background-image: url('Projimage/subheader.png');">
            <tr>
                <td>

                </td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <center>
            <table style="height: 353px; width: 1007px">
                <tr>
                    <td class="auto-style1">
                        <asp:Image ID="Image2" runat="server" Height="172px" ImageUrl="~/Projimage/login.jpg" Width="173px"></asp:Image>
                    </td>
                    <td>
                        <table style="height: 173px; width: 308px">
                            <tr>
                                <td style="color: #FF0000; text-decoration: underline">
                                    LOGIN:
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtpassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                             <tr>
                                <td>
                                    <asp:Button ID="Button1" runat="server" Text="Login" Font-Bold="True" Font-Names="Cambria" Height="30px" Width="58px" OnClick="Button1_Click" ValidationGroup="orp"></asp:Button>
                                </td>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" Height="31px" Width="66px"></asp:Button>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td>
                        <asp:Image ID="Image3" runat="server" ImageUrl="~/Projimage/reunify.png"></asp:Image>
                    </td>
                </tr>
            </table>
        </center>
    </div>
    </form>
</body>
</html>
