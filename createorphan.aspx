<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="createorphan.aspx.cs" Inherits="createorphan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 363px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 402px; width: 1088px">
        <tr>
            <td style="vertical-align: top" class="auto-style3">
                <table style="height: 406px; width: 385px">
                    <tr>
                        <td style="color: #CC0000; text-decoration: underline">
                            CREATE ORPHAN:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Orphan Id"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtorphanid" runat="server" AutoPostBack="True" OnTextChanged="txtorphanid_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtorphanid" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblerr" runat="server" ForeColor="Red" Text="ID Exists!!!" Visible="False"></asp:Label>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Orphan Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtorphanname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtorphanname" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Orphan Age"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtage" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gender" Checked="true" />
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender" />
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Dob"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdob" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtdob" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Guardian Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtguname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtguname" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Guardian Occupation"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtguoccu" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtguoccu" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Guardian Age"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtguage" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtguage" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Guardian Address"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtguaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtguaddress" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label10" runat="server" Text="Guardian Phone"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtguphone" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtguphone" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label11" runat="server" Text="Guardian Email"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtguemail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="txtguemail" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtguemail" ErrorMessage="Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="orp"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Label ID="Label12" runat="server" Text="Date of Joining"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdoj" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="txtdoj" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                     <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Create Orphan" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" ValidationGroup="orp" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
                        </td>
                    </tr>
                </table>
            </td>
            <td style="vertical-align: top">
                <asp:Image ID="Image1" runat="server" Height="373px" ImageUrl="~/Projimage/createorphan.jpg" Width="434px" />
            </td>
        </tr>
    </table>
</asp:Content>

