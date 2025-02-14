<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="changepassword.aspx.cs" Inherits="changepassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 31px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="height: 155px; width: 507px">
        <tr>
            <td style="color: #CC0000; text-decoration: underline">
                 CHANGE PASSWORD:
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtold" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtold" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtnew" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtnew" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
            </td>
        </tr>
           <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Retype Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtretype" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtretype" ErrorMessage="*" Font-Bold="True" Font-Names="Cambria" ForeColor="Red" ValidationGroup="orp"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtnew" ControlToValidate="txtretype" ErrorMessage="Password Mismatch" Font-Size="Small" ForeColor="Red" ValidationGroup="orp"></asp:CompareValidator>
            </td>
        </tr>
           <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="Change Password" Font-Bold="True" Font-Names="Cambria" OnClick="Button1_Click" ValidationGroup="orp" />
            </td>
            <td class="auto-style3">
                <asp:Button ID="Button2" runat="server" Text="Cancel" Font-Bold="True" Font-Names="Cambria" />
            </td>
        </tr>
    </table>
</asp:Content>

