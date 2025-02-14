<%@ Page Title="" Language="C#" MasterPageFile="~/Adminmaster.master" AutoEventWireup="true" CodeFile="Reqanalysis.aspx.cs" Inherits="Reqanalysis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table>
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="309px" ImageUrl="~/Projimage/requirement.jpg" Width="407px" />
            </td>
            <td>

          
    <table style="height: 173px; width: 397px">
        <tr>
            <td style="color: #CC0000; text-decoration: underline">
                REQUIREMENT ANALYSIS:
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Inventory"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="dropinventory" runat="server" DataSourceID="SqlDataSource1" DataTextField="invname" DataValueField="invname" Font-Bold="True" Font-Names="Cambria" 
                    AutoPostBack="True" OnSelectedIndexChanged="dropinventory_SelectedIndexChanged"></asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:connect %>" SelectCommand="SELECT [invname] FROM [inventorymas]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Available Number"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblavail" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
         <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Wanted Number"></asp:Label>
            </td>
            <td>
                <asp:Label ID="lblwanted" runat="server" Text="-"></asp:Label>
            </td>
        </tr>
    </table>
            </td>
        </tr>
    </table>
</asp:Content>

