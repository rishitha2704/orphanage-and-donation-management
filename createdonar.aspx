<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="createdonar.aspx.cs" Inherits="createdonar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 378px; width: 824px">
        <tr>
            <td style="vertical-align:top;">
                <asp:Image ID="Image1" runat="server" Height="333px" ImageUrl="~/Projimage/donar.png" Width="353px" />
            </td>
            <td style="vertical-align:top;">
                <table style="height: 340px; width: 407px">
                    <tr>
                        <td style="color: #CC0000; text-decoration: underline">
                            CREATE DONOR:
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="Donar Id"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtid" runat="server" AutoPostBack="True" OnTextChanged="txtid_TextChanged"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtid" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                            <asp:Label ID="lblerr" runat="server" ForeColor="Red" Text="ID Exists!!!" Visible="False"></asp:Label>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="Donar Name"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtname" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
                        </td>
                        <td>
                            <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="gender" Checked="true" />
                            <asp:RadioButton ID="RadioButton2" runat="server" Text="Female" GroupName="gender" />
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtaddress" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="Phone No"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtphone" runat="server" MaxLength="10"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtphone" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtemail" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="orp"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Occupation"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtoccupation" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtoccupation" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Annual Income"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtannualincome" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtannualincome" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            <asp:Button ID="Button1" runat="server" Text="Create" Font-Bold="True" Font-Names="Cambria" Height="27px" Width="78px" OnClick="Button1_Click" ValidationGroup="orp" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" Height="28px" Width="72px" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

